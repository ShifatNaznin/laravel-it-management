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
                    <a href="https://sasapplication.com/single_offer/1"
                        class="btn btn-tra-grey-two blue-hover">ReadMore</a>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12 col-xl-12">

                <!-- PRICING TABLES	-->

                <div class="row pricing-row">

                    @php
                    $item = App\TransformationPlan::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)

                    <div class="col-md-6">
                        <div class="pricing-table wow fadeInLeft" data-wow-delay="0.4s">

                            <!-- Plan Price  -->
                            <div class="pricing-plan">
                                <h4 class="h4-sm-two" style="color:#ffc400; font-size:30px;">{{$data->name}}</h4>
                                <sup class="blue">$</sup>
                                <span class="price blue">{{$data->price}}</span>
                                <sup class="validity" style="color:#ffc400;">/mo</sup>
                            </div>

                            <!-- Pricing Plan Features  -->
                            <ul class="features">
                                <li>{!!$data->details!!}</li>

                            </ul>

                            <!-- Pricing Table Button  -->
                            <a href="{{url('single-cartadd-transformation/'.$data->id)}}"
                                class="btn btn-tra-grey-two blue-hover" id="cartItems">Order Now!</a>

                        </div>
                    </div>

                    @endforeach
                </div>

            </div>
        </div>


    </div>
</section>