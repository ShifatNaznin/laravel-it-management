<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\hosting_title;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class MenuTitleController extends Controller
{
    public function index(Request $request, $id){
        $data=hosting_title::find($id);
        return view('admin.title.index',compact('data'));
    }

    public function add() {
        return view('admin.title.add');
    }

  
    public function store(Request $request) {
     
        $add=new hosting_title;
        $add->banner_title=$request->banner_title;
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;

        
        if ($request->hasFile('photo')) {
            $file=$request->file('photo');
            $image_name=str_replace(' ', '_', substr($request->heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(1920, 800, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(1920, 800);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo=$image_name;
        }


        $add->save();

        if($add) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id) {
        $data=hosting_title::find($id);
        return view('admin.title.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=hosting_title::find($id);
        return view('admin.title.update', compact('data'));
    }

    public function update(Request $request) {
        $add=hosting_title::find($request->id);
        $add->banner_title=$request->banner_title;
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;


        if ($request->hasFile('photo')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo)) Storage::disk('public')->delete('uploads/About/'.$add->photo);
            $file=$request->file('photo');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(1920, 800, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(1920, 800);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo=$image_name;
        }

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
        $delete=hosting_title::where('status',1)->where('id',$id)->delete();
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
        return view('admin.title.subcategory',compact('subcategories'));
    }
}