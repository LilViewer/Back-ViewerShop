<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class imageScrean extends Model
{
    use HasFactory;

    protected $table='imagescrean';

    protected $fillable=[
        'id',
        'idTovar',
        'urlImage',
    ];

    function ImageScreanTovar(){
        return $this->belongsTo(Tovar::class,'idTovar');
    }
    public $timestamps = false;
}
