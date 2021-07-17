<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\FooterOne;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class FooterOneController extends Controller
{
    public function index(){
        $value=FooterOne::orderBy('id','ASC')->get();
        return view('admin.footer_one.index',compact('value'));
    }

    public function add() {
        return view('admin.footer_one.add');
    }

  
    public function store(Request $request) {
        $add=new FooterOne;
        $add->name=$request->name;
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
        $data=FooterOne::find($id);
        return view('admin.footer_one.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=FooterOne::find($id);
        return view('admin.footer_one.update', compact('data'));
    }

    public function update(Request $request) {
        $add=FooterOne::find($request->id);
        $add->name=$request->name;
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
        $delete=FooterOne::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

  
}