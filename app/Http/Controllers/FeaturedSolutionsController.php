<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\FeaturedSolutions;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class FeaturedSolutionsController extends Controller
{
    public function index(){
        $value=FeaturedSolutions::orderBy('id','ASC')->get();
        return view('admin.featured_solutions.index',compact('value'));
    }

    public function add() {
        return view('admin.featured_solutions.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'heading'=>'required',
            'sub_heading'=>'required',
            'photo'=>'required',

            ]);
        $add=new FeaturedSolutions;
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;

     
        if ($request->hasFile('photo')) {
            $file=$request->file('photo');
            $image_heading=str_replace(' ', '_', substr($request->heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(900, 600, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(900, 600);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_heading));
            $add->photo=$image_heading;
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
        $data=FeaturedSolutions::find($id);
        return view('admin.featured_solutions.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=FeaturedSolutions::find($id);
        return view('admin.featured_solutions.update', compact('data'));
    }

    public function update(Request $request) {
        $add=FeaturedSolutions::find($request->id);
        $add->heading=$request->heading;
        $add->sub_heading=$request->sub_heading;;



        if ($request->hasFile('photo')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo)) Storage::disk('public')->delete('uploads/About/'.$add->photo);
            $file=$request->file('photo');
            $image_heading=str_replace(' ', '_', substr($request->application_heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(900, 600, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(900, 600);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_heading));
            $add->photo=$image_heading;
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
        $delete=FeaturedSolutions::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }


}