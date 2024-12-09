<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FakturController extends Controller
{
    public function load() {
        try {
            $data = DB::table('penjualan_details')->get();
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
    public function save(Request $request) {
        try {
            $pnj = $request->penjualans;
            foreach ($pnj as $brg) {
                $simpanitem = [
                    [
                        'no_faktur'=>$brg['noFaktur'],
                        'kode_barang'=>$brg['kodeBarang'],
                        'nama_barang'=>$brg['namaBarang'],
                        'harga_jual'=>$brg['hargaJual'],
                        'jumlah'=>$brg['jumlah'],
                        'total_harga'=>$brg['total'],
                    ],
                ];
                DB::table('penjualans')
                    ->insert($simpanitem);
            }
            DB::table('penjualan_details')->insert([
                'kode_pelanggan'=>$request->penjualanDetails['kodePelanggan'],
                'nama_pelanggan'=>$request->penjualanDetails['namaPelanggan'],
                'alamat_pelanggan'=>$request->penjualanDetails['alamatPelanggan'],
                'kota_pelanggan'=>$request->penjualanDetails['kotaPelanggan'],
                'no_telp'=>$request->penjualanDetails['noTelp'],
                'no_faktur'=>$request->penjualanDetails['noFaktur'],
                'tanggal_jual'=>$request->penjualanDetails['tanggalJual'],
                'tanggal_jatuh_tempo'=>$request->penjualanDetails['tanggalJatuhTempo'],
                'keterangan_bayar'=>$request->penjualanDetails['keteranganBayar'],
                'total_belanja'=>$request->penjualanDetails['totalBelanja'],
            ]);
            $api = [
                "Status"=>"success",
                "data"=>"Faktur Sukses Disimpan"
            ];
            return response()->json($api);
        } catch (\Exception $e) {
            $data = [
                "Status"=>"error",
                "data"=>$e
            ];
            return response()->json($data);
        }
        // return response()->json($request);
    }
    public function load_barang() {
        try {
            $data = DB::table('barangs')->get();
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
    public function load_pelanggan() {
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
