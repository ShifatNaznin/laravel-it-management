<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\About;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class AboutController extends Controller
{
    public function index(){
        $value=About::orderBy('id','ASC')->get();
        return view('admin.watch.index',compact('value'));
    }

    public function add() {
        return view('admin.watch.add');
    }

  
    public function store(Request $request) {
        // $this->validate($request, [ 
        //     'heading'=>'required',
        //     'sub_heading'=>'required',
        //     'photo'=>'required',

        //     ]);
        $add=new About;
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;
        $add->link=$request->link;


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=About::find($id);
        return view('admin.watch.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=About::find($id);
        return view('admin.watch.update', compact('data'));
    }

    public function update(Request $request) {
        $add=About::find($request->id);
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;
        $add->link=$request->link;


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
        $delete=About::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
}