<section id="hero-9" class="bg-scroll hero-section division">
    <div class="container">
        <div class="row d-flex align-items-center m-row">


            <!-- HERO IMAGE -->
            <div class="col-md-5 col-lg-6 m-bottom">
                <div class="hero-9-img wow fadeInUp" data-wow-delay="0.4s">
                    <img class="img-fluid" src="{{asset('contents/website')}}/assets/images/t3-hero-img.svg"
                        alt="hero-image">
                </div>
            </div>

            @php
            $item = App\Banner::orderBy('id', 'ASC')->take(1)->get();
            @endphp
            @foreach ($item as $data)
            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">

                    {{-- <strong>Fully Managed</strong> --}}
                <h1 class="text-black">{{$data->heading}}</h1>
                    <div class="about-us-content-wrap" style="text-transform: capitalize;">

                        <ul class="list-unstyled tech-feature-list">
                            <li class="py-1">
                                {!!$data->sub_heading!!}
                            </li>
                            

                        </ul>

                        <div class="action-btns mt-4">
                            <a href="{{route('webapplication')}}" class="btn secondary-solid-btn-two mr-3">Get Started Now</a>
                            <a href="{{route('webcontact')}}" class="btn secondary-solid-btn">Contact Us</a>
                        </div>
                    </div>


                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>