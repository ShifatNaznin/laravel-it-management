@extends('layouts.website')

@section('content')



<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{asset('contents/website')}}/assets/images/bb.png); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">
               
        @if (!empty($value->id))


           
        @php
        $application = DB::table('applications')->where('id',$value->id)->first();
        @endphp

          
            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">{{$application->heading ?? Null}}</h1>
                </div>
            </div>
            <div class="col-md-5 col-lg-6 m-top text-right">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <img src="{{ asset('uploads/images/'.$application->photo) }}" alt=""
                        style="height: 245px;">
                </div>
            </div>


        </div>
    </div>
</section>
<section id="features-5" class="wide-50 features-section division">
    <div class="container">


        <!-- SECTION TITLE -->
        <div class="row">
            <div class="col-lg-10">
                <div class="text-left section-title-two mb-80">


                    <h2 class="h2-xs deepblue-color">Awesome Apps Features</h2>

                    <!-- Text -->
                    <p class="p-xl">CORE FEATURES
                    </p>

                </div>
            </div>
        </div>


        <!-- FEATURES-5 HOLDER -->
        <div class="fbox-5-holder text-center">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="row">



                        <div class="col-sm-6 col-md-3">
                            <div class="fbox-5 mb-50 wow fadeInUp" data-wow-delay="0.6s">


                                <div class="fbox-5-ico grey-color ico-60"><span class="flaticon-pantone"></span></div>


                                <h5 class="h5-xs deepblue-color">Robust Design</h5>

                            </div>
                        </div>


                        <!-- FEATURE BOX #3 -->
                        <div class="col-sm-6 col-md-3">
                            <div class="fbox-5 mb-50 wow fadeInUp" data-wow-delay="0.8s">


                                <div class="fbox-5-ico grey-color ico-60"><span class="flaticon-control"></span></div>


                                <h5 class="h5-xs deepblue-color">Excellent Support</h5>

                            </div>
                        </div>


                        <!-- FEATURE BOX #4 -->
                        <div class="col-sm-6 col-md-3">
                            <div class="fbox-5 mb-50 wow fadeInUp" data-wow-delay="1s">


                                <div class="fbox-5-ico grey-color ico-60"><span class="flaticon-apps"></span></div>


                                <h5 class="h5-xs deepblue-color">Fully Responsive</h5>

                            </div>
                        </div>


                        <!-- FEATURE BOX #6 -->
                        <div class="col-sm-6 col-md-3">
                            <div class="fbox-5 mb-50 wow fadeInUp" data-wow-delay="1.4s">


                                <div class="fbox-5-ico grey-color ico-60"><span class="flaticon-gallery"></span></div>


                                <h5 class="h5-xs deepblue-color">Constant Updates</h5>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


    </div>
</section>

<section id="pricing-2" class="wide-60 pricing-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10">
                <div class="text-left mb-80">

                    <h3 class="h2-xs" style="color:#01476d; font-size:30px;">{{$application->heading?? Null}}
                    </h3>
                   
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">


                <!-- PRICING TABLES	-->
                <div class="row pricing-row">
                    @php
                    $products=DB::table('application_views')->where('application_id',$value->id)->get();
                    @endphp

                    @forelse ($products as $data)
                    <div class="col-md-4">
                        <div class="pricing-table wow fadeInLeft" data-wow-delay="0.4s">

                            <!-- Plan Price  -->
                            <div class="pricing-plan">
                                <h4 class="h4-sm-two" style="color:#ffc400; font-size:30px;">{{$data->name}}</h4>
                                <sup class="blue">$</sup>
                                <span class="price blue">{{number_format($data->price)}}</span>
                                <sup class="validity" style="color:#ffc400;">{{$data->duration}}</sup>
                            </div>

                            <!-- Pricing Plan Features  -->
                            <ul class="features">
                                <li>{!!$data->details!!}</li>

                            </ul>

                            <!-- Pricing Table Button  -->
                            <a href="{{url('single-cartadd-application/'.$data->id)}}" class="btn btn-tra-grey-two blue-hover"
                                id="cartItems">Order Now!</a>

                        </div>
                    </div>
                    @empty
                    <div class="col-md-12 col-lg-12 text-center">
                        <div class="alert alert-danger"><strong>No Plan Foud</strong></div>
                    </div>
                    @endforelse
                    @else
                    <div class="col-md-12 col-lg-12 text-center">
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>No Data Foud!!</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                        
                    </div>
                    @endif
                </div>

            </div>
        </div>

    </div>
</section>
@endsection