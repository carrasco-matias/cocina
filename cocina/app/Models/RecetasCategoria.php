<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class RecetasCategoria extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'recetas_categoria';
   public $timestamps = false;
}
