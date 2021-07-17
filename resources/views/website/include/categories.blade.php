<section class="timeline">

    <ul>
        <div class="col-lg-10 offset-lg-1">
            <div class="section-title mb-70">

                @php
                $item = App\Header::orderBy('id', 'ASC')->get();
                @endphp
                @foreach ($item as $data)
                @if ($data->id == 4)
                <h2 class="h2-xs">{{$data->heading}}</h2>


                <p class="p-xl">{!!$data->sub_heading!!}
                </p>
                @endif
                @endforeach
            </div>
        </div>
        @php
        $item = App\category::orderBy('id', 'ASC')->get();
        @endphp
        @foreach ($item as $data)
        @if ($data->id % 2== 1)
        <li>

            <div>
                {!!$data->sub_heading!!}
            </div>

        </li>
        @endif
        @if ($data->id % 2== 0)
        <li>

            <div>
                {!!$data->sub_heading!!}
            </div>


        </li>
        @endif
        @endforeach
    </ul>
</section>