@extends('layouts.admin')
@section('content')
@push('css')
<link rel="stylesheet" href="{{asset('contents/admin')}}/assets/plugins/dropify/dist/css/dropify.min.css">
@endpush
@push('js')
<script src="{{asset('contents/admin')}}/assets/plugins/dropify/dist/js/dropify.min.js"></script>
<script>
  $(document).ready(function() {
            // Basic
            $('.dropify').dropify();

            // Translated
            $('.dropify-fr').dropify({
                messages: {
                    default: 'Glissez-déposez un fichier ici ou cliquez',
                    replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                    remove: 'Supprimer',
                    error: 'Désolé, le fichier trop volumineux'
                }
            });

            // Used events
            var drEvent = $('#input-file-events').dropify();

            drEvent.on('dropify.beforeClear', function(event, element) {
                return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
            });

            drEvent.on('dropify.afterClear', function(event, element) {
                alert('File deleted');
            });

            drEvent.on('dropify.errors', function(event, element) {
                console.log('Has Errors');
            });

            var drDestroy = $('#input-file-to-destroy').dropify();
            drDestroy = drDestroy.data('dropify')
            $('#toggleDropify').on('click', function(e) {
                e.preventDefault();
                if (drDestroy.isDropified()) {
                    drDestroy.destroy();
                } else {
                    drDestroy.init();
                }
            })
        });
</script>
@endpush
<div class="row">
  <div class="col-md-12">
    <form method="post" action="{{route('product_update')}}" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="id" value="{{$data->id}}">
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Update Product</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('product')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
                Back</a>
            </div>
          </div>
        </div>
        <div class="card-body">
          @if(Session::has('success'))
          <script>
            swal({
                            title: "Successfully!",
                            text: "Updated Information.",
                            timer: 5000,
                            icon: "success",
                        });

          </script>
          @endif
          @if(Session::has('error'))
          <script>
            swal({
                            title: "Opps!",
                            text: "Updated Failed.",
                            timer: 5000,
                            icon: "warning",
                        });

          </script>
          @endif
          <div class="form-group row custom_form">
            <label class="col-sm-3 col-form-label">Product Category:</label>
            <div class="col-sm-7">
              <select class="col-sm-12 form-control" name="category_id">
                <option value="{{$data->category_id}}">
                  {{$data->prodCategory->name}}
                  {{-- {{App\ProductAdd::find($data->prodCategory->name)}} --}}
                </option>
                @php
                $productCategory=App\Category::where('status', 1)->OrderBy('id', 'ASC')->get();
            @endphp
            @foreach ($productCategory as $category)
          <option value="{{$category->id}}">{{$category->name}}</option>
            @endforeach
          

              </select>
            </div>
          </div>
          <div class="form-group row custom_form">
            <label class="col-sm-3 col-form-label">Product SubCategory:</label>
            <div class="col-sm-7">
              <select class="col-sm-12 form-control" name="sub_category_id">
                <option value="{{$data->sub_category_id}}">
                  {{$data->prodSubCategory->name}}
                  {{-- {{App\ProductAdd::find($data->prodCategory->name)}} --}}
                </option>
                @php
                $prodSubCategory=App\SubCategory::where('status', 1)->OrderBy('id', 'ASC')->get();
            @endphp
            @foreach ($prodSubCategory as $subcategory)
          <option value="{{$subcategory->id}}">{{$subcategory->name}}</option>
            @endforeach
          

              </select>
            </div>
          </div>
          <div class="form-group row custom_form">
            <label class="col-sm-3 col-form-label">Product Unit:</label>
            <div class="col-sm-7">
              <select class="col-sm-12 form-control" name="product_unit">
                <option value="{{$data->product_unit}}">
                  {{$data->prodUnit->name}}
                  {{-- {{App\ProductAdd::find($data->prodCategory->name)}} --}}
                </option>
                @php
                $prodUnit=App\Unit::where('status', 1)->OrderBy('id', 'ASC')->get();
            @endphp
            @foreach ($prodUnit as $unit)
          <option value="{{$unit->id}}">{{$unit->name}}</option>
            @endforeach
          

              </select>
            </div>
          </div>
          
          <div class="form-group row custom_form{{$errors->has('name')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Name:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="name" value="{{$data->name}}">
              @if ($errors->has('name'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('name') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('price')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Price:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="price" value="{{$data->price}}">
              @if ($errors->has('price'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('price') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('code')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Product Code:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="code" value="{{$data->code}}">
              @if ($errors->has('code'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('code') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('details')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Details</label>
            <div class="col-sm-7">
              <textarea id="my-editor" name="details" class="form-control">{{$data->details}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor', options);
              </script>
              @if ($errors->has('details'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('details') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('feature')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Feature</label>
            <div class="col-sm-7">
              <textarea id="my-editor" name="feature" class="form-control">{{$data->feature}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor', options);
              </script>
                @if ($errors->has('feature'))
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('feature') }}</strong>
                </span>
                @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('photo')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Photo:</label>

            <div class="col-sm-7">
              <div class="row">
                <div class="col-8">
                  <input type="file" id="input-file-now-custom-1" name="photo" class="dropify" />
                </div>
                <div class="col-4">
                  <img src="{{ asset('uploads/images/'.$data->photo) }}" style="width: 182px;" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('photo_two')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Photo:</label>

            <div class="col-sm-7">
              <div class="row">
                <div class="col-8">
                  <input type="file" id="input-file-now-custom-1" name="photo_two" class="dropify" />
                </div>
                <div class="col-4">
                  <img src="{{ asset('uploads/images/'.$data->photo_two) }}" style="width: 182px;" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('photo_three')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Photo:</label>

            <div class="col-sm-7">
              <div class="row">
                <div class="col-8">
                  <input type="file" id="input-file-now-custom-1" name="photo_three" class="dropify" />
                </div>
                <div class="col-4">
                  <img src="{{ asset('uploads/images/'.$data->photo_three) }}" style="width: 182px;" alt="">
                </div>
              </div>
            </div>
          </div>
  
        </div>
        <div class="card-footer header-part text-center">
          <button type="submit" class="btn btn-info">Update</button>
        </div>
      </div>
    </form>
  </div>
</div>
@endsection