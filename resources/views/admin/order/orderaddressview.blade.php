@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header header-part">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                        <h3><i class="fa fa-gg-circle"></i> View Order Address</h3>
                    </div>
                    <div class="col-md-6 text-right card_header_btn">
                        <a href="{{route('orderaddress')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
                            Back</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 offset-xlg-1">
                     
                    </div>
                    <div class="col-md-6" id="printableTable">
                        <table cellspacing="0" bordercolor="gray" id="table_with_data" class="table table-bordered table-striped table-hover custom_view_table">
                            <tr>
                                <td>Order Id</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->id}}
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->first_name}}
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->last_name}}
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->email}}
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->phone_one}}
                            </tr>
                            <tr>
                                <td>Alternate Phone</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->phone_two}}
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->city}}
                            </tr>
                            <tr>
                                <td>Country</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->country}}
                            </tr>
                            <tr>
                                <td>Zip Code</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->zip_code}}
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->address}}
                            </tr>
                            <tr>
                                <td>Dob</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->dob}}
                            </tr>
         

                           
                            <tr>
                                <td>Created At</td>
                                <td>:</td>
                                <td>{{$data->created_at}}</td>
                            </tr>

                        </table>
                    </div>
                </div>
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
@endsection