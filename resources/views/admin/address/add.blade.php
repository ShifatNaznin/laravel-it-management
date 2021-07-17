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
    <form method="post" action="{{route('address_store')}}" enctype="multipart/form-data">
      @csrf
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Add Address</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('address')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
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
          <div class="form-group row custom_form{{$errors->has('name')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Name:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="name" value="{{old('name')}}">
              @if ($errors->has('name'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('name') }}</strong>
              </span>
              @endif
            </div>
          </div>

          <div class="form-group row custom_form{{$errors->has('phone')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Phone:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
              @if ($errors->has('phone'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('phone') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('email')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Email:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="email" value="{{old('email')}}">
              @if ($errors->has('email'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
              @endif
            </div>
          </div>

          <div class="form-group row custom_form{{$errors->has('address')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Address</label>
            <div class="col-sm-7">
              <textarea id="my-editor" name="address" class="form-control">{{old('address')}}</textarea>
              <script src="{{asset('contents/admin')}}/assets/js/ckeditor/ckeditor.js"></script>
              <script>
                var options = {
                      width: "100%",
                  };
                  CKEDITOR.replace('my-editor', options);
              </script>
                @if ($errors->has('address'))
                <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('address') }}</strong>
                </span>
                @endif
            </div>
          </div>
            
      
      
          <div class="form-group row custom_form{{$errors->has('linkedin')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Linkedin Link:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="linkedin" value="{{old('linkedin')}}">
              @if ($errors->has('linkedin'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('linkedin') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('facebook')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Facebook Link:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="facebook" value="{{old('facebook')}}">
              @if ($errors->has('facebook'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('facebook') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('twitter')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Twitter Link:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="twitter" value="{{old('twitter')}}">
              @if ($errors->has('twitter'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('twitter') }}</strong>
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