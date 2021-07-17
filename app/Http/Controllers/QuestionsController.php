<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Questions;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class QuestionsController extends Controller
{
    public function index(){
        $value=Questions::orderBy('id','ASC')->get();
        return view('admin.questions.index',compact('value'));
    }

    public function add() {
        return view('admin.questions.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'heading'=>'required',
            'sub_heading'=>'required',

            ]);
        $add=new Questions;
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
        $data=Questions::find($id);
        return view('admin.questions.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Questions::find($id);
        return view('admin.questions.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Questions::find($request->id);
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;;


        
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
        $delete=Questions::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }


}