@extends('layouts.website')

@section('content')

@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $value)
@if ($value->id == 2)

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{ asset('uploads/images/'.$value->photo) }}); height: 400px;">


    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    @php
                    $item = $plan->hostingPlan()->take(1)->get();
                    @endphp

                    @foreach ($item as $data)
                    <h1 class="text-black" style="color: #ffffff;">{{$data->hostingCategory->heading}}</h1>
                    @endforeach
                </div>
            </div>


        </div>
    </div>
</section>

@endif
@endforeach

<section id="pricing-2" class="wide-60 pricing-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10">
                <div class="text-left mb-80">
                    @php
                    $item = $plan->hostingPlan()->take(1)->get();
                    @endphp

                    @foreach ($item as $data)
                    <h3 class="h2-xs" style="color:#01476d; font-size:40px;">Our Plans For
                        {{$data->hostingCategory->heading}}</h3>
                    @endforeach
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">



                <div class="row pricing-row">
                    @php
                    $products=$plan->hostingPlan()->paginate(100);
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
                            <a href="{{url('single-cartadd-hosting/'.$data->id)}}" class="btn btn-tra-grey-two blue-hover"
                                id="cartItems">Order
                                Now!</a>

                        </div>
                    </div>
                    @empty
                    <div class="col-md-12 col-lg-12 text-center">
                        <div class="alert alert-danger"><strong>No Plan Foud</strong></div>
                    </div>
                    @endforelse

                </div>


            </div>
        </div>


    </div>
</section>
@endsection