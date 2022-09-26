<?php

namespace App\Http\Controllers;


use App\Models\Activation;
use App\Models\Buy;
use App\Models\Devoloper;
use App\Models\Genre;
use App\Models\imagePoster;
use App\Models\imageScrean;
use App\Models\imageTreiler;
use App\Models\Key;
use App\Models\Publisher;
use App\Models\Region;
use App\Models\Report;
use App\Models\Tovar;
use App\Models\Users;
use App\Models\Avatar;
use CreateTovarUserTable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Throwable;


class AuthRegister extends Controller
{
    function register(Request $request){
        $token = Str::random(80);
        $user =  new Users;
        $user->name=$request->input('name');
        $user->email=$request->input('email');
        $user->password=HASH::make($request->input('password'));
        $user->api_token=$token;
        $user->save();
        $idUser = Users::OrderBy('id','desc')->first();
        DB::table('user_avatar')->insert(['id_user'=>$idUser->id,'id_avatar'=>1]);
       return ['token'=>$token];
    }
    function login(Request $request){
        $user = Users::where('email',$request->email)->first();
        if(!$user || !HASH::check($request->password,$user->password)){
            return ['error'=>'email or password errro'];
        }
        else{
            return ['token'=>$user->api_token];
        }
    }

    function addBasket(Request $request){
        $user = Users::where('api_token',$request->token)->first();
        $tovar = Tovar::where('id',$request->id)->first();

        $testVerit = 0;
        foreach ($user->UserTovars as $tovars){
            if($tovars->pivot->id_tovar==$tovar->id){
                $testVerit=1;
            }
        }
        if($user && ($testVerit==0)){
            //Получение из pivot table
//            $tovartest=[];
//            foreach ($user->UserTovars as $tovars){
//                array_push($tovartest,$tovars->pivot);
//            }
            //
            $Basket =  new Users;
            $Basket->UserTovars()->attach($tovar->id,['id_user'=>$user->id]);
            $Basket->save();
            return ['addBusket'=>'succesfuly'];
        }
        else{
            return ['addBusket'=>'error'];
        }
    }
    function numBasket(Request $request){
        $user = Users::where('api_token',$request->token)->first();

        $numBasket = 0;
        foreach ($user->UserTovars as $tovars){
            $numBasket++;
        }
        return ['num'=>$numBasket];
    }

    function getAllBasket(Request $request){
        $user = Users::where('api_token',$request->token)->first();


        $arrayTovars = [];
        foreach ($user->UserTovars as $tovars){
            $tovar = Tovar::where('id',$tovars->id)->first();
            array_push($arrayTovars,[$tovars,
                $tovar->TovarGenres,
                $tovar->TovarDevolopers,
                $tovar->TovarPublishers,
                $tovar->TovarRegion,
                $tovar->TovarActivation,
                $tovar->TovarKey,
                $tovar->TovarImagePoster,
                $tovar->TovarImageTreiler,
                $tovar->TovarImageScrean
                ]);
        }
//        return [1,2,3,4,5,6];
        return $arrayTovars;
    }

    function DelBasket(Request $request){
        $user = Users::where('api_token',$request->token)->first();

        $tovar = Tovar::where('id',$request->tovar)->first();

        $user->UserTovars()->detach($tovar);

    }

    function Buy(Request $request){
        $user = Users::where('api_token',$request->token)->first();
            foreach ($request->tovars as $test ){
                $tovar = Tovar::where('id',$test)->first();
                $user->UserTovars()->detach($tovar);

                $Buy =  new Buy;
                $Buy->UserBuy()->attach($tovar->id,['id_user'=>$user->id,'key'=>$tovar->TovarKey[0]->name]);

                $tovar->TovarKey()->detach($tovar->TovarKey[0]);
                Key::where('id',$tovar->TovarKey[0]->id)->delete();

            }
        $Buy->save();

    }

