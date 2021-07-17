@extends('layouts.website')

@section('content')

@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 7)

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{ asset('uploads/images/'.$data->photo) }}); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">{{$data->banner_title}}</h1>


                </div>
            </div>


        </div>
    </div>
</section>
@endif
@endforeach
<section id="contacts-5" class="wide-70 b-bottom contacts-section division">
    <div class="container">

        <div class="col-lg-12"
            style="background-image: url({{asset('contents/website')}}/assets/images/c.png); background-repeat: no-repeat; background-position: center; background-size: cover;">
            <div class="form-holder" style="padding: 60px 0px 0px 0px;">

                <form action="{{url('checkout-form')}}" class="row contact-form check-out"
                    method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">


                                <div id="input-name" class="col-lg-12{{$errors->has('first_name')? ' has-error':''}}">
                                    <p class="p-lg">First Name: </p>

                                    <input type="text" name="first_name" class="form-control name" placeholder="">

                                    @if ($errors->has('first_name'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('first_name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div id="input-name" class="col-lg-12{{$errors->has('last_name')? ' has-error':''}}">
                                    <p class="p-lg">Last Name: </p>

                                    <input type="text" name="last_name" class="form-control name" placeholder="">

                                    @if ($errors->has('last_name'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('last_name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div id="input-name" class="col-lg-12{{$errors->has('dob')? ' has-error':''}}">
                                    <p class="p-lg">Date Of Birth: </p>

                                    <input type="text" name="dob" class="form-control name" placeholder="">
                                    @if ($errors->has('dob'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('dob') }}</strong>
                                    </span>
                                    @endif
                                </div>



                                <div id="input-email" class="col-lg-12{{$errors->has('email')? ' has-error':''}}">
                                    <p class="p-lg">Your Email Address: </p>

                                    <input type="text" name="email" class="form-control email" placeholder="">
                                    @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div id="input-name" class="col-lg-12{{$errors->has('company_name')? ' has-error':''}}">
                                    <p class="p-lg">Company Name: </p>

                                    <input type="text" name="company_name" class="form-control name" placeholder="">
                                    @if ($errors->has('company_name'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('company_name') }}</strong>
                                    </span>
                                    @endif
                                </div>

                            </div>
                            <div class="col-lg-4 col-md-4">

                                <div id="input-name" class="col-lg-12{{$errors->has('phone_one')? ' has-error':''}}">
                                    <p class="p-lg">Cell Phone: </p>

                                    <input type="text" name="phone_one" class="form-control name" placeholder="">
                                    @if ($errors->has('phone_one'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('phone_one') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div id="input-name" class="col-lg-12{{$errors->has('phone_two')? ' has-error':''}}">
                                    <p class="p-lg">Alternate Phone: </p>

                                    <input type="text" name="phone_two" class="form-control name" placeholder="">

                                    @if ($errors->has('phone_two'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('phone_two') }}</strong>
                                    </span>
                                    @endif
                                </div>


                                <div id="input-name" class="col-lg-12{{$errors->has('city')? ' has-error':''}}">
                                    <p class="p-lg">City: </p>

                                    <input type="text" name="city" class="form-control name" placeholder="">
                                    @if ($errors->has('city'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('city') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div id="input-name" class="col-lg-12{{$errors->has('country')? ' has-error':''}}">
                                    <p class="p-lg">Country: </p>

                                    <input type="text" name="country" class="form-control name" placeholder="">
                                    @if ($errors->has('country'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('country') }}</strong>
                                    </span>
                                    @endif
                                </div>
                              
                                <div id="input-name" class="col-lg-12{{$errors->has('industry')? ' has-error':''}}">
                                    <p class="p-lg">Industry | Vertical: </p>

                                    <input type="text" name="industry" class="form-control name" placeholder="">
                                    @if ($errors->has('industry'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('industry') }}</strong>
                                    </span>
                                    @endif
                                </div>





                            </div>
                            <div class="col-lg-4 col-md-4">

                                <div class="col-lg-12{{$errors->has('state')? ' has-error':''}}">
                                    <p class="p-lg">States: </p>

                                    <input type="text" name="state" class="form-control" placeholder="">

                                    @if ($errors->has('state'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('state') }}</strong>
                                    </span>
                                    @endif
                                </div>

                                <div class="col-lg-12 input-message{{$errors->has('zip_code')? ' has-error':''}}">
                                    <p class="p-lg">Zip Code: </p>

                                    <input type="text" name="zip_code" class="form-control" placeholder="">

                                    @if ($errors->has('zip_code'))
                                    <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('zip_code') }}</strong>
                                    </span>
                                    @endif
                                </div>

                                <div id="input-message"
                                    class="col-lg-12 input-message{{$errors->has('message')? ' has-error':''}}">
                                    <p class="p-lg">Adddress: </p>

                                    <textarea class="form-control message" name="message" rows="6"
                                        placeholder=""></textarea>

                                    @if ($errors->has('message'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('message') }}</strong>
                                    </span>
                                    @endif
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="container container3">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-4">
                                        <h4>Cart
                                        </h4>
                                    </div>
                                    <div class="col-2"></div>
                                    <div class="col-2">
                                        <h4><span class="price" style="color:black">Quantity</span>
                                        </h4>
                                    </div>
                                    <div class="col-4">
                                        <h4><span class="price" style="color:black"><i class="fa fa-shopping-cart"></i>
                                                <b> {{Cart::content()->count()}}</b></span>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            {{-- <p> --}}
                            @foreach (Cart::content() as $item)
                            {{-- <a href="#" style="    display: inline-flex;"><span
                                        style="color: #4caf50; font-weight: bold;">{{$item->name}} </span> <span
                                style="padding: 0px 10px">x</span> <span
                                style="color:red;font-weight: bold;">{{$item->qty}}</span> </a>
                            <span class="price">$ {{$item->price * $item->qty}}</span> --}}
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-4"><span style="color: #4caf50; font-weight: bold;">{{$item->name}}
                                        </span> </div>
                                    <div class="col-2" style="visibility: hidden;">{{$item->options->category_id}}</div>
                                    
                                    <div class="col-2"><span style="color:red;font-weight: bold;">{{$item->qty}}</span>
                                    </div>
                                    <div class="col-4"><span class="price">${{$item->price * $item->qty}}</span> </div>
                                </div>
                            </div>
                         
                            @endforeach
                            <hr>
                            <p>Total <span class="price" style="color:black"><b>${{Cart::total()}}</b></span></p>
                        </div>
                    </div>


                    <div class="col-lg-12 mt-15 form-btn text-center" style="padding: 10px 0px;">
                        <button type="submit" class="btn btn-blue blue-hover submit">Submit</button>
                    </div>
                </form>
            </div>
           
        </div>
    </div>


    </div> <!-- End container -->
</section>


@endsection