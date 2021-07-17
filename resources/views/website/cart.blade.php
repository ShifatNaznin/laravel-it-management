@extends('layouts.website')

@section('content')


@php
$item = App\hosting_title::orderBy('id', 'ASC')->get();
@endphp
@foreach ($item as $data)
@if ($data->id == 9)

<section id="hero-9" class="bg-scroll hero-section division"
    style="background-image: url({{ asset('uploads/images/'.$data->photo) }}); height: 400px;">
    <div class="container">
        <div class="row d-flex align-items-center m-row">

            <div class="col-md-7 col-lg-6 m-top">
                <div class="hero-9-txt pc-25 wow fadeInLeft banner-cls" data-wow-delay="0.6s">
                    <h1 class="text-black" style="color: #ffffff;">{{$data->banner_title}}</h1>
                    <p class="text-white">{{$data->heading}}</p>

                </div>
            </div>


        </div>
    </div>
</section>
@endif
@endforeach


<section class="cart-part bg" style="background: #f7f8fa;">
    <div class="cart-product" style="z-index: 1;">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="section-title mb-80" style="margin: 60px 0px 60px 0px;">

                    <h3 class="h2-xs" style="color:#01476d; font-size:40px;">SOFTWARE | SOLUTIONS CART</h3>

                </div>
            </div>

        </div>
        <div class="container custom-container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="woo-entry">
                        <table class="table text-center dez-cart-tbl" style="background: #f7f8fa;">
                            <thead class="text-center">
                                <tr>
                                    <th style="color:black;border-top: 0;"></th>

                                    <th style="color:black;border-top: 0;text-align: left;">PRODUCT NAME</th>
                                    <th style="color:black;border-top: 0;"></th>
                                    <th style="color:black;border-top: 0;"></th>
                                    <th style="color:black;border-top: 0;visibility: hidden;">Categoty Id</th>
                                    <th style="color:black;border-top: 0;">Quantity</th>
                                    <th style="color:black;border-top: 0;"></th>
                                    <th style="color:black;border-top: 0;">SUB TOTAL</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($products as $product)
                                {{-- @php
                                dd($product);
                            @endphp --}}
                                <tr class="alert">
                                    <td>
                                        <a href="{{url('cart/product/remove/'.$product->rowId)}}"
                                            class="btn btn-default btn-remove"><i
                                                class="fa fa-times text-danger"></i></a>
                                    </td>
                                    <td style="text-align: left;">{{$product->name}}</td>
                                    <td style="text-align: left;"></td>

                                    <td></td>
                                    <td style="visibility: hidden;">{{$product->options->category_id}}</td>

                                    <td>
                                        <div class="product_count">
                                            <input type="text" name="qty" id="sst2{{$product->id}}" maxlength="12"
                                                value="{{$product->qty}}" title="Quantity:" class="input-text qty">
                                            <button data-rowid="{{ $product->rowId }}" data-price="300" onclick="var result = document.getElementById('sst2{{$product->id}}');
                                                var sst = result.value;
                                                if( !isNaN( sst )) result.value++;
                                                return false;" class="increase items-count" type="button">
                                                <i class="fa fa-angle-up"></i>
                                            </button>
                                            <button data-rowid="{{ $product->rowId }}" data-price="300" onclick="var result = document.getElementById('sst2{{$product->id}}');
                                                var sst = result.value;
                                                if( !isNaN( sst ) &amp;&amp; sst > 1 ) result.value--;
                                                return false;" class="reduced items-count" type="button">
                                                <i class="fa fa-angle-down"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td></td>
                                    <td data-title="Change %" class="product_subtotal">
                                        {{$product->price * $product->qty}}</td>
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th style="color:black;text-align:right;" colspan="5">TOTAL</th>
                                    <th style="color:black;text-align: center" data-title="Total" id="total_ammount">
                                        {{Cart::total(config('cart.format.decimals'))}}
                                    </th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class="col-12 text-center">
                    <div class="action-btns mt-4 banner-cls" style="margin: 20px 0px 40px 0px;">
                        <a href="{{route('checkout')}}" class="btn secondary-solid-btn-two mr-3">Check Out</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
