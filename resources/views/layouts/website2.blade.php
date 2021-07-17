<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- SITE TITLE -->
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>SasApplication</title>

	<link rel="shortcut icon" href="{{asset('contents/website')}}/assets/images/icons/favicon.png" type="image/x-icon">


	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&amp;display=swap"
		rel="stylesheet">

	<!-- BOOTSTRAP CSS -->
	<link href="{{asset('contents/website')}}/assets/css/bootstrap.min.css" rel="stylesheet">

	<!-- FONT ICONS -->
	<link href="{{asset('contents/website')}}/assets/css/flaticon.css" rel="stylesheet">
	<link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/font-awesome.min.css">

	<!-- PLUGINS STYLESHEET -->
	<!-- <link href="{{asset('contents/website')}}/assets/css/magnific-popup.css" rel="stylesheet"> -->
	<link href="{{asset('contents/website')}}/assets/css/owl.carousel.min.css" rel="stylesheet">
	<link href="{{asset('contents/website')}}/assets/css/owl.theme.default.min.css" rel="stylesheet">
	<link href="{{asset('contents/website')}}/assets/css/slick.css" rel="stylesheet">
	<link href="{{asset('contents/website')}}/assets/css/slick-theme.css" rel="stylesheet">

	<!-- ON SCROLL ANIMATION -->
	<link href="{{asset('contents/website')}}/assets/css/animate.css" rel="stylesheet">

	<!-- TEMPLATE CSS -->
	<link href="{{asset('contents/website')}}/assets/css/style.css" rel="stylesheet">

	<!-- RESPONSIVE CSS -->
	<link href="{{asset('contents/website')}}/assets/css/responsive.css" rel="stylesheet">

</head>




