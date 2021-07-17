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
    <form method="post" action="{{route('hosting_plan_update')}}" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="id" value="{{$data->id}}">
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Update Hosting Plan</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('hosting_plan')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
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


          <div class="form-group row custom_form{{$errors->has('name')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Hosting Name:</label>
            <div class="col-sm-7">
              <select class="col-sm-12 form-control" name="hosting_id">
              <option value="{{$data->hosting_id}}">{{$data->hostingCategory->heading}}</option>
                @php
                $hostingCategory=App\hosting::where('status', 1)->OrderBy('id', 'ASC')->get();
                @endphp
                @foreach ($hostingCategory as $category)
                <option value="{{$category->id}}">{{$category->heading}}</option>
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
          
          <div class="form-group row custom_form{{$errors->has('details')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Details</label>
            <div class="col-sm-7">
              <textarea id="my-editor2" name="details" class="form-control">{{$data->details}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor2', options);
              </script>
              @if ($errors->has('details'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('details') }}</strong>
              </span>
              @endif
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