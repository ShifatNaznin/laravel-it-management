<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\FooterTwo;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class FooterTwoController extends Controller
{
    public function index(){
        $value=FooterTwo::orderBy('id','ASC')->get();
        return view('admin.footer_two.index',compact('value'));
    }

    public function add() {
        return view('admin.footer_two.add');
    }

  
    public function store(Request $request) {
        $add=new FooterTwo;
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
        $data=FooterTwo::find($id);
        return view('admin.footer_two.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=FooterTwo::find($id);
        return view('admin.footer_two.update', compact('data'));
    }

    public function update(Request $request) {
        $add=FooterTwo::find($request->id);
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
        $delete=FooterTwo::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

  
}