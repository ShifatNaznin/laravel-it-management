@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header header-part">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                        <h3><i class="fa fa-gg-circle"></i> All Order Address</h3>
                    </div>
                  
                </div>
            </div>
            <div id="printableTable" class="card-body table-responsive">
                <table cellspacing="0" bordercolor="gray" id="table_with_data"
                    class=" table table-bordered custom_table custom_table_btn">
                    <thead>
                        <tr>
                            <th>Order Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone </th>
                            <th>Alternate Phone</th>
                            <th>City</th>
                            <th>Country</th>
                            <th>State</th>
                            <th>Zip Code</th>
                           
                            <th>Message</th>
                            <th>Dob</th>
                        
                         
                            <th>Manage</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($value as $data)

                        <tr>

                            <td class="text-break">{{$data->id}}</td>
                            <td class="text-break">{{$data->first_name}}</td>
                            <td class="text-break">{{$data->last_name}}</td>
                            <td class="text-break">{{$data->email}}</td>
                            <td class="text-break">{{$data->phone_one}}</td>
                            <td class="text-break">{{$data->phone_two}}</td>
                            <td class="text-break">{{$data->city}}</td>
                            <td class="text-break">{{$data->country}}</td>
                            <td class="text-break">{{$data->state}}</td>
                            <td class="text-break">{{$data->zip_code}}</td>
                            <td class="text-break">{{$data->message}}</td>
                            <td class="text-break">{{$data->dob}}</td>
                           

                            <td>
                                <div class="btn-group btn-group-sm btn-color-ceate">
                                    {{-- <a href="{{route('orderaddress_view',$data->id)}}"
                                        class="btn btn-info view-btn">View</a> --}}
                                  
                                    <a href="#" class="btn btn-danger delete-btn" data-toggle="modal" id="softDelete"
                                        data-target="#softDelModal" data-id="{{$data->id}}">Delete</a>
                                </div>
                            </td>
                        </tr>

                        {{-- @endforeach --}}
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
<div class="modal fade" id="softDelModal" tabindex="-1" role="dialog" aria-labelledby="SoftDelModalHeading"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <form method="post" action="{{route('orderaddress_delete')}}">
            @csrf
            <div class="modal-content">
                <div class="modal-header modal-header-color">
                    <h5 class="modal-title" id="SoftDelModalHeading">Confirm Message</h5>
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