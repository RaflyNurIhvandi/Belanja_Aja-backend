<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    public function delete($id){
        try {
            $data = DB::table('users')->where('id', $id)->delete();
            $data = DB::table('master_akses')->where('id_user', $id)->delete();
            $api = [
                "Status"=>"success",
                "data"=>$data
            ];
            return response()->json($api);
        } catch (\Exception $e) {
            $data = [
                "Status"=>"error",
                "data"=>$e
            ];
            return response()->json($data);
        }
    }
    public function load(){
        try {
            $data = DB::table('users')
                    ->join('master_akses', 'users.id', '=', 'master_akses.id_user')
                    ->get();
            $api = [
                "Status"=>"success",
                "data"=>$data
            ];
            return response()->json($api);
        } catch (\Exception $e) {
            $data = [
                "Status"=>"error",
                "data"=>$e
            ];
            return response()->json($data);
        }
    }
    public function insert(Request $request){
        try {
            $u = DB::table('users')
                    ->orderBy('id', 'DESC')
                    ->limit(1)
                    ->get();
            $data = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->pass),
            ]);
            foreach ($u as $v) {
                DB::table('master_akses')->insert([
                    'id_user'=>$v->id+1,
                    'akses'=>'karyawan'
                ]);
            }
            $api = [
                "Status"=>"success",
                "data"=>$data
            ];
            return response()->json($api);
        } catch (\Throwable $e) {
            $data = [
                "Status"=>"error",
                "data"=>$e
            ];
            return response()->json($data);
        }
    }
}
