@extends('layouts.website')

@section('content')

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image:url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">
                        {{$category->name}}
                    </h1>


                </div>
            </div>


        </div>
    </div>
</section>

<section id="contacts-5" class="wide-70 b-bottom contacts-section application division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">
                    <h3 class="h2-xs" style="color:#01476d; font-size:40px;">{{$category->name}}</h3>
                    <p>{!!$category->details!!}</p>
                </div>
            </div>
        </div>
        @php
        $products=$category->appsCategory()->paginate(9);
        @endphp

        @forelse ($products as $data)
        {{-- @if ($data->id % 2== 1) --}}
        <div class="row no-gutters bg-lightgrey">
            <div class="col-lg-6 col-xl-6"
                style="background-image: url({{ asset('uploads/images/'.$data->photo) }}); background-repeat: no-repeat; background-position: center; background-size: cover;">

            </div>
            <div class="col-lg-6 col-xl-6 app-page" style="padding: 50px 30px;">
                <div class="contact-text">
                    <h3 style="padding: 20px 0px 10px 0px;">{{$data->heading}}</h3>
                </div>
                <div class="app-design">
                    <div class="app-design-text">
                        <p>{!!$data->sub_heading!!} </p>
                    </div>
                    <div class="app-design-text-two text-center">
                        <div class="row">
                            <div class="col-6 text-right">
                                <a href="{{url('/webapplication_view',$data->id)}}">Read More</a>
                            </div>
                            <div class="col-6 text-left">
                                <a href="{{$data->link}}">Visit Demo</a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        {{-- @endif
        @if ($data->id % 2 == 0) --}}
        {{-- <div class="row no-gutters bg-lightgrey">
            <div class="col-lg-6 col-xl-6 app-page" style="padding: 50px 30px;">
                <div class="contact-text">
                    <h3 style="padding: 20px 0px 10px 0px;">{{$data->heading}}</h3>
    </div>
    <div class="app-design">
        <div class="app-design-text">
            <p>{!!$data->sub_heading!!} </p>
        </div>
        <div class="app-design-text-two text-center">
            <div class="row">
                <div class="col-6 text-right">
                    <a href="{{url('/webapplication_view',$data->id)}}">Read More</a>
                </div>
                <div class="col-6 text-left">
                    <a href="{{$data->link}}">Visit Demo</a>
                </div>
            </div>


        </div>
    </div>
    </div>


    <div class="col-lg-6 col-xl-6"
        style="background-image: url({{ asset('uploads/images/'.$data->photo) }}); background-repeat: no-repeat; background-position: center; background-size: cover;">

    </div>
    </div> --}}
    {{-- @endif --}}

    @endforeach

    </div>
</section>


@endsection