<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\FooterThree;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class FooterThreeController extends Controller
{
    public function index(){
        $value=FooterThree::orderBy('id','ASC')->get();
        return view('admin.footer_three.index',compact('value'));
    }

    public function add() {
        return view('admin.footer_three.add');
    }

  
    public function store(Request $request) {
        $add=new FooterThree;
        $add->name=$request->name;
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
        $data=FooterThree::find($id);
        return view('admin.footer_three.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=FooterThree::find($id);
        return view('admin.footer_three.update', compact('data'));
    }

    public function update(Request $request) {
        $add=FooterThree::find($request->id);
        $add->name=$request->name;
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
        $delete=FooterThree::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

  
}