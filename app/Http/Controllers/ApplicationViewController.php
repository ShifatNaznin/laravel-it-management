<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Application_view;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class ApplicationViewController extends Controller
{
    public function index(){
        $value=Application_view::orderBy('id','ASC')->get();
        return view('admin.application_view.index',compact('value'));
    }

    public function add() {
        return view('admin.application_view.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'application_id'=>'required',
            'name'=>'required',
            'price'=>'required',

            ]);
        $add=new Application_view;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->duration=$request->duration;
        $add->application_id=$request->application_id;
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
        $data=Application_view::find($id);
        return view('admin.application_view.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Application_view::find($id);
        return view('admin.application_view.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Application_view::find($request->id);
        $add->name=$request->name;
        $add->price=$request->price;
        $add->duration=$request->duration;
        $add->application_id=$request->application_id;
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
        $delete=Application_view::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}