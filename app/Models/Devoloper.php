<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Devoloper extends Model
{
    use HasFactory;
    public function DevoloperTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_devoloper','id_devoloper','id_tovar','id')->withPivot('id_tovar', 'id_devoloper');
    }
}
