<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\IngredienteController;
use App\Http\Controllers\RecetaController;
use App\Http\Controllers\RecetaComentarioController;
use App\Http\Controllers\RecetaIngredienteController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::resources([
    'categorias' => CategoriaController::class,
    'comentarios' => ComentarioController::class,
    'ingredientes' => IngredienteController::class,
    'recetas' => RecetaController::class,
    'recetas-comentarios' => RecetaComentarioController::class,
    'recetas-ingredientes' => RecetaIngredienteController::class,
    'usuarios' => UserController::class
]);

require __DIR__.'/auth.php';
