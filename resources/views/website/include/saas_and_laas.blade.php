<section id="features-7" class="wide-60 features-section division main-read">
	<div class="container">



		<div class="row">
			<div class="col-lg-10 offset-lg-1">
				<div class="section-title mb-80">
					@php
					$item = App\Header::orderBy('id', 'ASC')->get();
					@endphp
					@foreach ($item as $data)
					@if ($data->id == 3)
					<h2 class="h2-xs deepblue-color">{{$data->heading}}
					</h2>

					<!-- Text -->
					<p class="p-xl">{!!$data->sub_heading!!}
					</p>
					@endif
					@endforeach
				</div>
			</div>
		</div>


		<!-- FEATURES-7 HOLDER -->
		<div class="fbox-7-holder text-center">
			<div class="row">
				@php
				$item = App\LaasSolution::orderBy('id', 'ASC')->get();
				@endphp
				@foreach ($item as $data)


				@if ($data->id ==1)
				<div class="col-sm-6 col-lg-4">
					<div class="fbox-7 pc-25 mb-40 wow fadeInUp" data-wow-delay="0.6s">


						<div class="fbox-7-ico grey-color ico-75"><span class="flaticon-adjust-3"></span></div>


						<h5 class="h5-md deepblue-color">{{$data->name}}</h5>
						<p class="grey-color">{!!Str::words($data->details,13)!!} <a
								href="{{url('/laas_application',$data->id)}}" class="read-more">
								ReadMore</a></p>

					</div>
				</div>

				@endif

				@if ($data->id ==2)
				<div class="col-sm-6 col-lg-4">
					<div class="fbox-7 pc-25 mb-40 wow fadeInUp" data-wow-delay="1s">


						<div class="fbox-7-ico grey-color ico-75"><span class="flaticon-database"></span>
						</div>
						<h5 class="h5-md deepblue-color">{{$data->name}}</h5>

						<!-- Text -->
						<p class="grey-color">{!!Str::words($data->details,13)!!} <a
								href="{{url('/laas_application',$data->id)}}" class="read-more">ReadMore</a></p>

					</div>
				</div>
				@endif
				@if ($data->id ==3)
				<div class="col-sm-6 col-lg-4">
					<div class="fbox-7 pc-25 mb-40 wow fadeInUp" data-wow-delay="1s">


						<div class="fbox-7-ico grey-color ico-75"><span class="flaticon-layers"></span>
						</div>
						<h5 class="h5-md deepblue-color">{{$data->name}}</h5>
						<p class="grey-color">{!!Str::words($data->details,13)!!}<a
								href="{{url('/laas_application',$data->id)}}" class="read-more">ReadMore</a></p>

					</div>
				</div>
				@endif
				@endforeach


			</div>
		</div> <!-- END FEATURES-7 HOLDER -->


	</div>
</section>