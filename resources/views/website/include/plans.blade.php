<section id="pricing-2" class="wide-60 pricing-section division">
    <div class="container">

        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80">

                    @php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 8)
                    <h2 class="h2-xs">{{$data->heading}}</h2>

                    <!-- Text -->
                    <p class="p-xl">{!!$data->sub_heading!!}
                    </p>
                    @endif
                    @endforeach
                    <a href="/single_offer/1"
                        class="btn btn-tra-grey-two blue-hover">ReadMore</a>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12 col-xl-6 col-md-4">
                {{-- <img src="{{asset('contents/website')}}/assets/images/new.png" alt=""> --}}


            </div>
        </div>


    </div>
</section>
