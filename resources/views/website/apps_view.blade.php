@extends('layouts.website')

@section('content')



<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{ asset('contents/website')}}/assets/images/bb.png); height: 400px;">


    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    @if (!empty($view->id))


           
                    @php
                    $apps = DB::table('apps')->where('id',$view->id)->first();
                    @endphp
                    <h1 class="text-black" style="color: #ffffff;">{{$apps->heading ?? Null}}</h1>

                </div>
            </div>

            <div class="col-md-5 col-lg-6 m-top text-right">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <img src="{{ asset('uploads/images/'.$apps->photo) }}" alt="" style="height: 245px;">
                </div>
            </div>
        </div>
    </div>
</section>


<section id="pricing-2" class="wide-60 pricing-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10 text-left">
                <div class="section-title section-title-two mb-80">

                    <h3 class="h2-xs" style="color:#01476d; font-size:40px; text-align: left !important;">
                        {{$apps->heading ?? Null}}</h3>
                    <p style="text-align: left !important;">{!!$apps->sub_heading ?? Null!!}</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">



                <div class="row pricing-row">
                    @php
                    $products=DB::table('apps_views')->where('apps_id',$view->id)->get();
                    @endphp

                    @forelse ($products as $data)
              
                    <div class="col-md-4">
                        <div class="pricing-table wow fadeInLeft" data-wow-delay="0.4s">

                            <!-- Plan Price  -->
                            <div class="pricing-plan">
                                <h4 class="h4-sm-two" style="color:#ffc400;font-size:30px;">{{$data->name}}</h4>
                                <sup class="blue">$</sup>
                                <span class="price blue">{{number_format($data->price)}}</span>
                            </div>

                            <!-- Pricing Plan Features  -->
                            <ul class="features">
                                <li>{!!$data->details!!}</li>

                            </ul>

                            <!-- Pricing Table Button  -->
                            <a target="_blank" href="{{$data->link}}"
                                class="btn cartadd btn-tra-grey-two blue-hover">Register Now</a>

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