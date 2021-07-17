@extends('layouts.website')

@section('content')


@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 3)
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
<section id="contacts-5" class="wide-70 b-bottom contacts-section application division">
    <div class="container">
        @php
        $item = App\Service::orderBy('id', 'ASC')->get();
        @endphp
        @foreach ($item as $data)
        @if ($data->id % 2== 1)
        <div class="row no-gutters bg-lightgrey">
            <div class="col-lg-6 col-xl-6 image-property"
                style="background-image: url({{ asset('uploads/images/'.$data->photo) }});">

            </div>
            <div class="col-lg-6 col-xl-6 app-page  image-details">
                <div class="contact-text">
                    <h3 style="padding: 20px 0px 10px 0px;">{{$data->heading}}</h3>
                </div>
                <div class="app-design">
                    <div class="app-design-text">
                        <p>{!!$data->sub_heading!!} </p>
                        <p>{!!$data->feature!!} </p>
                    </div>
                    <div class="app-design-text-two text-center">
                        <div class="row">
                            <div class="col-12 text-center">
                                <a href="{{url('/webservice_view',$data->id)}}">Read More</a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        @endif
        @if ($data->id % 2 == 0)
        <div class="row no-gutters bg-lightgrey">
            <div class="col-lg-6 col-xl-6 app-page  image-details">
                <div class="contact-text">
                    <h3 style="padding: 20px 0px 10px 0px;">{{$data->heading}}</h3>
                </div>
                <div class="app-design">
                    <div class="app-design-text">
                        <p>{!!$data->sub_heading!!} </p>
                        <p>{!!$data->feature!!} </p>
                    </div>
                    <div class="app-design-text-two text-center">
                        <div class="row">
                            <div class="col-12 text-center">
                                <a href="{{url('/webservice_view',$data->id)}}">Read More</a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


            <div class="col-lg-6 col-xl-6 image-property"
                style="background-image: url({{ asset('uploads/images/'.$data->photo) }});">

            </div>
        </div>
        @endif

        @endforeach

    </div>
</section>


@endsection