<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Hosting_plan;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class HostingPlanController extends Controller
{
    public function index(){
        $value=Hosting_plan::orderBy('id','ASC')->get();
        return view('admin.hosting_plan.index',compact('value'));
    }

    public function add() {
        return view('admin.hosting_plan.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'hosting_id'=>'required',
            'price'=>'required',

            ]);
        $add=new Hosting_plan;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->hosting_id=$request->hosting_id;
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
        $data=Hosting_plan::find($id);
        return view('admin.hosting_plan.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Hosting_plan::find($id);
        return view('admin.hosting_plan.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Hosting_plan::find($request->id);
        $add->name=$request->name;
        $add->price=$request->price;
        $add->hosting_id=$request->hosting_id;
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
        $delete=Hosting_plan::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}