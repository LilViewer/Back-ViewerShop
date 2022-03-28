<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    use HasFactory;
    public function GenreTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_genre','id_genre','id_tovar','id')->withPivot('id_tovar', 'id_genre');;
    }
}
