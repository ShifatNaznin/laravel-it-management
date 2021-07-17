@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header header-part">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                        <h3><i class="fa fa-gg-circle"></i> All Service Details</h3>
                    </div>
                    <div class="col-md-6 text-right card_header_btn">
                        <a href="{{route('service_details_add')}}" class="btn"><i class="fa fa-plus-circle"></i> Add
                            Service Details</a>
                    </div>
                </div>
            </div>
            <div id="printableTable" class="card-body table-responsive">
				<table cellspacing="0" bordercolor="gray" id="allTable"
					class=" table table-bordered custom_table custom_table_btn">
					<thead>
                        <tr>

                            <th>#</th>
                            <th>Name</th>
                            <th>Service Category</th>
                            <th>link</th>
                            <th>Subscription Price</th>
                            <th>Buy</th>
                            <th>Image</th>

                            <th>Manage</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $co=1;
                        @endphp
                        @foreach ($value as $data)
                        @php
                        $service=App\ServiceCategory::where('id',$data->service_category)->first();
                        @endphp
                        <tr>
                            <td>{{$co}}</td>
                            <td class="text-break">{{$data->s_name}}</td>
                            <td class="text-break">{{$service->service_name ?? Null}}</td>
                            <td class="text-break">{{$data->link}}</td>
                            <td class="text-break">{{$data->subscription_price}}</td>
                            <td class="text-break">{{$data->buy_price}}</td>
                            <td>
                                <img src="{{ asset('/uploads/'.$data->s_image) }}" alt="" style="height: 50px !important;">
                            </td>
                            <td>
                                <div class="btn-group btn-group-sm btn-color-ceate">
                                    <a href="{{route('service_details_view',$data->id)}}"
                                        class="btn btn-info view-btn">View</a>
                                    <a href="{{route('service_details_edit',$data->id)}}"
                                        class="btn btn-warning edit-btn">Edit</a>
                                    <a href="#" class="btn btn-danger delete-btn" data-toggle="modal" id="softDelete"
                                        data-target="#softDelModal" data-id="{{$data->id}}">Delete</a>
                                </div>
                            </td>
                        </tr>

                        @php
                        $co++;
                        @endphp
                        @endforeach
                    </tbody>
                </table>
                <div id="editor"></div>
                <iframe name="print_frame" width="0" height="0" frameborder="0" src="about:blank"></iframe>
            </div>
            <div class="card-footer header-part">
                <button onclick="generatePDF()" class="btn btn-sm btn-danger">PDF</button>
                <button onclick="$('table').tblToExcel();" class="btn btn-sm btn-success">EXCEL</button>
                <button id="csv" class="btn btn-sm btn-info">CSV</button>
                <button id="json" class="btn btn-sm btn-warning">JSON</button>
                <button onclick="printDiv()" class="btn btn-sm btn-primary">PRINT</button>
            </div>
        </div>
    </div>
</div>

<!--Delete Modal Code-->
<div class="modal fade" id="softDelModal" tabindex="-1" role="dialog" aria-labelledby="SoftDelModalName"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <form method="post" action="{{route('service_details_delete')}}">
            @csrf
            <div class="modal-content">
                <div class="modal-header modal-header-color">
                    <h5 class="modal-title" id="SoftDelModalName">Confirm Message</h5>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this information?
                    <input type="hidden" id="modal_id" name="modal_id">
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary modal-delete-btn">YES</button>
                    <button type="button" class="btn btn-secondary modal-close-btn" data-dismiss="modal">NO</button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection