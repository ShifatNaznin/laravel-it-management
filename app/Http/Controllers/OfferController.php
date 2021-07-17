<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Offer;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class OfferController extends Controller
{
    public function index(){
        $value=Offer::orderBy('id','ASC')->get();
        return view('admin.offer.index',compact('value'));
    }

    public function add() {
        return view('admin.offer.add');
    }

  
    public function store(Request $request) {
        $this->validate($request, [ 
            'heading'=>'required',
            'sub_heading'=>'required',

            ]);
        $add=new Offer;
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
        $data=Offer::find($id);
        return view('admin.offer.view', compact('data'));
    }

    public function edit(Request $request, $id) {
        $data=Offer::find($id);
        return view('admin.offer.update', compact('data'));
    }

    public function update(Request $request) {
        $add=Offer::find($request->id);
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

    public function delete() {
        $id=$_POST['modal_id'];
        $delete=Offer::where('status',1)->where('id',$id)->delete();
        if($delete) {
            return back()->with('success', 'value');
        }

        else {
            return back()->with('error', 'value');
        }
    }
}