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
    <form method="post" action="{{route('service_update')}}" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="id" value="{{$data->id}}">
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Update Web Service</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('service')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
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
        <div class="form-group row custom_form{{$errors->has('heading')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Heading:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="heading" value="{{$data->heading}}">
              @if ($errors->has('heading'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('heading') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('sub_heading')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Sub Heading</label>
            <div class="col-sm-7">
              <textarea id="my-editor" name="sub_heading" class="form-control">{{$data->sub_heading}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor', options);
              </script>
                @if ($errors->has('sub_heading'))
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('sub_heading') }}</strong>
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
         

          <div class="form-group row custom_form{{$errors->has('feature')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Features</label>
            <div class="col-sm-7">
              <textarea id="my-editor2" name="feature" class="form-control">{{$data->feature}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor2', options);
              </script>
              @if ($errors->has('feature'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('feature') }}</strong>
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