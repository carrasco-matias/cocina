<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class Receta extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'recetas';
   public $timestamps = false;
}
