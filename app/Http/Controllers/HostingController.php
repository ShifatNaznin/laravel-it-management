<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\hosting;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class HostingController extends Controller
{
    public function index(){
        $value=hosting::orderBy('id','ASC')->get();
        return view('admin.hosting.index',compact('value'));
    }

    public function add() {
        return view('admin.hosting.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'heading'=>'required',
            'sub_heading'=>'required',
            'price'=>'required',

            ]);
        $add=new hosting;
        $add->heading=$request->heading;
        $add->price=$request->price;
        $add->sub_heading=$request->sub_heading;
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
        $data=hosting::find($id);
        return view('admin.hosting.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=hosting::find($id);
        return view('admin.hosting.update', compact('data'));
    }

    public function update(Request $request) {
        $add=hosting::find($request->id);
        $add->heading=$request->heading;
        $add->price=$request->price;
        $add->sub_heading=$request->sub_heading;
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
        $delete=hosting::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function subcategory($id){
        
        $subcategories = SubCategory::where('category_id',$id)->get();
        // return response()->json($subcategory);
        return view('admin.hosting.subcategory',compact('subcategories'));
    }
}