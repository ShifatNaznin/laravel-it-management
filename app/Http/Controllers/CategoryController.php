<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\category;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class CategoryController extends Controller
{
    public function index(){
        $value=category::orderBy('id','ASC')->get();
        return view('admin.category.index',compact('value'));
    }

    public function add() {
        return view('admin.category.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'heading'=>'required',
            'sub_heading'=>'required',

            ]);
        $add=new category;
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;
        


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=category::find($id);
        return view('admin.category.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=category::find($id);
        return view('admin.category.update', compact('data'));
    }

    public function update(Request $request) {
        $add=category::find($request->id);
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;
        
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
        $delete=category::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
}