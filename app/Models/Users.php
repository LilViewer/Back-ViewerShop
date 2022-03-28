<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    use HasFactory;
    public function UserTovars(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_user','id_user','id_tovar','id')->withPivot('id_tovar', 'id_user');;
    }
    public function UserCupon(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Cupon::class,'user_cupon','id_cupon','id_user','id')->withPivot('id_cupon', 'id_user');
    }

    public function UserBuy(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'user_buy','id_user','id_tovar','id')
            ->withPivot('id_tovar', 'id_user')
            ->withTimestamps();
    }
    public function UserAvatar(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Avatar::class,'user_avatar','id_user','id_avatar','id')->withPivot('id_avatar', 'id_user');
    }
    public function UserReport(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Report::class,'user_report','id_user','id_report','id')
            ->withPivot('id_report', 'id_user')
            ->withTimestamps();
    }
}
