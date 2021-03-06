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
    <form method="post" action="{{route('logo_store')}}" enctype="multipart/form-data">
      @csrf
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Add Logo and Title</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('logo')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
                Back</a>
            </div>
          </div>
        </div>
        <div class="card-body">
          @if(Session::has('success'))
          <script>
            swal({
                            title: "Successfully!",
                            text: "Added",
                            timer: 5000,
                            icon: "success",
                        });

          </script>
          @endif
          @if(Session::has('error'))
          <script>
            swal({
                            title: "Opps!",
                            text: "Add Failed.",
                            timer: 5000,
                            icon: "warning",
                        });

          </script>
          @endif
          <div class="form-group row custom_form{{$errors->has('title')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Title:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="title" value="{{old('title')}}">
              @if ($errors->has('title'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('title') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('logo')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Logo:</label>
            <div class="col-sm-7">
              <label class="col-form-label">Width: 150 px , Height: 48 px </label>
              <input type="file" id="input-file-now-custom-1" name="logo" class="dropify" />
              @if ($errors->has('logo'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('logo') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('icon')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Hover Logo:</label>
            <div class="col-sm-7">
              <label class="col-form-label">Width: 50 px , Height: 50 px </label>
              <input type="file" id="input-file-now-custom-1" name="icon" class="dropify" />
              @if ($errors->has('icon'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('icon') }}</strong>
              </span>
              @endif
            </div>
          </div>
     

        </div>
        <div class="card-footer header-part text-center">
          <button type="submit" class="btn btn-info">Add</button>
        </div>
      </div>
    </form>
  </div>
</div>
@endsection