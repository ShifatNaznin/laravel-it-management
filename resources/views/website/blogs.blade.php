@extends('layouts.website')

@section('content')


@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 6)
<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image:url({{ asset('uploads/images/'.$data->photo) }}); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">
                        {{$data->banner_title}}
                    </h1>

                    <p class="text-white">{{$data->heading}}</p>

                </div>
            </div>


        </div>
    </div>
</section>
@endif
@endforeach
<section id="blog-1" class="bg-lightgrey wide-60 blog-section division main-read">

    <div class="container">

        <div class="row">
            @include('website.include.web_blogmenu')
            <div class="col-lg-9">
                <div class="row">
                    @php
                    $item = App\Blogs::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    <div class="col-md-4 col-lg-4">
                        <div class="blog-post mb-40 wow fadeInUp" data-wow-delay="0.6s">


                            <div class="blog-post-img">
                                <img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}"
                                    alt="blog-post-image" />
                            </div>


                            <div class="blog-post-txt">

                                <h5 class="h5-sm" style="font-style: normal;">
                                    <a href="{{url('/webblogs_view',$data->id)}}">{{$data->heading}}
                                    </a>
                                </h5>
                                <p class="post-author"></p>
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
