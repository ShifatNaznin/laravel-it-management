@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header header-part">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                        <h3><i class="fa fa-gg-circle"></i> View Cyber Security View</h3>
                    </div>
                    <div class="col-md-6 text-right card_header_btn">
                        <a href="{{route('cybersecurityview')}}" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>
                            Back</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 offset-xlg-1">
                      
                        <img style="width:200px" src="{{asset('uploads/images/'.$data->photo)}}" alt="photo" />
                    </div>
                    <div class="col-md-6" id="printableTable">
                        <table cellspacing="0" bordercolor="gray" id="table_with_data" class="table table-bordered table-striped table-hover custom_view_table">
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->name}}
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->price}}
                            </tr>
                            <tr>
                                <td>Duration</td>
                                <td>:</td>
                                <td class="text-break">
                                    {{$data->duration}}
                            </tr>
                        
                          
                        
                            <tr>
                                <td>Details</td>
                                <td>:</td>
                                <td class="text-break">
                                    {!!$data->details!!}
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