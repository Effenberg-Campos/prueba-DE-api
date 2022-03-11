<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;

    protected $table = "usuario";
    protected $primarykey = "id";
    protected $fillable = [
        "nombre",
        "telefono",
        "username",
        "fechaNacimiento",
        "email",
        "password",
        "estado"
    ];

    protected $hidden = [
        'password',
    ];

    public $timestamps = false;
}
