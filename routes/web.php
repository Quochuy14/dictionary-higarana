<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'welcome'])->name('welcome');
Route::post('/add_word', [HomeController::class, 'addWord'])->name('add_word');
Route::get('/delete_word/{id}', [HomeController::class, 'deleteWord'])->name('delete_word');
Route::post('/update_word/{id}', [HomeController::class, 'updateWord'])->name('update_word');

Route::get('/training', [HomeController::class, 'training'])->name('training');