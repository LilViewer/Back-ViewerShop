<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tovar extends Model
{
    use HasFactory;
//    public $table = 'tovars';
//    public $fillable  = ['name', 'price', 'discount', 'description', 'data', 'min_OS',
//        'min_Processor', 'min_RAM', 'min_Video_Card', 'rec_OS', 'rec_Processor', 'rec_RAM', 'rec_Video_Card',
//        'Size', 'Transitions', 'Buy', 'Rating'];
//
//    /**
//     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
//     */



    function TovarImagePoster(){
        return $this->hasMany(imagePoster::class,'id');
    }
    function TovarImageScrean(){
        return $this->hasMany(imageScrean::class,'idTovar');
    }
    function TovarImageTreiler(){
        return $this->hasMany(imageTreiler::class,'id');
    }

    public function TovarGenres(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
//        return $this->belongsToMany('App/Models/Genre');
        return $this->belongsToMany(Genre::class,'tovar_genre','id_tovar','id_genre','id')->withPivot('id_tovar', 'id_genre');
    }
    public function TovarDevolopers(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
//        return $this->belongsToMany('App/Models/Genre');
        return $this->belongsToMany(Devoloper::class,'tovar_devoloper','id_tovar','id_devoloper','id')->withPivot('id_tovar', 'id_devoloper');
    }
    public function TovarPublishers(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
//        return $this->belongsToMany('App/Models/Genre');
        return $this->belongsToMany(Publisher::class,'tovar_publisher','id_tovar','id_publisher','id')->withPivot('id_tovar', 'id_publisher');
    }
    public function TovarRegion(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Region::class,'tovar_region','id_tovar','id_region','id')->withPivot('id_tovar', 'id_region');
    }
    public function TovarActivation(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Activation::class,'tovar_activation','id_tovar','id_activation','id')->withPivot('id_tovar', 'id_activation');
    }
    public function TovarKey(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Key::class,'tovar_key','id_tovar','id_key','id')->withPivot('id_tovar', 'id_key');
    }
    public function TovarUsers(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Users::class,'tovar_user','id_tovar','id_user','id')->withPivot('id_tovar', 'id_user');
    }
    public function UserBuy(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Users::class,'user_buy','id_tovar','id_user','id')->withPivot('id_tovar', 'id_user');
    }
    public function TestBuyUserTovar(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Buy::class,'user_buy','id_tovar','id_user','id')->withPivot('id_tovar', 'id_user');
    }
    public function TovarReport(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Report::class,'tovar_report','id_tovar','id_userReport','id')
            ->withPivot('id_tovar', 'id_userReport')
            ->withTimestamps();
    }
}
