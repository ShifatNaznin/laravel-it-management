@extends('layouts.website')

@section('content')


<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">Blogs Details</h1>


                </div>
            </div>


        </div>
    </div>
</section>

<section id="single-post" class="wide-80 blog-page-section division">
    <div class="container">
         <div class="row">
             <div class="col-lg-10 col-xl-8 offset-lg-1 offset-xl-2">
                 <div class="post-content">
                 <h3 class="h3-xs">{{$value->heading}}</h3>
                     <div class="blog-post-img mt-50 mb-50">
                        <img class="img-fluid" src="{{ asset('uploads/images/'.$value->photo) }}" alt="blog-post-image" />	
                    </div>
                    <div class="single-post-txt">	
                        <h6 class="p-md">
                        <i class="fa fa-user" aria-hidden="true"></i> By : {{$value->author}}
                        </h6>
                    </div>
                    <div class="single-post-txt">	
                        <p class="p-md">{!!$value->sub_heading!!}
                        </p>
                    </div>
                </div>
             </div>
         </div> 
    </div> 
</section>
@endsection