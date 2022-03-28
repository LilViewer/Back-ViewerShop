<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterUserRequest;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function register(RegisterUserRequest $request)
    {
//        return response()->json([
//            'data'=>'ok'
//        ]);
//        $user = User::create([
//            'name'      => $request->name,
//            'email'     => $request->email,
//            'password'  => bcrypt($request->password)
//        ]);
//        return response()->json([
//            'data'=>'User Created'
//        ],201);
    }
}
