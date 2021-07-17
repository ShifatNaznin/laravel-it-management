<section id="reviews-2" class="bg-lightgrey wide-100 reviews-section division">
    <div class="container">


        <!-- SECTION TITLE -->
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">
                    @php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 11)
                    <h2 class="h2-xs">{{$data->heading}}</h2>
                    @endif
                    @endforeach

                </div>
            </div>
        </div>


        <!-- TESTIMONIALS CONTENT -->
        <div class="row">
            @php
            $item = App\Customer::orderBy('id', 'ASC')->get();
            @endphp
            @foreach ($item as $data)
            <div class="col-md-6">
                <div class="owl-theme">
                    <div class="review-2">
                        <div class="app-rating yellow-color">
                            <img src="{{ asset('uploads/images/'.$data->photo) }}" alt="">
                        </div>
                        <div class="review-2-txt">
                            <p class="p-md grey-color">{!!$data->details!!}
                            </p>
                            <h5 class="h5-xs">- {{$data->name}} <br>
                                {{$data->position}}</h5>

                        </div>

                    </div>
                </div>
            </div>
            @endforeach
        </div>

    </div>
</section>