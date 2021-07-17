<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Banner;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class BannerController extends Controller
{
    public function index(){
        $value = Banner::orderBy('id','ASC')->get();
        return view('admin.banner.index',compact('value'));
    }



    public function add() {
        return view('admin.banner.add');
    }

  
    public function store(Request $request) {
        $add=new Banner;
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
        $data=Banner::find($id);
        return view('admin.banner.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Banner::find($id);
        return view('admin.banner.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Banner::find($request->id);
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
        $delete=Banner::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}