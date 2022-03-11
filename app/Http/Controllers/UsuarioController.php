<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Exception;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function createUser (Request $request) {
        try {
            $user = Usuario::create($request->all());

            return response()->json([
                "status" => 200,
                "msg" => "Usuario creado",
                "response" => $user
            ]);
        } catch (Exception $e) {
            return response()->json([
                "status" => 200,
                "msg" => "No pudimos crear el usuario",
                "response" => $e->getMessage()
            ]);
        }
    }

    public function getAllUser() {
        return Usuario::all();
    }

    public function updateUser (Request $request, $id) {
        $user = Usuario::find($id);
        $user->update($request->all());

        return response()->json([
            "status" => 200,
            "msg" => "Usuario actualizado",
            "response" => $user
        ]);
    }

    public function deleteUser ($id) {
        $user = Usuario::find($id);
        $user->delete();

        return response()->json([
              "status" => 200,
            "msg" => "Usuario eliminado",
            "response" => $user
        ]);
    }
}
