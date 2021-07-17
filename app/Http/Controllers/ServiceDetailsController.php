<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\ServiceDetails;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Illuminate\Support\Facades\Storage;

class ServiceDetailsController extends Controller
{
    public function index(){
        $value=ServiceDetails::orderBy('id','ASC')->get();
        return view('admin.service-details.index',compact('value'));
    }

    public function add() {
        return view('admin.service-details.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'service_category'=>'required',
            's_name'=>'required',

            ]);
        $add=new ServiceDetails;
        $add->s_name=$request->s_name;
        $add->subscription_price=$request->subscription_price;
        $add->buy_price=$request->buy_price;
        $add->service_category=$request->service_category;
        $add->link=$request->link;
        

        if($request->hasFile('s_image')) {
            $user_img_name = $request->file('s_image');
            $user_name = time().'.'.$user_img_name->getClientOriginalExtension();
            $destinationPath = public_path('/uploads');
            $user_img_name->move($destinationPath, $user_name);
    
            $add->s_image = $user_name;
    
          }

        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=ServiceDetails::find($id);
        return view('admin.service-details.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=ServiceDetails::find($id);
        return view('admin.service-details.update', compact('data'));
    }

    public function update(Request $request) {
        $add=ServiceDetails::find($request->id);
        $add->s_name=$request->s_name;
        $add->subscription_price=$request->subscription_price;
        $add->buy_price=$request->buy_price;
        $add->service_category=$request->service_category;
        $add->link=$request->link;

        if($request->hasFile('s_image')) {
            if(Storage::disk('public')->exists('uploads/'.$add->s_image)) Storage::disk('public')->delete('uploads/'.$add->s_image);
            $user_img_name = $request->file('s_image');
            $user_name = time().'.'.$user_img_name->getClientOriginalExtension();
            $destinationPath = public_path('/uploads');
            $user_img_name->move($destinationPath, $user_name);
    
            $add->s_image = $user_name;
    
          }

        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function delete() {
        $id=$_POST['modal_id'];
        $delete=ServiceDetails::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}