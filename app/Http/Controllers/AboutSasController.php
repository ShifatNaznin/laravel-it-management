<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\AboutSas;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class AboutSasController extends Controller
{
    public function index(){
        $value = AboutSas::orderBy('id','ASC')->get();
        return view('admin.aboutsas.index',compact('value'));
    }



    public function add() {
        return view('admin.aboutsas.add');
    }

  
    public function store(Request $request) {
        $add=new AboutSas;
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
        $data=AboutSas::find($id);
        return view('admin.aboutsas.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=AboutSas::find($id);
        return view('admin.aboutsas.update', compact('data'));
    }

    public function update(Request $request) {
        $add=AboutSas::find($request->id);
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
        $delete=AboutSas::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}