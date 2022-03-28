<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buy extends Model
{
    use HasFactory;
    public function TestBuyUser(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Users::class,'user_buy','id_user','id_tovar','id')
            ->withPivot('id_tovar', 'id_user')
            ->withTimestamps();
    }
    public function UserBuy(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Users::class,'user_buy','id_user','id_tovar','id')
            ->withPivot('id_tovar', 'id_user')
            ->withTimestamps();
    }
}
