<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PelangganController extends Controller
{
    public function delete($id) {
        try {
            $data = DB::table('pelanggans')->where('id', $id)->delete();
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
            $data = DB::table('pelanggans')->where('id', $id)->update([
                "nama_pelanggan"=>$request->namaPelanggan,
                "no_telp_pelanggan"=>$request->noTelp,
                "kota_pelanggan"=>$request->kotaPelanggan,
                "email_pelanggan"=>$request->email,
                "alamat_pelanggan"=>$request->alamat,
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
        $kode = "PL".date('YmdHis');
        try {
            $data = DB::table('pelanggans')->insert([
                "kode_pelanggan"=>$kode,
                "nama_pelanggan"=>$request->namaPelanggan,
                "no_telp_pelanggan"=>$request->noTelp,
                "kota_pelanggan"=>$request->kotaPelanggan,
                "email_pelanggan"=>$request->email,
                "alamat_pelanggan"=>$request->alamat,
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
            $data = DB::table('pelanggans')->get();
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
