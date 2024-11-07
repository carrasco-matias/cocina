<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class RecetasComentario extends Model
{
   protected $connection = 'mongodb';
   protected $collection = 'recetas_comentarios';
   public $timestamps = false;
}
