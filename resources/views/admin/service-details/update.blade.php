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
    <form method="post" action="{{route('service_details_update')}}" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="id" value="{{$data->id}}">
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Update Service Details</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('service_details')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
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
            <label class="col-sm-3 col-form-label">Service Name:</label>
            <div class="col-sm-7">
              @php
            
              $service=App\ServiceCategory::where('id',$data->service_category)->first();
              $serviceCategory=App\ServiceCategory::where('status', 1)->OrderBy('id', 'ASC')->get();
              @endphp
              <select class="col-sm-12 form-control" name="service_category">
              <option value="{{$data->service_category}}">{{$service->service_name ?? Null}}</option>
          
                @foreach ($serviceCategory as $category)
                <option value="{{$category->id}}">{{$category->service_name}}</option>
                @endforeach
              </select>
            </div>
          </div>
        <div class="form-group row custom_form{{$errors->has('s_name')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Name:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="s_name" value="{{$data->s_name}}">
              @if ($errors->has('s_name'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('s_name') }}</strong>
              </span>
              @endif
            </div>
          </div>

          <div class="form-group row custom_form{{$errors->has('link')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Website Link:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="link" value="{{$data->link}}">
              @if ($errors->has('link'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('link') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('subscription_price')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Subscription Price:</label>
            <div class="col-sm-7">
              <input type="number" class="form-control" name="subscription_price" value="{{$data->subscription_price}}">
              @if ($errors->has('subscription_price'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('subscription_price') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('buy_price')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">At a Time Buy Price:</label>
            <div class="col-sm-7">
              <input type="number" class="form-control" name="buy_price" value="{{$data->buy_price}}">
              @if ($errors->has('buy_price'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('buy_price') }}</strong>
              </span>
              @endif
            </div>
          </div>
          <div class="form-group row custom_form{{$errors->has('s_image')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Image:</label>
            <div class="col-sm-7">
              <input type="file" class="form-control" name="s_image">
              @if ($errors->has('s_image'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('s_image') }}</strong>
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