<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Header;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class HeaderController extends Controller
{
    public function index(Request $request, $id){
        $data = Header::find($id);
        return view('admin.allheader.index',compact('data'));
    }

    // public function allheader_single(Request $request, $id)
    // {
    //     $data = Header::find($id);
    //     return view('admin.allheader_single.index', compact('data'));
    // }

    public function add() {
        return view('admin.allheader.add');
    }

  
    public function store(Request $request) {
        $add=new Header;
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
        $data=Header::find($id);
        return view('admin.allheader.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Header::find($id);
        return view('admin.allheader.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Header::find($request->id);
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
        $delete=Header::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}