<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Api\User;
use Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $r)
    { 
        $user = User::where('email',$r->input('email'))->first();
        $permission = $user->permission;
        if($user)
        {
            if(hash::check($r->input('password'),$user->password)){
                $token = $user->createToken('auth_token')->plainTextToken;
                return response()->json([
                    'permission'=>$permission,
                    'message'=> 'Chào '.$user->customer_name,
                    'access_token' =>$token,
                    'type_token' =>'Bearer',
                ]);   
            }else{
                return response()->json(['message'=>'Sai mật khẩu'],401);
            }
        }else{
            return response()->json(['message'=>'Sai thông tin'],401);
        }
    }
    public function logout(Request $r)
    {
        $r->user()->tokens()->delete();
        return response()->json(['message' => 'Đăng xuất thành công!']);
    }
}
