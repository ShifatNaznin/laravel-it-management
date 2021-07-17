@extends('layouts.admin')
@section('content')

<div class="row">
  <div class="col-md-12">
    <form method="post" action="{{route('service_category_store')}}" enctype="multipart/form-data">
      @csrf
      <div class="card">
        <div class="card-header header-part">
          <div class="row">
            <div class="col-md-6 card_header_title">
              <h3><i class="fa fa-gg-circle"></i> Add Service Category</h3>
            </div>
            <div class="col-md-6 text-right card_header_btn">
              <a href="{{route('service_category')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
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
          <div class="form-group row custom_form{{$errors->has('service_name')? ' has-error':''}}">
            <label class="col-sm-3 col-form-label">Service Name:</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="service_name" value="{{old('service_name')}}">
              @if ($errors->has('service_name'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('service_name') }}</strong>
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