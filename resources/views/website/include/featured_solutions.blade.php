<section id="tabs-2" class="wide-60 tabs-section division">
	<div class="container">
		<!-- <div class="row"> -->
		<div class="col-lg-10 offset-lg-1">
			<div class="section-title mb-70">

				@php
				$item = App\Header::orderBy('id', 'ASC')->get();
				@endphp
				@foreach ($item as $data)
				@if ($data->id == 7)
				<h2 class="h2-xs">{{$data->heading}}
				</h2>


				<p class="p-xl">{!!$data->sub_heading!!}
				</p>
				@endif
				@endforeach
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12 col-xl-12 text-center">
				<div id="tabs-nav">
					<ul class="tabs-1 orange-tabs clearfix">
						@php
						$i=2;
						$item = App\FeaturedSolutions::orderBy('id', 'ASC')->get();
						@endphp
						@foreach ($item as $data)
						@if ($data->id ==1)
						<li class="tab-link current" data-tab="tab-1">{!!substr($data->heading, 0, 22)!!}</li>
						@endif
						@if ($data->id >1)
						<li class="tab-link" data-tab="tab-2{{$i}}">{!!substr($data->heading, 0, 20)!!}</li>
						@endif

						@php
						$i++;
						@endphp
						@endforeach
					</ul>
				</div>
			</div>
		</div>



		<div id="tabs-content">


			@php
			$j=2;
			$item = App\FeaturedSolutions::orderBy('id', 'ASC')->get();
			@endphp

			@foreach ($item as $data)
			@if ($data->id ==1)


			<div id="tab-1" class="tab-content current">
				<div class="row d-flex align-items-center m-row">
					<div class="col-md-4 col-lg-4 m-bottom">
						<div class="img-block left-column pc-25 mb-40">
							<img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}"
								alt="content-image">
						</div>
					</div>

					<div class="col-md-8 col-lg-8 m-top">
						<div class="txt-block right-column pc-25 mb-40">

							<h3 class="h3-sm">{{$data->heading}}</h3>

							<p class="p-md grey-color">
								{!!$data->sub_heading!!}
							</p>

						</div>
					</div>


				</div>
			</div>
			@endif
			@if ($data->id > 1)
			<div id="tab-2{{$j}}" class="tab-content">
				<div class="row d-flex align-items-center m-row">
					<div class="col-md-4 col-lg-4 m-bottom">
						<div class="img-block left-column pc-25 mb-40">
							<img class="img-fluid" src="{{ asset('uploads/images/'.$data->photo) }}"
								alt="content-image">
						</div>
					</div>

					<div class="col-md-8 col-lg-8 m-top">
						<div class="txt-block right-column pc-25 mb-40">

							<h3 class="h3-sm">{{$data->heading}}</h3>

							<p class="p-md grey-color">
								{!!$data->sub_heading!!}
							</p>

						</div>
					</div>


				</div>
			</div>
			@endif
			@php
			$j++;
			@endphp

			@endforeach




		</div>


	</div>
</section>