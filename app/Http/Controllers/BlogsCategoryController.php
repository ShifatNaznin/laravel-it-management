<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\BlogsCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class BlogsCategoryController extends Controller
{
    public function index(){
        $value=BlogsCategory::orderBy('id','ASC')->get();
        return view('admin.blog_category.index',compact('value'));
    }

    public function add() {
        return view('admin.blog_category.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',

            ]);
        $add=new BlogsCategory;
        $add->name=$request->name;


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=BlogsCategory::find($id);
        return view('admin.blog_category.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=BlogsCategory::find($id);
        return view('admin.blog_category.update', compact('data'));
    }

    public function update(Request $request) {
        $add=BlogsCategory::find($request->id);
        $add->name=$request->name;

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
        $delete=BlogsCategory::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
}