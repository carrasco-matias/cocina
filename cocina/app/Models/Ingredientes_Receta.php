<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class Ingredientes_Receta extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'ingredientes_recetas';
   public $timestamps = false;
}
