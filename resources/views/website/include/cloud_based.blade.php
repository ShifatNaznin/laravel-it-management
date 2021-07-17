<section id="features-1" class="wide-60 features-section division main-read">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">
                    @php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 6)
                    <h2 class="h2-xs deepblue-color">{{$data->heading}}
                    </h2>


                    <p class="p-xl">{!!$data->sub_heading!!}
                    </p>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>

        <!-- FEATURES-1 HOLDER -->
        <div class="fbox-1-holder pc-40 text-center">
            <div class="row">
                @php
                $item = App\CloudBased::orderBy('id', 'ASC')->get();
                @endphp
                @foreach ($item as $data)
                @if ($data->id == 1)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-one">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">

                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>
                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{ asset('uploads/images/'.$data->icon) }}" alt="">
                            </div>
                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif

                @if ($data->id == 2)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-two">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">

                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>
                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{ asset('uploads/images/'.$data->icon) }}" alt="">
                            </div>
                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 3)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-three">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">

                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>
                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{ asset('uploads/images/'.$data->icon) }}" alt="">
                            </div>
                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 4)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-four">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l4.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 5)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-five">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l5.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 6)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-six">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l6.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 7)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-seven">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l7.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id == 8)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-eight">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l8.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @if ($data->id > 8)
                <a href="{{url('/cloud_based_view',$data->id)}}">
                    <div class="col-md-6 color-hover-six">
                        <div class="fbox-1 pc-25 mb-40 wow icon-css fadeInUp" data-wow-delay="0.4s">


                            <h5 class="h5-lg deepblue-color">{{$data->heading}}</h5>


                            <div class="fbox-1-ico grey-color ico-75"> <img
                                    src="{{asset('contents/website')}}/assets/images/icons/l6.png" alt="">
                            </div>


                            <p class="grey-color">{!!substr($data->sub_heading, 0, 100)!!}....<a
                                    href="{{url('/cloud_based_view',$data->id)}}" class="read-more">ReadMore</a>
                            </p>

                        </div>
                    </div>
                </a>
                @endif
                @endforeach
            </div>
        </div>
    </div>
</section>