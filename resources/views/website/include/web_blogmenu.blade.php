<div class="col-lg-3">
    <div class="new-menu">
        <ul>
            <li class="@if(request()->is('webblogs')) active @endif">
                <a href="{{route('webblogs')}}" class="active">All</a>

            </li>
            @php
            $item = App\BlogsCategory::orderBy('id', 'ASC')->get();
            @endphp
            @foreach ($item as $data)
            <li class="@if(request()->is('webblogs_category')) active @endif">
                <a href="{{url('/webblogs_category',$data->id)}}">{{$data->name}}</a>

            </li>
            
            @endforeach

        </ul>
    </div>
</div>