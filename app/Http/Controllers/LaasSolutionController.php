<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\LaasSolution;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class LaasSolutionController extends Controller
{
    public function index(){
        $value=LaasSolution::orderBy('id','ASC')->get();
        return view('admin.laas_solution.index',compact('value'));
    }

    public function add() {
        return view('admin.laas_solution.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'details'=>'required',
            'apps_id'=>'required',

            ]);
        $add=new LaasSolution;
        $add->name=$request->name;
        
        $add->apps_id=$request->apps_id;
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
        $data=LaasSolution::find($id);
        return view('admin.laas_solution.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=LaasSolution::find($id);
        return view('admin.laas_solution.update', compact('data'));
    }

    public function update(Request $request) {
        $add=LaasSolution::find($request->id);
        $add->name=$request->name;
        
        $add->apps_id=$request->apps_id;
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
        $delete=LaasSolution::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

}