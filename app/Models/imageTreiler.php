<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class imageTreiler extends Model
{
    use HasFactory;

    protected $table='treiler';

    protected $fillable=[
        'id',
        'urlTreiler',
    ];

    function ImageTreilerTovar(){
        return $this->belongsTo(Tovar::class,'id');
    }
    public $timestamps = false;
}