<body>

	<div id="page" class="page">




		<header id="header" class="header">
			<nav class="navbar fixed-top navbar-expand-lg tra-menu navbar-dark hover-menu">
				<div class="container">


					<!-- LOGO IMAGE -->
					<!-- For Retina Ready displays take a image with double the amount of pixels that your image will be displayed (e.g 190 x 80 pixels) -->
					<a href="#hero-9" class="navbar-brand logo-black"><img
							src="{{asset('contents/website')}}/assets/images/logo-sm.png" width="136" height="40"
							alt="header-logo"></a>
					<a href="#hero-9" class="navbar-brand logo-white"><img
							src="{{asset('contents/website')}}/assets/images/logo-sm-white.png" width="136" height="40"
							alt="header-logo"></a>


					<!-- Responsive Menu Button -->
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-bar-icon"><i class="fa fa-bars"></i></span>
					</button>


					<!-- Navigation Menu -->
					<div id="navbarSupportedContent" class="collapse collapse-two navbar-collapse">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item dropdown">
								<a class="nav-link" href="{{url('/')}}">
									Home
								</a>

							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="{{route('webapplication')}}"
									id="navbarDropdownMenuLink">
									Application
								</a>

								<!-- Dropdown Menu -->
								<ul class="dropdown-menu dropdown-menu-two" aria-labelledby="navbarDropdownMenuLink" style="height: 600px;
								overflow-y: auto;">
									<li>

										<div class="row">
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">CashBox</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app1.jpg"
															alt=""></div>

													<p class="grey-color">Subscription at $149.99 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="{{url('/webapplication_view/2')}}">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Soft Academia</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app2.png"
															alt=""></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="{{url('/webapplication_view/3')}}">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">VPOS</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app3.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">The Self Dependable Accounts</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app5.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Debt Validator</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app7.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Easy Credit Repair</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app8.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="@">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Epaymaker</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app10.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="@">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Super Useful Servers</h5>
													<h2 class="h5-md">SALE 70%</h2>
													<div class="mega-menu-btn">
														<a href="{{url('/webhosting_view/3')}}">Read More</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">
													<h5 class="h5-md">IaaS Solutions</h5>
													<h2 class="h5-md">SAVINGS OF 40% OR MORE</h2>
													<div class="mega-menu-btn">
														<a href="#">Read More</a>
													</div>

												</div>

											</div>

										</div>
									</li>

								</ul>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="{{route('webhosting')}}"
									id="navbarDropdownMenuLink">
									Hosting
								</a>

								<!-- Dropdown Menu -->
								<ul class="dropdown-menu dropdown-menu-three" aria-labelledby="navbarDropdownMenuLink">
									<li>

										<div class="row">
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">
													<h5 class="h5-md">Shared Hosting</h5>
													<p>Starting from $19.99</p>


													<div class="mega-menu-btn">
														<a href="{{url('/webhosting_view/1')}}">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">
													<h5 class="h5-md">VPS</h5>
													<p>Starting from $19.99</p>


													<div class="mega-menu-btn">
														<a href="{{url('/webhosting_view/2')}}">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">
													<h5 class="h5-md">Dedicated</h5>
													<p>Starting from $19.99</p>


													<div class="mega-menu-btn">
														<a href="{{url('/webhosting_view/3')}}">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Super Useful Servers</h5>
													<h2 class="h5-md">SALE 70%</h2>
													<div class="mega-menu-btn">
														<a href="#">Read More</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">
													<h5 class="h5-md">IaaS Solutions</h5>
													<h2 class="h5-md">SAVINGS OF 40% OR MORE</h2>
													<div class="mega-menu-btn">
														<a href="#">Read More</a>
													</div>

												</div>

											</div>

										</div>
									</li>

								</ul>
							</li>

							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="{{route('webservice')}}" id="navbarDropdownMenuLink">
									Web Services
								</a>
								<ul class="dropdown-menu dropdown-menu-four" aria-labelledby="navbarDropdownMenuLink" style="margin: 0px 0px 0px -611px !important; height: 600px;
								overflow-y: auto;">
									<li>

										<div class="row">
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Brand Zone</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app4.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Call Alerter</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app6.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Edulife</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app9.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Free World Brand LLC</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app11.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Free World Exports</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app12.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Free World Imports</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app13.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">HSBLCO Solutions</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app14.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Khelower</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app15.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Laajim</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app16.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Lounge Massager</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app17.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Miracle Cleansing Herbs</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app18.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Shobee's Natural</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app19.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Cotes Skynet</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app20.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Smart Care</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app21.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Niveau Smart Energy</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app22.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Transborder Network</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app23.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $1,400 <br><br>
														Buy at a time<br>
														$2,500</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Tab_Forest Mining LTD</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app24.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $2400 <br><br>
														Buy at a time<br>
														$5000</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											<div class="col-md-4 col-sm-12">
												<div class="mega-menu text-center">

													<h5 class="h5-md">Dandy shoe</h5>
													<div class="fbox-7-ico"> <img
															src="{{asset('contents/website')}}/assets/images/app26.png"
															alt="" style="height: 100px !important;"></div>

													<p class="grey-color">Subscription at $2600 <br><br>
														Buy at a time<br>
														$6000</p>

													<div class="mega-menu-btn">
														<a href="#">Buy Now</a>
													</div>

												</div>

											</div>
											

										</div>
									</li>

								</ul>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link" href="{{route('webapps')}}">
									Mobile Apps
								</a>

							</li>
							<li class="nav-item dropdown">
								<a class="nav-link" href="{{route('webblogs')}}">
									Blog
								</a>

							</li>
							<li class="nav-item dropdown">
								<a class="nav-link" href="{{route('webcontact')}}">
									Contact Us
								</a>

							</li>
							<li class="nav-item dropdown icon-cart">
								<a class="nav-link" id="cartItems" href="{{route('cart')}}">
									<i class="fa fa-shopping-basket" aria-hidden="true"></i><span
										class="badge badge-info"
										style="background: rgb(59, 202, 245);">{{Cart::count()}}</span>
								</a>

							</li>



						</ul>


					</div>


				</div>
			</nav>
		</header>

		@yield('content')

		<footer id="footer-1" class="footer division">
			<div class="container">


				<!-- FOOTER CONTENT -->
				<div class="row">


					<!-- FOOTER INFO -->
					<div class="col-lg-4">
						<div class="footer-info mb-40">

							<!-- Footer Logo -->
							<!-- For Retina Ready displays take a image with double the amount of pixels that your image will be displayed (e.g 336 x 70  pixels) -->
							<img src="{{asset('contents/website')}}/assets/images/logo-sm-white.png" width="168"
								height="35" alt="footer-logo">

							@php
							$item = App\FooterOne::orderBy('id', 'ASC')->take(1)->get();
							@endphp
							@foreach ($item as $data)
							<p class="grey-color">{!!$data->details!!}
							</p>
							@endforeach
						</div>
					</div>


					<!-- FOOTER LINKS -->
					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="footer-links mb-40">
							@php
							$item = App\FooterTwo::orderBy('id', 'ASC')->get();
							@endphp
							@foreach ($item as $data2)
							@if ($data2->id ==1)


							<h5 class="h5-sm">{{$data2->name}}</h5>
							@endif
							@endforeach
							<!-- Footer Links -->
							<ul class="foo-links grey-color clearfix">
								@php
								$item = App\FooterTwo::orderBy('id', 'ASC')->get();
								@endphp
								@foreach ($item as $data)
								@if ($data->id >1)
								<li><a href="{{$data->link}}">{{$data->name}}</a></li>
								@endif
								@endforeach
							</ul>
						</div>
					</div>


					<!-- FOOTER LINKS -->
					<div class="col-sm-6 col-md-4 col-lg-4">
						<div class="footer-links mb-40">

							@php
							$item = App\FooterThree::orderBy('id', 'ASC')->get();
							@endphp
							@foreach ($item as $data1)
							@if ($data1->id ==1)


							<h5 class="h5-sm">{{$data1->name}}</h5>
							@endif
							@endforeach
							@php
							$item = App\FooterThree::orderBy('id', 'ASC')->get();
							@endphp
							<!-- Footer Links -->
							<ul class="foo-links grey-color clearfix">
								@foreach ($item as $data)
								@if ($data->id >1)
								<li><a href="{{$data->link}}">{{$data->name}}</a></li>
								@endif
								@endforeach
							</ul>

						</div>
					</div>


					<!-- FOOTER LINKS -->
					{{-- <div class="col-sm-6 col-md-3 col-lg-2">
						<div class="footer-links mb-40">

							@php
							$item = App\FooterFour::orderBy('id', 'ASC')->get();
							@endphp
							@foreach ($item as $data)
							@if ($data->id ==1)
								
							
							<h5 class="h5-sm">{{$data->name}}</h5>
					@endif
					<!-- Footer Links -->
					<ul class="foo-links grey-color clearfix">
						@if ($data->id >1)
						<li><a href="{{$data->link}}">{{$data->name}}</a></li>
						@endif
					</ul>
					@endforeach

				</div>
			</div> --}}




	</div> <!-- END FOOTER CONTENT -->


	<!-- BOTTOM FOOTER -->
	<div class="bottom-footer">
		<div class="row d-flex align-items-center">


			<!-- FOOTER COPYRIGHT -->
			<div class="col-md-6">
				<div class="footer-copyright grey-color">
					<p>Copyrights © 2020 -2021. All rights reserved by CloudFectiv & HSBLCO Solution</p>
				</div>
			</div>

			@php
			$item = App\Address::orderBy('id', 'ASC')->get();
			@endphp
			@foreach ($item as $data)
			<!-- BOTTOM FOOTER LINKS -->
			<div class="col-md-6">
				<ul class="bottom-footer-list grey-color text-right clearfix">
					<li><a href="{{$data->facebook}}">Facebook</a></li>
					<li><a href="{{$data->twitter}}">Twitter</a></li>
					<li><a href="{{$data->linkedin}}">LinkedIn</a></li>
					{{-- <li class="last-li"><a href="#">Dribbble</a></li> --}}
				</ul>
			</div>
			@endforeach

		</div>
	</div> <!-- END BOTTOM FOOTER -->


	</div>
	</footer>

	</div>

	<script src="{{asset('contents/website')}}/assets/js/jquery-3.4.1.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/bootstrap.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/modernizr.custom.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.easing.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.appear.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.scrollto.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/isotope.pkgd.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.flexslider.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/owl.carousel.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/slick.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/hero-form.js"></script>

	<script src="{{asset('contents/admin')}}/assets/js/sweetalert.min.js"></script>
	@if(Session::has('success'))
	<script>
		swal({
					title: 'Successful',
					text: "{{ session('success') }}",
					type: 'success',
					timer: 3000
				})        
	</script>
	@endif

	{{-- <script src="{{asset('contents/website')}}/assets/js/contact-form.js"></script> --}}
	{{-- <script src="{{asset('contents/website')}}/assets/js/comment-form.js"></script> --}}
	<script src="{{asset('contents/website')}}/assets/js/jquery.validate.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="{{asset('contents/website')}}/assets/js/wow.js"></script>

	<!-- Custom Script -->
	<script src="{{asset('contents/website')}}/assets/js/custom.js"></script>

	<script src="{{asset('contents/website')}}/assets/js/ajax.js"></script>
	<script>
		$.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        });
	</script>

	<script>
		new WOW().init();
	</script>

	<script>
		(function () {

			'use strict';

			// define variables
			var items = document.querySelectorAll(".timeline li");

			// check if an element is in viewport
			// http://stackoverflow.com/questions/123999/how-to-tell-if-a-dom-element-is-visible-in-the-current-viewport
			function isElementInViewport(el) {
				var rect = el.getBoundingClientRect();
				return (
					rect.top >= 0 &&
					rect.left >= 0 &&
					rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
					rect.right <= (window.innerWidth || document.documentElement.clientWidth)
				);
			}

			function callbackFunc() {
				for (var i = 0; i < items.length; i++) {
					if (isElementInViewport(items[i])) {
						items[i].classList.add("in-view");
					}
				}
			}

			// listen for events
			window.addEventListener("load", callbackFunc);
			window.addEventListener("resize", callbackFunc);
			window.addEventListener("scroll", callbackFunc);

		})();
	</script>
	<script>
		(function (i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o),
				m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-46156385-1', 'cssscript.com');
		ga('send', 'pageview');
	</script>

</body>



</html>