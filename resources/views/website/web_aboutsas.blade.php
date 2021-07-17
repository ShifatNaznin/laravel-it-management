@extends('layouts.website')

@section('content')


<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">
           
            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">{{$value->heading}}</h1>


                </div>
            </div>


        </div>
    </div>
</section>

<section id="contacts-5" class="wide-70 b-bottom contacts-section division">
    <div class="container">
        <div class="row text-center">
            <p>
                {!!$value->sub_heading!!}
            </p>
        </div>

     
    </div>
</section>
@endsection