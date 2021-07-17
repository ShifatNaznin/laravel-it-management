@extends('layouts.website')

@section('content')


<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                <h1 class="text-black" style="color: #ffffff;">{{$data->heading}}</h1>


                </div>
            </div>


        </div>
    </div>
</section>

<section id="content-5" class="wide-cloud content-section division">
    <div class="container">


        <div id="c5-bottom">
            <div class="row d-flex align-items-center m-row">


                <div class="col-md-5 col-lg-6 m-bottom">
                    <div class="img-block left-column pc-25 mb-40 wow fadeInRight" data-wow-delay="0.4s">
                        <img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}" alt="content-image" style="margin: 90px 0px 0px 0px;">
                    </div>
                </div>


                <div class="col-md-7 col-lg-6 m-top">
                    <div class="txt-block right-column pc-35 mb-40 wow fadeInLeft" data-wow-delay="0.6s">

                        <p class="p-md grey-color">{!!$data->sub_heading!!}
                        </p>


                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
@endsection