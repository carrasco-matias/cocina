<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class Categorias_Receta extends Model
{
    protected $connection = 'mongodb';
    protected $collection = 'categorias_recetas';
    public $timestamps = false;
}
