<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Customer;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class CustomerController extends Controller
{
    public function index(){
        $value=Customer::orderBy('id','ASC')->get();
        return view('admin.customer.index',compact('value'));
    }

    public function add() {
        return view('admin.customer.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'name'=>'required',
            'details'=>'required',
            'photo'=>'required',

            ]);
        $add=new Customer;
        $add->name=$request->name;
        $add->position=$request->position;
        $add->details=$request->details;
       
        



     
        if ($request->hasFile('photo')) {
            $file=$request->file('photo');
            $image_heading=str_replace(' ', '_', substr($request->name, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(100, 100, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(100, 100);
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
        $data=Customer::find($id);
        return view('admin.customer.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Customer::find($id);
        return view('admin.customer.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Customer::find($request->id);
        $add->name=$request->name;
        $add->position=$request->position;
        $add->details=$request->details;



        if ($request->hasFile('photo')) {
            if(Storage::disk('public')->exists('uploads/images/'.$add->photo)) Storage::disk('public')->delete('uploads/About/'.$add->photo);
            $file=$request->file('photo');
            $image_heading=str_replace(' ', '_', substr($request->application_heading, 0, 5)) . '-'. uniqid() . '.'. $file->getClientOriginalExtension();
            $image=Image::make($file);

            $image->resize(100, 100, function ($constraint) {
                    $constraint->aspectRatio();
                }

            );

            $img_canvas=Image::canvas(100, 100);
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
        $delete=Customer::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }


}