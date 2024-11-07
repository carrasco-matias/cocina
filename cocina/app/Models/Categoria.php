<?php

namespace App\Models;

use MongoDB\Laravel\Eloquent\Model;

class Categoria extends Model
{
    protected $connection = 'mongodb';
    protected $collection = 'categorias';
    protected $primaryKey = 'nombre';
    protected $keyType = 'string';
    public $timestamps = false;
}
