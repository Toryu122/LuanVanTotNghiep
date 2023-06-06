<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        return view('cart');
    }

    public function addToCart(Request $request)
    {
        // dd($request);
        $id = $request->get('id');
        $game = Game::findOrFail($id);

        $cart = session()->get('cart', []);

        // If the game already in the cart, increase the amount
        if (isset($cart[$id])) {
            $cart[$id]['quantity']++;
        } else {
            $cart[$id] = [
                'id' => $game->id,
                'name' => $game->name,
                'price' => $game->price,
                'image' => $game->image,
                'quantity' => 1
            ];
        }

        session()->put('cart', $cart);
        return redirect()->route('cart')->with('add_to_cart_success', "Thêm vào giỏ hàng thành công");
    }

    public function updateCart(Request $request)
    {
        try {
            if ($request->id && $request->quantity) {
                $cart = session()->get('cart');
                $cart[$request->id]["quantity"] = $request->quantity;
                session()->put('cart', $cart);
                return redirect()->back()->with('cart_updated', "Cập nhật thành công");
            }
        } catch (\Exception $ex) {
            return redirect()->back()->with('unknow_error', "Something went wrong");
        }
    }

    public function removeItemFromCart(Request $request)
    {
        if($request->id)
        {
            $cart = session()->get('cart');
            if(isset($cart[$request->id]))
            {
                unset($cart[$request->id]);
                session()->put('cart', $cart);
            }
            session()->flash('remove_item_success', "Xóa sản phẩm thành công");
        }
    }
}
