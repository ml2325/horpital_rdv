<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;

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

Route::get('/', [HomeController::class, 'index']);

   
 Route::post('/upload_doctor', [AdminController::class, 'upload']);
 Route::get('/add_doctor_view', [AdminController::class, 'addview']);
    




    Route::get('/home', [HomeController::class, 'redirect'])->middleware('auth', 'verified');

    
    Route::post('/appointment', [HomeController::class, 'appointment']);
    Route::get('/showappointment', [AdminController::class, 'showappointment']);

    
    
    
    Route::get('/showdoctor', [AdminController::class, 'showdoctor']);
    Route::get('/updatedoctor/{id}', [AdminController::class, 'updatedoctor']);
    Route::post('/editdoctor/{id}', [AdminController::class, 'editdoctor']);
    Route::get('/deletedoctor/{id}', [AdminController::class, 'deletedoctor']);

    Route::get('/approved/{id}', [AdminController::class, 'approved']);
    Route::get('/canceled/{id}', [AdminController::class, 'canceled']);

    Route::get('/emailview/{id}', [AdminController::class, 'emailview']);
    Route::post('/sendemail/{id}', [AdminController::class, 'sendemail']);
    




Route::get('/myappointment', [HomeController::class, 'myappointment']);
Route::get('/cancelappoint/{id}', [HomeController::class, 'cancelappoint']);


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
