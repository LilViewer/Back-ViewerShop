<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class imagePoster extends Model
{
    use HasFactory;

    protected $table='imageposter';

    protected $fillable=[
        'id',
        'urlImage',
    ];

    function ImagePosterTovar(){
        return $this->belongsTo(Tovar::class,'id');
    }
    public $timestamps = false;
}
