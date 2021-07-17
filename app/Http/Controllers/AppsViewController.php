<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Apps_view;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class AppsViewController extends Controller
{
    public function index(){
        $value=Apps_view::orderBy('id','ASC')->get();
        return view('admin.apps_view.index',compact('value'));
    }

    public function add() {
        return view('admin.apps_view.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'apps_id'=>'required',
            'price'=>'required',

            ]);
        $add=new Apps_view;
        $add->name=$request->name;
        $add->link=$request->link;
        $add->price=$request->price;
        $add->apps_id=$request->apps_id;
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
        $data=Apps_view::find($id);
        return view('admin.apps_view.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Apps_view::find($id);
        return view('admin.apps_view.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Apps_view::find($request->id);
        $add->name=$request->name;
        $add->link=$request->link;
        $add->price=$request->price;
        $add->apps_id=$request->apps_id;
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
        $delete=Apps_view::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}