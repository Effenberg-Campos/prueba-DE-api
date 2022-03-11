<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Exception;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    public function createProduct (Request $request) {
        try {
            $product = Producto::create($request->all());

            return response()->json([
                "status" => 200,
                "msg" => "Producto creado",
                "response" => $product
            ]);
        } catch (Exception $e) {
            return response()->json([
                "status" => 200,
                "msg" => "No pudimos crear el Producto",
                "response" => $e->getMessage()
            ]);
        }
    }

    public function getAllProduct() {
        return Producto::where('eliminado', 0)->get();
    }

    public function updateProduct (Request $request, $id) {
        $product = Producto::find($id);
        $product->update($request->all());

        return response()->json([
            "status" => 200,
            "msg" => "Producto actualizado",
            "response" => $product
        ]);
    }

    public function deleteProduct ($id) {
        $product = Producto::find($id);
        $product->update(['eliminado' => 1]);

        return response()->json([
              "status" => 200,
            "msg" => "Producto eliminado",
            "response" => $product
        ]);
    }
}
