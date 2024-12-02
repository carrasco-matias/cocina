<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RecetaController;

Route::get('/', function () {

    return view('auth.register');
});

Route::get('/dashboard', [RecetaController::class, 'user_dashboard'])->middleware(['auth', 'verified'])->name('dashboard');

//GET TODOS O UN ID EN ESPECIFICO
Route::get('recetas/{nombre}', [RecetaController::class, 'show']);
Route::get('recetas/{nombre}/editar', [RecetaController::class, 'editar']);
Route::get('crear/recetas/', [RecetaController::class, 'crear']);
Route::post('recetas/creado', [RecetaController::class, 'creado']);
//PUT
Route::put('recetas/editado', [RecetaController::class, 'editado']);
//DELETE
Route::delete('recetas/eliminado/{id}', [RecetaController::class, 'eliminado']);



Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
