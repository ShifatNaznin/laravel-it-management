<section id="content-10" class="bg-deepblue pb-60 content-section">
    <div class="pt-100 bg-inner bg-01 division">
        <div class="container white-color">
            <div class="row d-flex align-items-center m-row">


                <!-- IMAGE BLOCK -->
                <div class="col-md-5 col-lg-6 m-bottom">
                    <div class="img-block left-column pc-25 mb-40 wow fadeInRight" data-wow-delay="0.4s">
                        <img class="img-fluid" src="{{asset('contents/website')}}/assets/images/image-03.png"
                            alt="content-image">
                    </div>
                </div>


                <!-- TEXT BLOCK -->
                <div class="col-md-7 col-lg-6 m-top">
                    <div class="txt-block right-column pc-35 mb-40 wow fadeInLeft" data-wow-delay="0.6s">

                        @php
                        $item = App\AboutSas::orderBy('id', 'ASC')->get();
                        @endphp
                        @foreach ($item as $data)
                        @if ($data->id == 1)


                        <h3 class="h3-xl">{{$data->heading}}</h3>

                        <p class="p-md">{!!substr($data->sub_heading, 0, 80)!!}..<a href="{{url('/web_aboutsas',$data->id)}}"
                                style="color: #ffcb01;">ReadMore</a>
                        </p>
                        @endif
                        @if ($data->id == 2)
                        <h5>{{$data->heading}}</h5>

                        <p>{!!substr($data->sub_heading, 0, 80)!!}..<a href="{{url('/web_aboutsas',$data->id)}}" style="color: #ffcb01;">ReadMore</a></p>
                            @endif
                        @endforeach
                    </div>
                </div>

            </div>
        </div>
    </div> <!-- End Inner Background -->
</section>