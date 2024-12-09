<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KomisiController extends Controller
{
    public function insert(Request $request) {
        try {
            $data = DB::table('komisis')->insert([
                "nama_karyawan"=>$request->namaKaryawan,
                "komisi"=>$request->komisi,
            ]);
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
    public function load_komisi() {
        try {
            $data = DB::table('komisis')->get();
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
    public function load_karyawan() {
        try {
            $data = DB::table('users')
                    ->join('master_akses', 'users.id', '=', 'master_akses.id_user')
                    ->where('master_akses.akses', 'karyawan')
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
}
