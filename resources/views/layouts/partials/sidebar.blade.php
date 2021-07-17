<div class="leftbar">
    <!-- Start Sidebar -->
    <div class="sidebar">
        <!-- Start Logobar -->
        <div class="logobar">
            <a href="{{url('admin')}}" class="logo logo-large"><img
                    src="{{asset('contents/admin')}}/assets/images/logo.png" class="img-fluid" alt="logo"></a>
            <a href="{{url('admin')}}" class="logo logo-small"><img
                    src="{{asset('contents/admin')}}/assets/images/icon.png" class="img-fluid" alt="logo"></a>
        </div>
        <div class="logobar">
            <a href="{{url('admin')}}" class="logo logo-large"><img src="/uploads/user/{{Auth::user()->photo}}"
                    class="img-fluid" alt="logo" style="width: 50px; border-radius:2px;"></a>

            <h5 style="color:#ffffff; margin-top:10px; ">{{Auth::user()->name}}</h5>
            <h5 style="color:#ffffff;">{{Auth::user()->email}}</h5>
        </div>
        <!-- End Logobar -->
        <!-- Start Navigationbar -->
        <div class="navigationbar">
            <div class="scroll-side">
                <ul class="vertical-menu">
                    <li>
                        <a href="{{url('admin')}}">
                            <img src="{{asset('contents/admin')}}/assets/images/svg-icon/dashboard.svg"
                                class="img-fluid" alt="dashboard"><span>Dashboard</span></i>
                        </a>
                    </li>
                    <li>
                        <a href="javaScript:void();">
                            <img src="{{asset('contents/admin')}}/assets/images/svg-icon/settings.svg" class="img-fluid"
                                alt="layouts"><span>Admin Management</span><i
                                class="feather icon-chevron-right pull-right"></i>
                        </a>
                        <ul class="vertical-submenu">
                            <li>
                                <a href="{{route('user_index')}}">User</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="javaScript:void();">
                            <img src="{{asset('contents/admin')}}/assets/images/svg-icon/components.svg"
                                class="img-fluid" alt="layouts"><span>Website Management</span><i
                                class="feather icon-chevron-right pull-right"></i>
                        </a>
                        <ul class="vertical-submenu">
                            <li><a href="{{route('logo')}}">Logo and Title</a></li>
                            <li><a href="{{route('banner')}}">Banner</a></li>
                            <li><a href="{{route('address')}}">Address</a></li>
                            <li><a href="{{url('admin/allheader/9')}}">Blogs Header</a></li>
                            <li><a href="{{route('aboutsas')}}">Why Sasapplication</a></li>

                            <li><a href="#">Service Category<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('service_category')}}">Service Category</a></li>
                                    <li><a href="{{route('service_details')}}">Service Details</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Offer<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('offer')}}">Offer</a></li>
                                    <li><a href="{{url('admin/allheader/1')}}">Offer Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Popular Feature<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('popular_feature')}}">Popular Feature</a></li>
                                    <li><a href="{{url('admin/allheader/2')}}">Popular Feature Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Laas Solution<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('laas_solution')}}">Laas Solution</a></li>
                                    <li><a href="{{url('admin/allheader/3')}}">Laas Solution Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Category<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('category')}}">Category</a></li>
                                    <li><a href="{{url('admin/allheader/4')}}">Category Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Different<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('different')}}">Different</a></li>
                                    <li><a href="{{url('admin/allheader/5')}}">Different Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Cloud Based<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('cloud_based')}}">All Cloud</a></li>
                                    <li><a href="{{url('admin/allheader/6')}}">Cloud Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Featured Solutions<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('featured_solutions')}}">Featured</a></li>
                                    <li><a href="{{url('admin/allheader/7')}}">Featured Solutions Header</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Transformation Plan<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('transformation_plan')}}">Transformation Plan</a></li>
                                    <li><a href="{{url('admin/allheader/8')}}">Transformation Plan Header</a></li>
                                </ul>
                            </li>

                            <li><a href="#">Asked Questions<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('questions')}}">Asked Questions</a></li>
                                    <li><a href="{{url('admin/allheader/10')}}">Asked Questions Header</a></li>
                                </ul>
                            </li>

                            <li><a href="#">Customer<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('customer')}}">Customer Says</a></li>
                                    <li><a href="{{url('admin/allheader/11')}}">Customer Header</a></li>
                                </ul>
                            </li>



                            <li><a href="#">Application<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('application')}}">All Application</a></li>
                                    <li><a href="{{route('applicationview')}}">Application Package</a></li>
                                    <li><a href="{{url('admin/title/1')}}">Application Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Hosting<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('hosting')}}">All Hosting</a></li>
                                    <li><a href="{{route('hosting_plan')}}">Hosting Plan</a></li>
                                    <li><a href="{{url('admin/title/2')}}">Hosting Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Mobile Apps<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('apps')}}">All Apps</a></li>
                                    <li><a href="{{route('appsview')}}">Apps Package</a></li>
                                    <li><a href="{{url('admin/title/3')}}">Apps Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Web Service<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('service')}}">All Service</a></li>
                                    <li><a href="{{route('serviceview')}}">Service Package</a></li>
                                    <li><a href="{{url('admin/title/4')}}">Service Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Cyber Security<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('cybersecurity')}}">All Cyber Security</a></li>
                                    <li><a href="{{route('cybersecurityview')}}">Cyber Security Package</a></li>
                                    <li><a href="{{url('admin/title/5')}}">Cyber Security Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Blogs<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('blogs')}}">All Blogs</a></li>
                                    <li><a href="{{route('blog_category')}}">Blogs Category</a></li>
                                    <li><a href="{{url('admin/title/6')}}">Blogs Title</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Order List<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li>
                                        <a href="{{route('orderlist')}}">Order Total</a>
                                    </li>
                                    <li>
                                        <a href="{{route('orderdetails')}}">Order Details</a>
                                    </li>
                                    <li>
                                        <a href="{{route('orderaddress')}}">Order Address</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#">Footer<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('footer_one')}}">Footer One</a></li>
                                    <li><a href="{{route('footer_two')}}">Footer Two</a></li>
                                    <li><a href="{{route('footer_three')}}">Footer Three</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Contact Message<i class="feather icon-chevron-right pull-right"></i></a>
                                <ul class="vertical-submenu vertical-submenu-two">
                                    <li><a href="{{route('contact_msg')}}">Contact Message</a></li>
                                    <li><a href="{{url('admin/title/8')}}">Contact Title</a></li>
                                </ul>
                            </li>
                            <li><a href="{{url('admin/title/9')}}">Cart Title</a></li>
                            {{-- <li><a href="{{route('contact_msg')}}">Contact Message</a></li> --}}

                        </ul>
                    </li>

                    <li>
                        <a href="{{url('/')}}" target="_blank">
                            <img src="{{asset('contents/admin')}}/assets/images/svg-icon/widgets.svg" class="img-fluid"
                                alt="banner"><span>Live Site</span></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('logout') }}"
                            onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                            <img src="{{asset('contents/admin')}}/assets/images/svg-icon/logout.svg" class="img-fluid"
                                alt="logout"><span>Logout</span></i>
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>