
		<section id="content-5" class="bg-lightgrey wide-60 content-section division">
			<div class="container">



				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="section-title mb-80">

							@php
							$item = App\Header::orderBy('id', 'ASC')->get();
							@endphp
							@foreach ($item as $data)
							@if ($data->id == 2)
							<h2 class="h2-xs">{{$data->heading}}</h2>
							@endif
							@endforeach


						</div>
					</div>
				</div>

				@php

				$item = App\popular_feature::orderBy('id', 'ASC')->get();
				@endphp
				@foreach ($item as $data)
				@if ($data->id % 2 == 1)
				<div id="c5-top">
					<div class="row d-flex align-items-center">

					
						<div class="col-md-7 col-lg-6">
							<div class="txt-block left-column pc-35 mb-40 wow fadeInRight" data-wow-delay="0.6s">

								<!-- Title -->
							<h3 class="h3-xl">{{$data->heading}}</h3>

								<!-- List -->
								<ul class="txt-list grey-color banner-cls">

									<li class="list-item">
										<p class="p-md">{!!$data->sub_heading!!}
										</p>
									</li>
									



									{{-- <div class="action-btns mt-4">
										<a href="#" class="btn secondary-solid-btn-two mr-3">Order Now</a>
									</div> --}}

								</ul>

							</div>
						</div> 
						<div class="col-md-5 col-lg-6">
							<div class="img-block right-column pc-25 mb-40 wow fadeInLeft" data-wow-delay="0.4s">
								<img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}" alt="content-image">
							</div>
						</div>
						

					</div>
				</div>
				@endif

				@if ($data->id % 2 == 0)
				<div id="c5-bottom">
					<div class="row d-flex align-items-center m-row">


						<!-- IMAGE BLOCK -->
						<div class="col-md-5 col-lg-6 m-bottom">
							<div class="img-block left-column pc-25 mb-40 wow fadeInRight" data-wow-delay="0.4s">
								<img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}" alt="content-image">
							</div>
						</div>


						<!-- TEXT BLOCK -->
						<div class="col-md-7 col-lg-6 m-top">
							<div class="txt-block right-column pc-35 mb-40 wow fadeInLeft" data-wow-delay="0.6s">

								<h3 class="h3-xl">
									{{$data->heading}}
								</h3>

								<!-- Text -->
								<ul class="txt-list grey-color banner-cls">

									<li class="list-item">
								
										<p class="p-md">{!!$data->sub_heading!!}
										</p>
									</li>
									


									{{-- <div class="action-btns mt-4">
										<a href="#" class="btn secondary-solid-btn-two mr-3">Order Now</a>
									</div> --}}

								</ul>

							</div>
						</div> <!-- END TEXT BLOCK -->


					</div>
				</div>
				@endif
		
				@endforeach

			</div>
		</section>