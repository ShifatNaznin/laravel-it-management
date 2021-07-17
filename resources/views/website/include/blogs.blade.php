<section id="blog-1" class="bg-lightgrey wide-60 blog-section division">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="section-title mb-80">

                @php
                $item = App\Header::orderBy('id', 'ASC')->get();
                @endphp
                @foreach ($item as $data)
                @if ($data->id == 9)
                <h2 class="h2-xs">{{$data->heading}}</h2>

                <!-- Text -->
                <p class="p-xl">{!!$data->sub_heading!!}
                </p>
                @endif
                @endforeach
            </div>
        </div>
    </div>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme reviews-holder main-read">

                    @php
                    $item = App\Blogs::orderBy('id', 'DESC')->take(9)->get();
                    @endphp
                    @foreach ($item as $data)
                    <div class="col-md-12 col-lg-12">
                        <div class="blog-post mb-40 wow fadeInUp" data-wow-delay="0.6s">

                            <!-- BLOG POST IMAGE -->
                            <div class="blog-post-img">
                                <img class="img-fluid"
                                    src="{{ asset('uploads/images/'.$data->photo) }}"
                                    alt="blog-post-image" />
                            </div>

                            <!-- BLOG POST TEXT -->
                            <div class="blog-post-txt">

                                <!-- Post Author -->
                                <p class="post-author">{{$data->heading}}</p>

                                <!-- Post Link -->
                                <!--<h5 class="h5-sm">-->
                                <!--    <a href="#">{!!Str::words($data->sub_heading,17)!!}</a>-->
                                <!--</h5>-->

                                <div class="read-btn">
                                    <div class="row no-gutters">
                                        <div class="col-6">
                                            <p class="post-tag"><a href="{{url('/webblogs_view',$data->id)}}" class="read-more">Read
                                                    More</a></p>
                                        </div>
                                        <div class="col-6 text-right">
                                            <p class="post-tag"><a href="{{route('webblogs')}}" class="read-more">See All</a>
                                            </p>
                                        </div>
                                    </div>

                                </div>


                            </div>

                        </div>
                    </div>
                   @endforeach




                </div>
            </div>
        </div>

    </div>
</section>

