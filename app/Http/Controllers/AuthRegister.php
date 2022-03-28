<?php

namespace App\Http\Controllers;


use App\Models\Buy;
use App\Models\Key;
use App\Models\Report;
use App\Models\Tovar;
use App\Models\Users;
use App\Models\Avatar;
use CreateTovarUserTable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


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
        array_push($test,[
            $user,
            $BuyTovar,
            $BasketTovars,
            $key,
            $user->UserAvatar
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
}
