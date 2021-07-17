@extends('layouts.website')

@section('content')

@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 8)

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{ asset('uploads/images/'.$data->photo) }}); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">{{$data->banner_title}}</h1>
                    <p class="text-white">{{$data->heading}}</p>

                </div>
            </div>


        </div>
    </div>
</section>
@endif
@endforeach
<section id="contacts-5" class="wide-70 b-bottom contacts-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-6 col-xl-6"
                style="background-image: url({{asset('contents/website')}}/assets/images/c.png); background-repeat: no-repeat; background-position: center; background-size: cover;">
                <div class="form-holder">
                    <div class="contact-text text-center">
                        <h3 style="color:#ffffff; padding: 10px 0px;"> Quotations | General Inquiries</h3>
                    </div>
                    {{-- <form name="contactform"> --}}

                    <form method="post" action="{{route('contact')}}" class="row contact-form"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="col-lg-12{{$errors->has('name')? ' has-error':''}}">
                            <p class="p-lg" style="color:#ffffff;">Your Name: </p>

                            <input type="text" name="name" class="form-control name" placeholder="Your Name"
                                value="{{old('name')}}">
                            @if ($errors->has('name'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('name') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="col-lg-12{{$errors->has('phone')? ' has-error':''}}">
                            <p class="p-lg">Your Phone: </p>

                            <input type="text" name="phone" class="form-control name" placeholder="Your Phone No"
                                value="{{old('phone')}}">
                            @if ($errors->has('phone'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('phone') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="col-lg-12{{$errors->has('email')? ' has-error':''}}">
                            <p class="p-lg">Your Email Address: </p>

                            <input type="text" name="email" class="form-control email" placeholder="Email Address"
                                value="{{old('email')}}">
                            @if ($errors->has('email'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div id="input-message"
                            class="col-lg-12 input-message{{$errors->has('message')? ' has-error':''}}">
                            <p class="p-lg">Message: </p>

                            <textarea class="form-control" name="message" rows="6"
                                placeholder="Message">{{old('message')}}</textarea>
                            @if ($errors->has('message'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('message') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="col-lg-12{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">

                            {{-- <div class="g-recaptcha" data-sitekey="6LcwFtIaAAAAAEleU9NVasq342Tk2u8drb5B0ENE"></div> --}}
                            {!! app('captcha')->display() !!}
                            @if ($errors->has('g-recaptcha-response'))
                            <span class="help-block">
                                <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                            </span>
                            @endif
                        </div>
                        <!-- Contact Form Button -->
                        <div class="col-lg-12 mt-15 form-btn text-right">
                            <button type="submit" class="btn btn-blue blue-hover submit">Submit</button>
                        </div>

                        <!-- Contact Form Message -->
                        <div class="col-lg-12 contact-form-msg">
                            <span class="loading"></span>
                        </div>

                    </form>
                </div>
            </div>
            <div class="col-lg-6 col-xl-6">
                <div class="contact-text text-center">
                    <h3 style="padding: 10px 0px;">Corporate Office</h3>
                </div>
                <div class="address" style="padding: 10px 30px;">
                    @php
                    $item = App\Address::orderBy('id', 'ASC')->take(1)->get();
                    @endphp
                    @foreach ($item as $data)
                    <div class="adress-text">

                        <h5><i class="fa fa-home" aria-hidden="true"></i> Address:</h5>
                        <p>{!!$data->address!!}</p>
                    </div>

                    <div class="adress-text">
                        <h5><i class="fa fa-phone" aria-hidden="true"></i> Contact Number:</h5>
                        <p>{{$data->phone}}</p>
                    </div>

                    <div class="adress-text">
                        <h5><i class="fa fa-envelope-o" aria-hidden="true"></i> Email:</h5>
                        <p>{{$data->email}}</p>
                    </div>

                    @endforeach
                </div>

                <div>
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3058.851685936012!2d-74.95465778461842!3d39.944707079422805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c135f2884c5421%3A0x399854f6efef958b!2sRegus%20-%20New%20Jersey%2C%20Mt.%20Laurel%20-%20Mt%20Laurel!5e0!3m2!1sen!2sbd!4v1620679785321!5m2!1sen!2sbd"
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                </div>

            </div>
        </div>


    </div> <!-- End container -->
</section>


@endsection