<?php

namespace App\Http\Controllers;

// use App\CheckOut;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Session;
use App\Order;
use App\OrderDetails;
use App\ChechkoutForm;
use App\CheckoutDetails;
use App\Application_view;
use App\Apps_view;
use App\Service_view;
use App\Different;
use App\TransformationPlan;
use App\Hosting_plan;
use Cart;

class CheckOutController extends Controller
{
    // public function __construct()
    // {
    // 	$this->middleware('auth');
    // }


	public function checkout()
    {
        return view('website.registration');
    }
	
	public function checkout_form(Request $request){
		$this->validate($request, [ 
            'first_name'=>'required',
            'last_name'=>'required',
            'email'=>'required',
            'phone_one'=>'required',
            'city'=>'required',
            'country'=>'required',
            'state'=>'required',
            'zip_code'=>'required',
            'message'=>'required',
            'industry'=>'required',
            'company_name'=>'required',
   

            ]);

    
    	// $request['status'] = (boolean)$request->status;
    	$shipping = ChechkoutForm::create( $request->all() );
    	
	
    	$total = Cart::total();
 

    		$order = Order::create([
    			'shipping_id' => $shipping->id,
    			'order_total' => $total
    		]);

    		foreach(Cart::content() as $product){
				// dd($product->options->category_id);
	    		$orderedProduct = OrderDetails::create([
	    			'order_id' => $order->id,
					'product_id' => $product->id,
					'product_name' => $product->name,
					'price' => $product->price,
					'qty' => $product->qty,
					'category_id' =>$product->options->category_id
	    		]);

	    		// $orderedProduct = Application_view::findOrFail($product->id);
	    		// $orderedProduct = Apps_view::findOrFail($product->id);
	    		// $orderedProduct = Service_view::findOrFail($product->id);
	    		// $orderedProduct = Different::findOrFail($product->id);
	    		// $orderedProduct = TransformationPlan::findOrFail($product->id);
	    		// $orderedProduct = Hosting_plan::findOrFail($product->id);
                $orderedProduct->save();
	    	}

    



    	if( $orderedProduct){
    		Cart::destroy();
    		return redirect('checkout')->with('success', 'Oder Succdessfull');
    	}else{
    		return redirect('checkout');
    	}
    }



	
}