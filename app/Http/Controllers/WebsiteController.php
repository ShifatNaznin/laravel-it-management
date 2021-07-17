<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Offer;
use App\Application;
use App\Cybersecurity;
use App\Application_view;
use App\Cybersecurity_view;
use App\hosting;
use App\Hosting_plan;
use App\Apps_view;
use App\Service_view;
use App\Blogs;
use App\BlogsCategory;
use App\CloudBased;
use App\Banner;
use App\LaasSolution;
use App\Contact;
use App\Sectors;
use App\AboutSas;
use Carbon\Carbon;
use Session;
use Image;
use Storage;

class WebsiteController extends Controller
{
    public function index()
    {
        return view('website.index');
    }

    public function single_offer(Request $request, $id)
    {
        $value = Offer::find($id);
        return view('website.single_offer', compact('value'));
    }


    public function web_aboutsas(Request $request, $id)
    {
        $value = AboutSas::find($id);
        return view('website.web_aboutsas', compact('value'));
    }

    //application 
    public function webapplication_view(Request $request, $id)
    {
        $value = Application_view::find($id);
        return view('website.application_view', compact('value'));
    }

    public function webapplication()
    {

        return view('website.application');
    }

    //cybersecurity
    public function webcybersecurity_view(Request $request, $id)
    {
        $value = Cybersecurity_view::find($id);
        return view('website.cybersecurity_view', compact('value'));
    }

    public function webcybersecurity()
    {

        return view('website.cybersecurity');
    }

    // hosting
    public function webhosting()
    {
        return view('website.hosting');
    }

    public function webhosting_view(Request $request, $id)
    {
        $plan = Hosting_plan::find($id);
        return view('website.hosting_view', compact('plan'));
    }



    // web service
    public function webservice()
    {
        return view('website.service');
    }

    public function service_view(Request $request, $id)
    {
        $view = Service_view::find($id);
        return view('website.service_view', compact('view'));
    }

    // mobile apps
    public function webapps()
    {
        return view('website.apps');
    }

    public function apps_view(Request $request, $id)
    {
        $view = Apps_view::find($id);
        return view('website.apps_view', compact('view'));
    }

    // blogs
    public function webblogs()
    {
        return view('website.blogs');
    }
    public function webblogs_category(Request $request, $id)
    {
        $category = BlogsCategory::find($id);
        return view('website.blogs_category', compact('category'));
    }

    public function webblogs_view(Request $request, $id)
    {
        $value = Blogs::find($id);
        return view('website.blogs_view', compact('value'));
    }

    // cloud view
    public function cloud_based_view(Request $request, $id)
    {
        $data = CloudBased::find($id);
        return view('website.cloud_based_view', compact('data'));
    }


    public function laas_application(Request $request, $id)
    {
        $category = LaasSolution::find($id);
        return view('website.laas_application', compact('category'));
    }




    public function webcontact()
    {
        return view('website.contact');
    }
    public function webregistration()
    {
        return view('website.registration');
    }

    public function contact(Request $request)
    {

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message' => 'required',
            'g-recaptcha-response' => 'required|captcha',
        ]);
        $add = new Contact;
        $add->name = $request->name;
        $add->email = $request->email;
        $add->phone = $request->phone;
        $add->message = $request->message;


        $add->save();

        if ($add) {

            $subject = 'Product approve request';
            // $to = 'shifatnaznin11@gmail.com';
            $to = 'bizdev@sasapplication.com';
            // pass=    vD~-&!!VZfJ$
            Mail::send(
                'website.notification',
                ['content' => '', 'logo' => '', ' title' => '', 'branch_name' => ''],
                function ($message) use ($subject, $to) {
                    // $message->from('shifatnaznin11@gmail.com', 'Product approve request');
                    $message->from('bizdev@sasapplication.com', 'Product approve request');
                    $message->to($to);
                    $message->subject($subject);
                }
            );

            return back()->with('success', ' Message Send Successfull');
        }
    }
}
