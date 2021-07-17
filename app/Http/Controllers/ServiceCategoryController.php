<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\ServiceCategory;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class ServiceCategoryController extends Controller
{
    public function index()
    {
        $value = ServiceCategory::orderBy('id', 'DESC')->get();
        return view('admin.service-category.index', compact('value'));
    }



    public function add()
    {
        return view('admin.service-category.add');
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'service_name' => 'required',

        ]);
        $add = new ServiceCategory;
        $add->service_name = $request->service_name;


        $add->save();

        if ($add) {
            return redirect()->route('service_category')->with('success', 'value');
        } else {
            return back()->with('error', 'value');
        }
    }

    public function view(Request $request, $id)
    {
        $data = ServiceCategory::find($id);
        return view('admin.service-category.view', compact('data'));
    }

    public function edit(Request $request, $id)
    {
        $data = ServiceCategory::find($id);
        return view('admin.service-category.update', compact('data'));
    }

    public function update(Request $request)
    {
        $add = ServiceCategory::find($request->id);
        $add->service_name = $request->service_name;



        $add->save();

        if ($add) {
            return back()->with('success', 'value');
        } else {
            return back()->with('error', 'value');
        }
    }

    public function delete()
    {
        $id = $_POST['modal_id'];
        $delete = ServiceCategory::where('status', 1)->where('id', $id)->delete();
        if ($delete) {
            return back()->with('success', 'value');
        } else {
            return back()->with('error', 'value');
        }
    }
}
