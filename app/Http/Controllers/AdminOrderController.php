<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Order;
use App\OrderDetails;
use App\ChechkoutForm;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class AdminOrderController extends Controller
{
    public function orderlist(){
        $value=Order::orderBy('id','ASC')->get();
        return view('admin.order.orderlist',compact('value'));
    }


    public function orderlist_view(Request $request, $id) {
        $data=Order::find($id);
        return view('admin.order.orderlistview', compact('data'));
    }

  

    public function orderlist_delete() {
        $id=$_POST['modal_id'];
        $delete=Order::where('status',0)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    
    public function orderdetails(){
        $value=OrderDetails::orderBy('id','ASC')->get();
        return view('admin.order.orderdetails',compact('value'));
    }


    public function orderdetails_view(Request $request, $id) {
        $data=OrderDetails::find($id);
        return view('admin.order.orderdetailsview', compact('data'));
    }

  

    public function orderdetails_delete() {
        $id=$_POST['modal_id'];
        $delete=OrderDetails::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
    public function orderaddress(){
        $value=ChechkoutForm::orderBy('id','ASC')->get();
        return view('admin.order.orderaddress',compact('value'));
    }


    public function orderaddress_view(Request $request, $id) {
        $data=ChechkoutForm::find($id);
        return view('admin.order.orderaddressview', compact('data'));
    }

  

    public function orderaddress_delete() {
        $id=$_POST['modal_id'];
        $delete=ChechkoutForm::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

   
}