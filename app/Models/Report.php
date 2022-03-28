<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;
    public function ReportUsers(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Users::class,'user_report','id_report','id_user','id')
            ->withPivot('id_report', 'id_user')
            ->withTimestamps();
    }
    public function ReportTovar(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Tovar::class,'tovar_report','id_userReport','id_tovar','id')
            ->withPivot('id_userReport', 'id_tovar')
            ->withTimestamps();
    }
}
