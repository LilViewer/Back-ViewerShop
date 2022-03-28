<?php

use App\Models\Activation;
use App\Models\Devoloper;
use App\Models\Publisher;
use App\Models\Region;
use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

use App\Models\Tovar;
use App\Models\Genre;
use App\Http\Controllers\AuthLogin;
use App\Http\Controllers\AuthRegister;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
//Route::get('/register', 'RegisterController@register');
//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('login',[AuthRegister::class,'login']);
Route::post('register',[AuthRegister::class,'register']);

Route::post('/basket/add',[AuthRegister::class,'addBasket']);

Route::post('/basket/del',[AuthRegister::class,'DelBasket']);

Route::post('/basket',[AuthRegister::class,'getAllBasket']);

Route::post('/buy',[AuthRegister::class,'Buy']);

Route::post('/users',[AuthRegister::class,'Users']);

Route::post('/buy/del',[AuthRegister::class,'BuyDel']);


Route::post('/avatar',[AuthRegister::class,'GetAvatar']);

Route::post('/svap/avatar',[AuthRegister::class,'SvapAvatar']);

Route::post('/appData',[AuthRegister::class,'appData']);

Route::post('/report/tovar',[AuthRegister::class,'RetortTovar']);

Route::post('/report/add',[AuthRegister::class,'RetortAdd']);

Route::post('/buydata',[AuthRegister::class,'BuyData']);

Route::get('/basket/num/{token}', function($token){
    $user = Users::where('api_token',$token)->first();

    $numBasket = 0;
    foreach ($user->UserTovars as $tovars){
        $numBasket++;
    }
    return $numBasket;
});

Route::get('/all/tovar/{num}', function($num){
    $tovar = [];
    array_push($tovar,Tovar::find($num));
    array_push($tovar,Tovar::find($num)->TovarGenres);
    array_push($tovar,Tovar::find($num)->TovarDevolopers);
    array_push($tovar,Tovar::find($num)->TovarPublishers);
    array_push($tovar,Tovar::find($num)->TovarRegion);
    array_push($tovar,Tovar::find($num)->TovarActivation);
    return $tovar;
});
Route::get('/all/tovars', function(){
    $tovar = [];
    $test = Tovar::all()->pluck('id');
    foreach ($test as $elem){
        array_push($tovar,[
            Tovar::find($elem),
            Tovar::find($elem)->TovarGenres,
            Tovar::find($elem)->TovarDevolopers,
            Tovar::find($elem)->TovarPublishers,
            Tovar::find($elem)->TovarRegion,
            Tovar::find($elem)->TovarActivation,
            Tovar::find($elem)->TovarKey
            ]);
    }
    return $tovar;
});
Route::get('/tovars', function(){
	$tovars = Tovar::all();
	return $tovars;
});
Route::get('/cupons', function(){
    $tovars = \App\Models\Cupon::all();
    return $tovars;
});
Route::get('/region', function(){
    $region = Region::all();
    return $region;
});
Route::get('/activation', function(){
    $activation = Activation::all();
    return $activation;
});
Route::get('/tovar/{id}', function($id){
    $tovar = Tovar::find($id);
    return $tovar;
});
    Route::get('/genre', function(){
    $genres = Genre::all();
    return $genres;
});
Route::get('/publishers', function(){
    $publishers = Publisher::all();

    return $publishers;
});
Route::get('/developers', function(){
    $developers = Devoloper::all();

    return $developers;
});

Route::get('/genre/{id}', function($id){
    $genreTovars = Genre::find($id)->GenreTovars;
    return $genreTovars;
});
Route::get('/publisher/{id}', function($id){
    $publisherTovars = Publisher::find($id)->PublisherTovars;
    return $publisherTovars;
});
Route::get('/developer/{id}', function($id){
    $developerTovars = Devoloper::find($id)->DevoloperTovars;
    return $developerTovars;
});
Route::get('/genre/take/{num}', function($num){
    $genres = Genre::all()->take($num);
    return $genres;
});
Route::get('/developer/take/{num}', function($num){
    $devoloper = Developer::all()->take($num);
    return $devoloper;
});
Route::get('/publisher/take/{num}', function($num){
    $publisher = Publisher::all()->take($num);
    return $publisher;
});
