<section id="reviews-2" class="wide-100 reviews-section division"
    style="background-image: url({{asset('contents/website')}}/assets/images/b1.png);">
    <div class="container">


        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">

                    @php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 5)
                    <h2 class="h2-xs">{{$data->heading}}</h2>

                    <!-- Text -->
                    <p class="p-xl">{!!$data->sub_heading!!}
                    </p>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>


        <!-- TESTIMONIALS CONTENT -->
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme reviews-holder">

                    @php
                    $item = App\Different::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)

                    <div class="review-2">

                        <h5 class="h5-md">{{$data->name}}</h5>


                        <div class="review-2-txt">

                            <h5 class="h5-xs">- Start at <span style="color: #01476d;">${{$data->price}}</span> / Month
                            </h5>
                        </div>
                        <div class="action-btns mt-4 banner-cls">
                            <a href="{{route('webcontact')}}"
                                class="btn secondary-solid-btn-two mr-3" id="cartItems">Contact Us</a>
                        </div>

                    </div>
                    @endforeach
                </div>
            </div>
        </div>


    </div>
</section>