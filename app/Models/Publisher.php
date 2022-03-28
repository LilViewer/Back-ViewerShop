<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publisher extends Model
{
    use HasFactory;
    public function PublisherTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_publisher','id_publisher','id_tovar','id')->withPivot('id_tovar', 'id_publisher');;;
    }
}