    function Users(Request $request){
        $user = Users::where('api_token',$request->token)->first();
        $test = [];
        $BuyTovar=[];
        $BasketTovars=[];
        foreach ($user->UserTovars as $tovar){
            array_push($BuyTovar,[
                $tovar,
                $tovar->TovarGenres,
                $tovar->TovarDevolopers,
                $tovar->TovarPublishers,
                $tovar->TovarRegion,
                $tovar->TovarActivation,
                $tovar->TovarKey,
                $tovar->TovarImagePoster,
                $tovar->TovarImageTreiler,
                $tovar->TovarImageScrean,
            ]);
        }
        foreach ($user->UserBuy as $tovar){
            array_push($BasketTovars,[
                $tovar,
                $tovar->TovarGenres,
                $tovar->TovarDevolopers,
                $tovar->TovarPublishers,
                $tovar->TovarRegion,
                $tovar->TovarActivation,
                $tovar->TovarKey,
                $tovar->TovarImagePoster,
                $tovar->TovarImageTreiler,
                $tovar->TovarImageScrean,
//                $key

//                $tovar->UserBuy,
            ]);
        }
        $key = DB::table('user_buy')
//                ->where('id_tovar',$tovar->id)
            ->where('id_user',$user->id)
            ->select('key','created_at')
            ->orderBy('id_tovar','asc')
            ->get();
        $ReportLenght = $user->UserReport()->where('id_user',$user->id)->get();
        array_push($test,[
            $user,
            $BuyTovar,
            $BasketTovars,
            $key,
            $user->UserAvatar,
            $ReportLenght,
        ]);
//        return [$user->UserAvatar];
        return $test;
    }

    function BuyDel(Request $request){
        $user = Users::where('api_token',$request->token)->first();

        $tovar = Tovar::where('id',$request->tovar)->first();

        $user->UserBuy()->detach($tovar);
//        return [$user->UserBuy];


    }

    function GetAvatar(Request $request){
        $avatars = DB::table('avatars')
            ->select('url','id')
            ->get();

        return [$avatars];
    }

    function SvapAvatar(Request $request){
        $user = Users::where('api_token',$request->token)->first();
        $user->UserAvatar()->detach();
        $user->UserAvatar()->attach($user->id,['id_avatar'=>$request->avatar]);
//        $user->UserAvatar()->updateExistingPivot($user,['id_avatar'=>$request->avatar,'id_user'=>$user->id]);
        return ['avatar'=>$request->avatar,'token'=>$request->token,'user'=>$user];
    }

    function appData(Request $request){
//        $user = DB::table('users')->where('api_token',$request->token)->first();
        $user = Users::where('api_token',$request->token)->first();
//        return $user;
        if($request->name){
            Users::where('api_token',$request->token)->update(['name'=>$request->name]);
        }
        if($request->email){
            Users::where('api_token',$request->token)->update(['email'=>$request->email]);
        }
        if(!HASH::check($request->passActual,$user->password)){
            return ['error'=>'password errro'];
        }
        else{
            Users::where('api_token',$request->token)->update(['password'=>HASH::make($request->passNow)]);
        }

        return ['name'=>$request->name,'email'=>$request->email,'passActual'=>$request->passActual,'passNow'=>$request->passNow];
    }

    function RetortTovar(Request $request){
        $user = Users::where('api_token',$request->token)->first();
        $reports = DB::table('tovar_report')->where('id_tovar',$request->idTovar)->get();
        $testArray=[];
        foreach ($reports as $report){
            $test = DB::table('user_report')->where('id',$report->id_userReport)->first();
            $ReportUser = Users::where('id',$test->id_user)->first();
            array_push($testArray,
                [
                    DB::table('reports')->where('id',$test->id_report)->first(),
                    $ReportUser,
                    $ReportUser->UserAvatar
                ]
            );
        }

        return $testArray;
    }

    function RetortAdd(Request $request){
        $user = Users::where('api_token',$request->token)->first();
        $report = new Report;
        $report->report=$request->report;
        $report->like=0;
        $report->diz_like=0;
        $report->rating=$request->rating;
        $report->save();
        $report->ReportUsers()->attach($report->id,['id_user'=>$user->id]);
        $tovar=Tovar::where('id',$request->idTovar)->first();
        $userReport = DB::table('user_report')
            ->select('id')
            ->orderBy('updated_at','desc')
            ->first();
        DB::table('tovar_report')->insert(array('id_userReport'=>$userReport->id,'id_tovar'=>$request->idTovar));
    }
    function BuyData(Request $request){
        $data = DB::table('user_buy')
            ->where('id_tovar',$request->id)
            ->select('created_at')
            ->orderBy('created_at','desc')
            ->first();
        if ($data){
            return $data;
        }
        else{
            return 'error';
        }
    }

