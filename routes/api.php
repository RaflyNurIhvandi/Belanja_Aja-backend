<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\FakturController;
use App\Http\Controllers\KomisiController;
use App\Http\Controllers\PelangganController;
use App\Http\Controllers\PemasoksController;
use App\Http\Controllers\UsersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Autentikasi
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/user', [AuthController::class, 'user'])->middleware('auth:sanctum');
Route::get('/akses', [AuthController::class, 'akses']);

// pemasoks
Route::post('/insert-pemasok', [PemasoksController::class, 'insert']);
Route::get('/load-pemasok', [PemasoksController::class, 'load']);
Route::put('/update-pemasok/{id}', [PemasoksController::class, 'update']);
Route::delete('/delete-pemasok/{id}', [PemasoksController::class, 'delete']);

// users
Route::post('/insert-user', [UsersController::class, 'insert']);
Route::get('/load-user', [UsersController::class, 'load']);
Route::delete('/delete-user/{id}', [UsersController::class, 'delete']);

// barangs
Route::get('/load-kode-pemasok', [BarangController::class, 'loadkodes']);
Route::get('/load-pemasok-barang', [BarangController::class, 'loadpemasoks']);
Route::post('/insert-barang', [BarangController::class, 'insert']);
Route::get('/load-barang', [BarangController::class, 'load']);
Route::put('/update-barang/{id}', [BarangController::class, 'update']);
Route::delete('/delete-barang/{id}', [BarangController::class, 'delete']);

// pelanggan
Route::get('/load-pelanggan', [PelangganController::class, 'load']);
Route::post('/insert-pelanggan', [PelangganController::class, 'insert']);
Route::put('/update-pelanggan/{id}', [PelangganController::class, 'update']);
Route::delete('/delete-pelanggan/{id}', [PelangganController::class, 'delete']);

// faktur
Route::get('/faktur/load-pelanggan', [FakturController::class, 'load_pelanggan']);
Route::get('/faktur/load-barang', [FakturController::class, 'load_barang']);
Route::post('/faktur/save-faktur', [FakturController::class, 'save']);
Route::get('/faktur/load-penjualan', [FakturController::class, 'load']);

// komisi
Route::get('/load-karyawan', [KomisiController::class, 'load_karyawan']);
Route::get('/load-komisi', [KomisiController::class, 'load_komisi']);
Route::post('/insert-komisi', [KomisiController::class, 'insert']);

