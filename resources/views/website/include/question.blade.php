<section id="faqs-2" class="wide-100 faqs-section division">
	<div class="container">


		<!-- SECTION TITLE -->
		<div class="row">
			<div class="col-lg-10 offset-lg-1">
				<div class="section-title mb-80">
					@php
                    $item = App\Header::orderBy('id', 'ASC')->get();
                    @endphp
                    @foreach ($item as $data)
                    @if ($data->id == 10)
				<h2 class="h2-xs">{{$data->heading}}</h2>

					<!-- <p class="p-xl">Aliquam a augue suscipit, luctus neque purus ipsum neque at dolor primis libero 
					   tempus, blandit and cursus varius magna
					</p> -->
					@endif
                    @endforeach
				</div>
			</div>
		</div>


		<div class="row">
			@php
			$i=1;
			$item = App\Questions::orderBy('id', 'ASC')->get();
			@endphp
			@foreach ($item as $data)
			<div class="col-lg-6">
				<div id="accordion" role="tablist">

					<div class="card">
						<div class="card-header" role="tab" id="headingOne{{ $i }}">
							<h5 class="h5-md">
								<a data-toggle="collapse" href="#collapseOne{{ $i }}" role="button" aria-expanded="true"
									aria-controls="collapseOne{{ $i }}">
									{{$data->heading}}
								</a>
							</h5>
						</div>

						<div id="collapseOne{{ $i }}" class="collapse" role="tabpanel" aria-labelledby="headingOne{{ $i }}"
							data-parent="#accordion">
							<div class="card-body">

								<p class="p-md grey-color">{!!$data->sub_heading!!}
								</p>

							</div>
						</div>


					</div>


				</div>
			</div>
			@php
				$i++;
			@endphp
			
			@endforeach

			{{-- <div class="col-lg-6">
				<div id="accordion" role="tablist">
					<div class="card">
						<div class="card-header" role="tab" id="headingThree">
							<h5 class="h5-md">
								<a class="collapsed" data-toggle="collapse" href="#collapseThree" role="button"
									aria-expanded="false" aria-controls="collapseTwo">
									<span>2.</span>Do you want to know about IOT??
								</a>
							</h5>
						</div>

						<!-- Answer -->
						<div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
							data-parent="#accordion">
							<div class="card-body">

								<p class="p-md grey-color">Placeholder, Placeholder, Placeholder -- Must add
									proper content
								</p>
							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="col-lg-6">
				<div id="accordion" role="tablist">
					<div class="card">
						<div class="card-header" role="tab" id="headingFour">
							<h5 class="h5-md">
								<a class="collapsed" data-toggle="collapse" href="#collapseFour" role="button"
									aria-expanded="false" aria-controls="collapseFour">
									<span>3.</span>What's included with a FREE PLAN?
								</a>
							</h5>
						</div>

						<!-- Answer -->
						<div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour"
							data-parent="#accordion">
							<div class="card-body">

								<p class="p-md grey-color">Placeholder, Placeholder, Placeholder -- Must add
									proper content
								</p>
							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="col-lg-6">
				<div id="accordion" role="tablist">
					<div class="card">
						<div class="card-header" role="tab" id="headingTwo">
							<h5 class="h5-md">
								<a class="collapsed" data-toggle="collapse" href="#collapseTwo" role="button"
									aria-expanded="false" aria-controls="collapseTwo">
									<span>4.</span>What's included with a FREE PLAN?
								</a>
							</h5>
						</div>

						<!-- Answer -->
						<div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
							data-parent="#accordion">
							<div class="card-body">

								<p class="p-md grey-color">Placeholder, Placeholder, Placeholder -- Must add
									proper content
								</p>
							</div>
						</div>

					</div>

				</div>
			</div> --}}
		</div>
	</div>
</section>