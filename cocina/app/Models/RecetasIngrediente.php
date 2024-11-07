<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class RecetasIngrediente extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'recetas_ingredientes';
   public $timestamps = false;
}
