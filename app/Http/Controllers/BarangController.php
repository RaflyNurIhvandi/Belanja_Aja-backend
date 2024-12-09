<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BarangController extends Controller
{
    public function delete($id) {
        try {
            $data = DB::table('barangs')->where('id', $id)->delete();
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
            $data = DB::table('barangs')->where('id', $id)->update([
                "nama_barang"=>$request->namaBarang,
                "harga_beli"=>$request->hargaBeli,
                "harga_jual"=>$request->hargaJual,
                "kode_pemasok"=>$request->pemSel,
                "jumlah_barang"=>$request->jumlahBarang,
                "tanggal_masuk"=>$request->tanggalMasuk,
                "deskripsi"=>$request->deskripsi,
                'user'=>$request->user
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
    public function load(){
        try {
            $data = DB::select('SELECT barangs.id,
                                barangs.nama_barang,
                                barangs.kode_barang,
                                barangs.harga_beli,
                                barangs.harga_jual,
                                pemasoks.kode_pemasok,
                                barangs.jumlah_barang,
                                barangs.tanggal_masuk,
                                barangs.deskripsi
                                FROM barangs INNER JOIN pemasoks ON
                                barangs.kode_pemasok = pemasoks.kode_pemasok');
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
        $kode = "BRG".date('YmdHis');
        try {
            $data = DB::table('barangs')->insert([
                'kode_barang'=>$kode,
                'nama_barang'=>$request->namaBarang,
                'harga_beli'=>$request->hargaBeli,
                'harga_jual'=>$request->hargaJual,
                'kode_pemasok'=>$request->pemSel,
                'jumlah_barang'=>$request->jumlahBarang,
                'tanggal_masuk'=>$request->tanggalMasuk,
                'deskripsi'=>$request->deskripsi,
                'user'=>$request->user
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
    public function loadpemasoks(){
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
    public function loadkodes(){
        try {
            $data = DB::table('pemasoks')->get('kode_pemasok');
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
