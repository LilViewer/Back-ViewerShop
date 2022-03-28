<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Key extends Model
{
    use HasFactory;
    public function KeyTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_key','id_key','id_tovar','id')->withPivot('id_tovar', 'id_key');;
    }
}
