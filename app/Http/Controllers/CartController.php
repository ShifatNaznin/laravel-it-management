<?php

namespace App\Http\Controllers;

use App\ProductAdd;
use Cart;
use Illuminate\Http\Request;
use App\Hosting_plan;
use App\Application_view;
use App\Cybersecurity_view;
use App\Apps_view;
use App\Service_view;
use App\Different;
use App\ServiceDetails;
use App\TransformationPlan;


class CartController extends Controller
{

    public function cart()
    {
        //  Cart::destroy();
        $products = Cart::content();
        return view('website.cart', compact('products'));
    }


    // hosting
    public function single_cartadd_hosting(Hosting_plan $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => $product->hosting_id]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }

    //    for mobile apps
    public function single_cartadd_apps(Apps_view $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => $product->apps_id]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_application(Application_view $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => $product->application_id]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_cybersecurity(Cybersecurity_view $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => $product->cybersecurity_id]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_submenu(ServiceDetails $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->s_name,
            'qty' => 1,
            'price' => $product->buy_price,
            'weight' => 0,
            'options' => ['category_id' => $product->service_category]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->s_name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_service(Service_view $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => $product->apps_id]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_different(Different $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => 0]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }
    public function single_cartadd_transformation(TransformationPlan $product, Request $request)
    {

        $cart = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['category_id' => 0]
        ]);

        // return $cart;
        if ($cart) {
            return back()->with(['success'  => $product->name . ' successfully add to your cart']);
        }
    }


    public function cartItems()
    {

        return view('website.cartitems');
    }
    public function cart_update_page()
    {
        $products = Cart::content();
        return view('website.cart-update-page', compact('products'));
    }
    public function cartUpdate(Request $request)
    {

        $qty = $request->qty;
        $rowid = $request->rowid;

        $update = Cart::update($rowid, $qty);
        if ($update) {
            return response()->json(['success'  => 'Cart successfully updated!']);
        }
    }

    public function cart_product_remove($rowid)
    {

        Cart::remove($rowid);
        return response()->json(['success'  => 'REMOVED!']);
    }


    // new

    public function single_cartadd_and_redirect(Product $product, Request $request)
    {


        //   Cart::destroy();
        $cartredi = Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->qty ?: 1,
            'price' => $product->price,
            'weight' => 0,
            'options' => ['image' => $product->photo]

        ]);

        if ($cartredi) {
            // return response()->json(['success'  => 'successfully add to your cart']);
            return redirect()->route('cart');
        }
    }
}
