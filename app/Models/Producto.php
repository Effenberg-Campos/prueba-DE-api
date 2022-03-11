<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;

    protected $table = "producto";
    protected $primarykey = "id";
    protected $fillable = [
        "sku",
        "nombre",
        "cantidad",
        "precio",
        "descripcion",
        "eliminado",
    ];

    public $timestamps = false;
}
