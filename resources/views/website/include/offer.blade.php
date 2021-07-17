<section id="features-3" class="wide-60 features-section division">
    <div class="container">



        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">
                    @php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 1)

                    <h2 class="h2-xs txt-700 deepblue-color">{{$data->heading}}</h2>
                    @endif
                    @endforeach


                </div>
            </div>
        </div>


        <!-- FEATURES-3 HOLDER -->
        <div class="fbox-3-holder pc-30 main-read">
            <div class="row">
                @php
                $item = App\Offer::orderBy('id', 'ASC')->get();
                @endphp
                @foreach ($item as $data)
                @if ($data->id == 1)


                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="0.4s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-settings"></span></div>


                        <div class="fbox-3-txt">


                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a></h5>



                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p>
                            <a href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>


                        </div>

                    </div>
                </div>
                @endif

                @if ($data->id == 2)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="0.6s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-data"></span></div>


                        <div class="fbox-3-txt">


                            <h5 class="h5-sm txt-700 deepblue-color"> <a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a></h5>


                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>


                        </div>

                    </div>
                </div>
                @endif

                @if ($data->id == 3)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="0.8s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-internet"></span></div>


                        <div class="fbox-3-txt">


                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a></h5>
                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!} </p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>


                        </div>

                    </div>
                </div>
                @endif

                @if ($data->id == 4)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="1s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-gallery"></span></div>


                        <div class="fbox-3-txt">
                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a></h5>
                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>

                        </div>

                    </div>
                </div>

                @endif
                @if ($data->id == 5)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="1.2s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-notification"></span>
                        </div>
                        <div class="fbox-3-txt">


                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a></h5>


                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>


                        </div>

                    </div>
                </div>
                @endif

                @if ($data->id == 6)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="1.4s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-list"></span></div>


                        <div class="fbox-3-txt">
                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a>
                            </h5>


                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>


                        </div>

                    </div>
                </div>
                @endif
                @if ($data->id > 6)
                <div class="col-md-6">
                    <div class="fbox-3 pc-25 mb-40 wow fadeInUp" data-wow-delay="1.4s">


                        <div class="fbox-3-ico grey-color ico-65"><span class="flaticon-list"></span></div>


                        <div class="fbox-3-txt">
                            <h5 class="h5-sm txt-700 deepblue-color"><a
                                    href="{{url('/single_offer',$data->id)}}">{{$data->heading}}</a>
                            </h5>


                            <p class="grey-color">{!!Str::limit($data->sub_heading ,50,'(...)')!!}</p><a
                                href="{{url('/single_offer',$data->id)}}" class="read-more">ReadMore</a>

                        </div>

                    </div>
                </div>
                @endif
                @endforeach

            </div>
        </div> <!-- END FEATURES-3 HOLDER -->


    </div>
</section>