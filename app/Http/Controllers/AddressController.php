<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Address;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class AddressController extends Controller
{
    public function index(){
        $value=Address::orderBy('id','ASC')->get();
        return view('admin.address.index',compact('value'));
    }

    public function add() {
        return view('admin.address.add');
    }

  
    public function store(Request $request) {
        $add=new Address;
        $add->name=$request->name;
        $add->phone=$request->phone;
        $add->email=$request->email;
        $add->address=$request->address;
        $add->linkedin=$request->linkedin;
        $add->facebook=$request->facebook;
        $add->twitter=$request->twitter;
        


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=Address::find($id);
        return view('admin.address.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Address::find($id);
        return view('admin.address.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Address::find($request->id);
        $add->name=$request->name;
        $add->phone=$request->phone;
        $add->email=$request->email;
        $add->address=$request->address;
        $add->linkedin=$request->linkedin;
        $add->facebook=$request->facebook;
        $add->twitter=$request->twitter;



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
        $delete=Address::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

  
}