    function updateTovar(Request $request){

        Tovar::where('id',$request->id)->update([
            'price'=>$request->price,
            'discount'=>$request->discount,
            'name'=>$request->name,
            'description'=>$request->description,
            'data'=>$request->data,
            'min_OS'=>$request->minOs,
            'min_Processor'=>$request->minProcessor,
            'min_RAM'=>$request->minRAM,
            'min_Video_Card'=>$request->minVideoCard,
            'rec_OS'=>$request->recOs,
            'rec_Processor'=>$request->recProcessor,
            'rec_RAM'=>$request->recRAM,
            'rec_Video_Card'=>$request->recVideoCard,
            'size'=>$request->size
                ]);

        imagePoster::where('id',$request->id)->update(['urlImage'=>$request->poster]);
        imageTreiler::where('id',$request->id)->update(['urlTreiler'=>$request->treiler]);

        $test = imageScrean::where('idTovar',$request->id)->get();
        foreach ($test as $i =>$item){
            $ss = $request->screan;
            $item->update(['urlImage'=>$ss[$i]]);
        }

        $keys = $request->keys;
        DB::table('tovar_key')->where('id_tovar',$request->id)->delete();
        foreach ($keys as $key){
            Key::insert(['name'=>$key]);
            $idKey = Key::OrderBy('id','desc')->select('id')->first();
            DB::table('tovar_key')->insert(['id_tovar'=>$request->id,'id_key'=>$idKey->id]);
        }


        $TovarGenres = Tovar::where('id',$request->id)->first();
        $arrayGenre = [];
        foreach ($request->genre as $genre){
            array_push($arrayGenre,
                DB::table('genres')
                    ->where('name',$genre)
                    ->select('id')
                    ->first()->id
            );
        }
        $TovarGenres->TovarGenres()->sync($arrayGenre);

        $TovarPublisher = Tovar::where('id',$request->id)->first();
        $arrayrPublisher = [];
        foreach ($request->publisher as $publisher){
            array_push($arrayrPublisher,
                DB::table('publishers')
                    ->where('name',$publisher)
                    ->select('id')
                    ->first()->id
            );
        }
        $TovarPublisher->TovarPublishers()->sync($arrayrPublisher);


        $TovarDeveloper = Tovar::where('id',$request->id)->first();
        $arrayrDeveloper = [];
        foreach ($request->developer as $developer){
            array_push($arrayrDeveloper,
                DB::table('devolopers')
                    ->where('name',$developer)
                    ->select('id')
                    ->first()->id
            );
        }
        $TovarDeveloper->TovarDevolopers()->sync($arrayrDeveloper);

        $TovarActivation = Tovar::where('id',$request->id)->first();
        $arrayrActivation = [];
        foreach ($request->activation as $activation){
            array_push($arrayrActivation,
                DB::table('activations')
                    ->where('name',$activation)
                    ->select('id')
                    ->first()->id
            );
        }
        $TovarActivation->TovarActivation()->sync($arrayrActivation);

        $TovarRegion = Tovar::where('id',$request->id)->first();
        $arrayrRegion = [];
        foreach ($request->region as $region){
            array_push($arrayrRegion,
                DB::table('regions')
                    ->where('name',$region)
                    ->select('id')
                    ->first()->id
            );
        }
        $TovarRegion->TovarRegion()->sync($arrayrRegion);



        return [
            $request->id,
            $request->price,
            $request->discount,
            $request->name,
            $request->description,
            $request->genre,
            $request->data,
            $request->publisher,
            $request->developer,
            $request->activation,
            $request->region,
            $request->minOs,
            $request->minProcessor,
            $request->minRAM,
            $request->minVideoCard,
            $request->recOs,
            $request->recProcessor,
            $request->recRAM,
            $request->recVideoCard,
            $request->size,
            ];
    }

    function deletTovar(Request $request){
        Tovar::where('id',$request->id)->first()->delete();
    }

    function deletGenre(Request $request){
        Genre::where('id',$request->id)->first()->delete();
    }
    function updateGenre(Request $request){
        Genre::where('id',$request->id)->update(['name'=>$request->name]);
    }
    function createGenre(Request $request){
        Genre::insert(['name'=>$request->name]);
    }

    function deletPublisher(Request $request){
        Publisher::where('id',$request->id)->first()->delete();
    }
    function updatePublisher(Request $request){
        Publisher::where('id',$request->id)->update(['name'=>$request->name]);
    }
    function createPublisher(Request $request){
        Publisher::insert(['name'=>$request->name]);
    }
    
    function deletDeveloper(Request $request){
        Devoloper::where('id',$request->id)->first()->delete();
    }
    function updateDeveloper(Request $request){
        Devoloper::where('id',$request->id)->update(['name'=>$request->name]);
    }
    function createDeveloper(Request $request){
        Devoloper::insert(['name'=>$request->name]);
    }

