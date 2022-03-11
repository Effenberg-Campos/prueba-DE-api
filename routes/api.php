<?php

use App\Http\Controllers\ProductoController;
use App\Http\Controllers\UsuarioController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// USUERS
Route::post('/create/user', [UsuarioController::class, 'createUser']);
Route::get('/users', [UsuarioController::class, 'getAllUser']);
Route::put('/update/user/{id}', [UsuarioController::class, 'updateUser']);
Route::delete('/delete/user/{id}', [UsuarioController::class, 'deleteUser']);

// PRODUCTS
Route::post('/create/product', [ProductoController::class, 'createProduct']);
Route::get('/products', [ProductoController::class, 'getAllProduct']);
Route::put('/update/product/{id}', [ProductoController::class, 'updateProduct']);
Route::delete('/delete/product/{id}', [ProductoController::class, 'deleteProduct']);
