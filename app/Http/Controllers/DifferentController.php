<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Different\Facades\Hash;
use App\Different;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class DifferentController extends Controller
{
    public function index(){
        $value=Different::orderBy('id','ASC')->get();
        return view('admin.different.index',compact('value'));
    }

    public function add() {
        return view('admin.different.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'price'=>'required',

            ]);
        $add=new Different;
        
        $add->name=$request->name;
        
        $add->price=$request->price;
        
        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=Different::find($id);
        return view('admin.different.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Different::find($id);
        return view('admin.different.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Different::find($request->id);
        
        $add->name=$request->name;
        $add->price=$request->price;


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
        $delete=Different::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
}