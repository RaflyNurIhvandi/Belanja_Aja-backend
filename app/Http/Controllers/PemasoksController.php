<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PemasoksController extends Controller
{
    public function delete($id) {
        try {
            $data = DB::table('pemasoks')->where('id', $id)->delete();
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
    public function update(Request $request, $id) {
        try {
            $data = DB::table('pemasoks')->where('id', $id)->update([
                "nama_pemasok"=>$request->namaPemasok,
                "no_telp"=>$request->noTelp,
                "kota_pemasok"=>$request->kotaPemasok,
                "email"=>$request->email,
                "alamat"=>$request->alamat,
                "user"=>$request->user,
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
    public function insert(Request $request) {
        $kode = "PM".date('YmdHis');
        try {
            $data = DB::table('pemasoks')->insert([
                "kode_pemasok"=>$kode,
                "nama_pemasok"=>$request->namaPemasok,
                "no_telp"=>$request->noTelp,
                "kota_pemasok"=>$request->kotaPemasok,
                "email"=>$request->email,
                "alamat"=>$request->alamat,
                "user"=>$request->user,
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
    public function load() {
        try {
            $data = DB::table('pemasoks')->get();
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
