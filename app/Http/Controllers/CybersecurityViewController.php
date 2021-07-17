<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Cybersecurity_view;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class CybersecurityViewController extends Controller
{
    public function index(){
        $value=Cybersecurity_view::orderBy('id','ASC')->get();
        return view('admin.cybersecurity_view.index',compact('value'));
    }

    public function add() {
        return view('admin.cybersecurity_view.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'cybersecurity_id'=>'required',
            'name'=>'required',
            'price'=>'required',

            ]);
        $add=new Cybersecurity_view;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->duration=$request->duration;
        $add->cybersecurity_id=$request->cybersecurity_id;
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
        $data=Cybersecurity_view::find($id);
        return view('admin.cybersecurity_view.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Cybersecurity_view::find($id);
        return view('admin.cybersecurity_view.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Cybersecurity_view::find($request->id);
        $add->name=$request->name;
        $add->price=$request->price;
        $add->duration=$request->duration;
        $add->cybersecurity_id=$request->cybersecurity_id;
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
        $delete=Cybersecurity_view::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}