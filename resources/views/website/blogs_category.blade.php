@extends('layouts.website')

@section('content')

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image:url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">
                        All Blogs
                    </h1>



                </div>
            </div>


        </div>
    </div>
</section>

<section id="blog-1" class="bg-lightgrey wide-60 blog-section division main-read">

    <div class="container">

        <div class="row">
            @include('website.include.web_blogmenu')
            <div class="col-lg-9">
                <div class="row">
                    @php
                    $products=$category->blogsPlan()->paginate(100);
                    @endphp

                    @forelse ($products as $data)
                    <div class="col-md-4 col-lg-4">
                        <div class="blog-post mb-40 wow fadeInUp" data-wow-delay="0.6s">


                            <div class="blog-post-img">
                                <img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}"
                                    alt="blog-post-image" />
                            </div>


                            <div class="blog-post-txt">

                                <h5 class="h5-sm">
                                    <a href="#">{{$data->heading}}
                                    </a>
                                </h5>
                                <p class="post-author">{!!Str::words($data->sub_heading,17)!!}</p>
                                <p class="post-tag"><a href="{{url('/webblogs_view',$data->id)}}" class="read-more">Read
                                        More</a>
                                </p>

                            </div>

                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>

    </div>
</section>


@endsection