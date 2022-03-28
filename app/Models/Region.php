<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    use HasFactory;
    public function RegionTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_region','id_region','id_tovar','id')->withPivot('id_tovar', 'id_region');;
    }
}
