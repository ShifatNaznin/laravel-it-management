<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Pricing;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class PricingController extends Controller
{
    public function index(){
        $value=Pricing::orderBy('id','ASC')->get();
        return view('admin.pricing.index',compact('value'));
    }

    public function add() {
        return view('admin.pricing.add');
    }

  
    public function store(Request $request) {
        // $this->validate($request, [ 
        //     'category_id'=>'required',
        //     'sub_category_id'=>'required',
        //     'name'=>'required',
        //     'details'=>'required',
        //     'price'=>'required',
        //     'photo'=>'required',
        //     'plan'=>'required',

        //     ]);
        $add=new Pricing;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->plan=$request->plan;
        $add->details=$request->details;



     
        if ($request->hasFile('photo')) {
            $file=$request->file('photo');
            $image_name=str_replace(' ', '_', substr($request->heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
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
        $data=Pricing::find($id);
        return view('admin.pricing.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Pricing::find($id);
        return view('admin.pricing.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Pricing::find($request->id);
        $add->name=$request->name;
        $add->details=$request->details;
        $add->price=$request->price;
        $add->plan=$request->plan;



        if ($request->hasFile('photo')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo)) Storage::disk('public')->delete('uploads/About/'.$add->photo);
            $file=$request->file('photo');
            $image_name=str_replace(' ', '_', substr($request->pricing_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
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
        $delete=Pricing::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }

    
}