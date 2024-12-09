<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function login(Request $request) {
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'message'=>'Ivalid login details'
            ], 401);
        }
        $request->session()->regenerate();
    }
    public function logout(Request $request) {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
    }
    public function user(Request $request) {
        return response()->json([
            'data'=>$request->user()
        ]);
    }
    public function akses() {
        $data = DB::table('master_akses')->get();
        return response()->json($data);
    }
}
