<option>Select Product SubCategory</option>
{{-- @php
    $subcategories=App\SubCategory::where('status', 1)->OrderBy('id', 'ASC')->get();
@endphp --}}
@foreach ($subcategories as $subcategory)
<option value="{{$subcategory->id}}">{{$subcategory->name}}</option>
@endforeach