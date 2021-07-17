<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Service_view;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class ServiceViewController extends Controller
{
    public function index(){
        $value=Service_view::orderBy('id','ASC')->get();
        return view('admin.service_view.index',compact('value'));
    }

    public function add() {
        return view('admin.service_view.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'service_id'=>'required',
            'name'=>'required',
            'price'=>'required',

            ]);
        $add=new Service_view;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->service_id=$request->service_id;
        $add->details=$request->details;
        


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=Service_view::find($id);
        return view('admin.service_view.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Service_view::find($id);
        return view('admin.service_view.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Service_view::find($request->id);
        $add->name=$request->name;
        $add->price=$request->price;
        $add->service_id=$request->service_id;
        $add->details=$request->details;



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
        $delete=Service_view::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}