    function deletActivation(Request $request){
        Activation::where('id',$request->id)->first()->delete();
    }
    function updateActivation(Request $request){
        Activation::where('id',$request->id)->update(['name'=>$request->name]);
    }
    function createActivation(Request $request){
        Activation::insert(['name'=>$request->name]);
    }

    function deletRegion(Request $request){
        Region::where('id',$request->id)->first()->delete();
    }
    function updateRegion(Request $request){
        Region::where('id',$request->id)->update(['name'=>$request->name]);
    }
    function createRegion(Request $request){
        Region::insert(['name'=>$request->name]);
    }
    function createTovar(Request $request){
        Tovar::insert([
            'price'=>$request->price,
            'discount'=>$request->discount,
            'name'=>$request->name,
            'description'=>$request->description,
            'data'=>$request->data,
            'min_OS'=>$request->minOs,
            'min_Processor'=>$request->minProcessor,
            'min_RAM'=>$request->minRAM,
            'min_Video_Card'=>$request->minVideoCard,
            'rec_OS'=>$request->recOs,
            'rec_Processor'=>$request->recProcessor,
            'rec_RAM'=>$request->recRAM,
            'rec_Video_Card'=>$request->recVideoCard,
            'Size'=>$request->size
        ]);
        $tovar = Tovar::select('id')
            ->orderBy('id','desc')
            ->first()->id;
        foreach ($request->genre as $genre){
            DB::table('tovar_genre')->insert(['id_tovar'=>$tovar,'id_genre'=>DB::table('genres')
                ->where('name',$genre)
                ->select('id')
                ->first()->id]);
        }
        foreach ($request->developer as $developer){
            DB::table('tovar_devoloper')->insert(['id_tovar'=>$tovar,'id_devoloper'=>DB::table('devolopers')
                ->where('name',$developer)
                ->select('id')
                ->first()->id]);
        }
        foreach ($request->publisher as $publisher){
            DB::table('tovar_publisher')->insert(['id_tovar'=>$tovar,'id_publisher'=>DB::table('publishers')
                ->where('name',$publisher)
                ->select('id')
                ->first()->id]);
        }
        foreach ($request->region as $region){
            DB::table('tovar_region')->insert(['id_tovar'=>$tovar,'id_region'=>DB::table('regions')
                ->where('name',$region)
                ->select('id')
                ->first()->id]);
        }
        foreach ($request->activation as $activation){
            DB::table('tovar_activation')->insert(['id_tovar'=>$tovar,'id_activation'=>DB::table('activations')
                ->where('name',$activation)
                ->select('id')
                ->first()->id]);
        }
        DB::table('treiler')->insert(['id'=>$tovar,'urlTreiler'=>$request->treiler]);
        DB::table('imageposter')->insert(['id'=>$tovar,'urlImage'=>$request->poster]);
        foreach ($request->screan as $screan){
            DB::table('imagescrean')->insert(['idTovar'=>$tovar,'urlImage'=>$screan]);
        }
        foreach ($request->keys as $key){
            Key::insert(['name'=>$key]);
//            return $request->keys;
            $id_key = Key::select('id')
                ->orderBy('id','desc')
                ->first()->id;
            DB::table('tovar_key')->insert(['id_tovar'=>$tovar,'id_key'=>$id_key]);
        }
        return [
            $tovar,
            $request->price,
            $request->discount,
            $request->name,
            $request->description,
            $request->genre,
            $request->data,
            $request->publisher,
            $request->developer,
            $request->activation,
            $request->region,
            $request->minOs,
            $request->minProcessor,
            $request->minRAM,
            $request->minVideoCard,
            $request->recOs,
            $request->recProcessor,
            $request->recRAM,
            $request->recVideoCard,
            $request->size,
        ];
    }

    public function addImage(Request $request){
        $img = $request->image;
//        $img=$img;
        $newImage = new imagePoster();
            $newImage->imageBase64=$img?$img:1;
            $newImage->save();
//        imagePoster::insert(['imageBase64'=>$img?$img:1]);
//        try {
//            imagePoster::insert(['imageBase64'=>$request->image]);
////            $newImage = new imagePoster();
////            $newImage->imageBase64=$img?$img:1;
////            $newImage->save();
//        } catch (Throwable $e){
//            report($e);
//
//            return $e;
//        }

        return $img;
    }

//    public function allImage(){
//        $image = imagePoster::all();
//        return $image;
//
//
//    }
}

