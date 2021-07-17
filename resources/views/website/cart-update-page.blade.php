<table class="table text-center dez-cart-tbl" style="background: #f7f8fa;">
        <thead class="text-center">
            <tr>
                <th style="color:black;border-top: 0;"></th>

                <th style="color:black;border-top: 0;text-align: left;">PRODUCT NAME</th>
                <th style="color:black;border-top: 0;"></th>
                <th style="color:black;border-top: 0;"></th>
                <th style="color:black;border-top: 0;"></th>
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
                    <a href="{{url('cart/product/remove/'.$product->rowId)}}" class="btn btn-default btn-remove"><i
                            class="fa fa-times text-danger"></i></a>
                </td>
                <td style="text-align: left;">{{$product->name}}</td>
                <td style="text-align: left;"></td>

                <td></td>
                <td></td>

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