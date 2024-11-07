<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class Ingrediente extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'ingredientes';
   public $timestamps = false;
}
