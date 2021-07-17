<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Product;
use App\SubCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class ProductController extends Controller
{
    public function index(){
        $value=Product::orderBy('id','ASC')->get();
        return view('admin.product.index',compact('value'));
    }

    public function add() {
        return view('admin.product.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'category_id'=>'required',
            'sub_category_id'=>'required',
            'name'=>'required',
            'details'=>'required',
            'price'=>'required',
            'photo'=>'required',
            'code'=>'required',

            ]);
        $add=new Product;
        $add->category_id=$request->category_id;
        $add->sub_category_id=$request->sub_category_id;
        $add->product_unit=$request->product_unit;
        $add->name=$request->name;
        $add->price=$request->price;
        $add->code=$request->code;
        $add->details=$request->details;
        $add->feature=$request->feature;



     
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
        if ($request->hasFile('photo_two')) {
            $file=$request->file('photo_two');
            $image_name=str_replace(' ', '_', substr($request->heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_two=$image_name;
        }
        if ($request->hasFile('photo_three')) {
            $file=$request->file('photo_three');
            $image_name=str_replace(' ', '_', substr($request->heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_three=$image_name;
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
        $data=Product::find($id);
        return view('admin.product.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Product::find($id);
        return view('admin.product.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Product::find($request->id);
        $add->category_id=$request->category_id;
        $add->sub_category_id=$request->sub_category_id;
        $add->product_unit=$request->product_unit;
        $add->name=$request->name;
        $add->details=$request->details;
        $add->price=$request->price;
        $add->code=$request->code;
        $add->feature=$request->feature;



        if ($request->hasFile('photo')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo)) Storage::disk('public')->delete('uploads/About/'.$add->photo);
            $file=$request->file('photo');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
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
        if ($request->hasFile('photo_two')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo_two)) Storage::disk('public')->delete('uploads/About/'.$add->photo_two);
            $file=$request->file('photo_two');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_two=$image_name;
        }
        if ($request->hasFile('photo_three')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo_three)) Storage::disk('public')->delete('uploads/About/'.$add->photo_three);
            $file=$request->file('photo_three');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_three=$image_name;
        }
        if ($request->hasFile('photo_four')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo_four)) Storage::disk('public')->delete('uploads/About/'.$add->photo_four);
            $file=$request->file('photo_four');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_four=$image_name;
        }
        if ($request->hasFile('photo_five')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo_five)) Storage::disk('public')->delete('uploads/About/'.$add->photo_five);
            $file=$request->file('photo_five');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_five=$image_name;
        }
        if ($request->hasFile('photo_six')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo_six)) Storage::disk('public')->delete('uploads/About/'.$add->photo_six);
            $file=$request->file('photo_six');
            $image_name=str_replace(' ', '_', substr($request->product_name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(480, 430, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(480, 430);
            $img_canvas->insert($image, 'center');
            $img_canvas->save(base_path('public/uploads/images/'. $image_name));
            $add->photo_six=$image_name;
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
        $delete=Product::where('status',1)->where('id',$id)->delete();
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
        return view('admin.product.subcategory',compact('subcategories'));
    }
}