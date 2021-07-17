@extends('layouts.website')

@section('content')
@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 2)


<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image:url({{ asset('uploads/images/'.$data->photo) }}); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">

                        {{$data->banner_title}}

                    </h1>



                </div>
            </div>


        </div>
    </div>
</section>

<section id="pricing-2" class="wide-60 pricing-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10">
                <div class="mb-80 text-left">

                    <h3 class="h2-xs" style="color:#01476d; font-size:40px;">{{$data->heading}}</h3>
                    <p>{!!$data->sub_heading!!}</p>

                </div>
            </div>

        </div>

        @endif
        @endforeach
        <div class="row">
            <div class="col-lg-12">


                <!-- PRICING TABLES	-->
                <div class="row pricing-row">
                    @php
                    $item = App\hosting::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    <div class="col-md-4">
                        <div class="pricing-table wow fadeInLeft" data-wow-delay="0.4s">

                            <div class="pricing-plan">
                                <h4 class="h4-sm-two" style="color:#ffc400; font-size: 32px;">{{$data->heading}}</h4>
                                <sup class="blue">$</sup>
                                <span class="price blue">{{$data->price}}</span>
                                <p>{!!$data->sub_heading!!}</p>
                            </div>


                            <ul class="features">
                                <li>{!!$data->details!!}</li>

                            </ul>

                            <a href="{{url('/webhosting_view',$data->id)}}" class="btn btn-tra-grey-two blue-hover">View
                                Details</a>

                        </div>
                    </div>

                    @endforeach
                </div>

            </div>
        </div>


    </div>
</section>


@endsection
