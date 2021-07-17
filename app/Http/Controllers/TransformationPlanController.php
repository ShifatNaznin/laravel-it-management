<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\TransformationPlan;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class TransformationPlanController extends Controller
{
    public function index(){
        $value=TransformationPlan::orderBy('id','ASC')->get();
        return view('admin.transformation_plan.index',compact('value'));
    }

    public function add() {
        return view('admin.transformation_plan.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'price'=>'required',

            ]);
        $add=new TransformationPlan;
        $add->name=$request->name;
        $add->price=$request->price;
        
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
        $data=TransformationPlan::find($id);
        return view('admin.transformation_plan.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=TransformationPlan::find($id);
        return view('admin.transformation_plan.update', compact('data'));
    }

    public function update(Request $request) {
        $add=TransformationPlan::find($request->id);
        $add->name=$request->name;
        $add->price=$request->price;
        
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
        $delete=TransformationPlan::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}