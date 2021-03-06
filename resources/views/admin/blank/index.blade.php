@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header header-part">
                <div class="row">
                    <div class="col-md-6 card_header_title">
                        <h3><i class="fa fa-gg-circle"></i> All Content</h3>
                    </div>
                    <div class="col-md-6 text-right card_header_btn">
                        <a href="{{url('admin/content/add')}}" class="btn"><i class="fa fa-plus-circle"></i> Add
                            Content</a>
                    </div>
                </div>
            </div>
            <div id="printableTable" class="card-body table-responsive">
                <table cellspacing="0" bordercolor="gray" id="table_with_data"
                    class=" table table-bordered custom_table custom_table_btn">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Photo</th>
                            <th>User Role</th>
                            <th>Manage</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td class="text-break">shkkk</td>
                            <td class="text-break">shkkkk</td>
                            <td class="text-break">shkkk</td>
                            <td>Photo</td>
                            {{-- <td>
                                @if($data->ban_photo!='')
                                  <img class="photo_sm" src="{{asset('uploads/'.$data->ban_photo)}}" alt="Banner"/>
                            @else
                            <img class="photo_sm" src="{{asset('uploads/no-image.png')}}" alt="Banner" />
                            @endif
                            </td> --}}
                            <td class="text-break">shkkkk</td>
                            <td>
                                <div class="btn-group btn-group-sm btn-color-ceate">
                                    <a href="{{url('admin/content/view')}}" class="btn btn-info view-btn">View</a>
                                    <a href="{{url('admin/content/update')}}" class="btn btn-warning edit-btn">Edit</a>
                                    <a href="#" class="btn btn-danger delete-btn">Delete</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-break">shkkk</td>
                            <td class="text-break">shkkkk</td>
                            <td class="text-break">shkkk</td>
                            <td>Photo</td>
                            {{-- <td>
                                @if($data->ban_photo!='')
                                  <img class="photo_sm" src="{{asset('uploads/'.$data->ban_photo)}}" alt="Banner"/>
                            @else
                            <img class="photo_sm" src="{{asset('uploads/no-image.png')}}" alt="Banner" />
                            @endif
                            </td> --}}
                            <td class="text-break">shkkkk</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{url('admin/content/view')}}" class="btn btn-info">View</a>
                                    <a href="{{url('admin/content/update')}}" class="btn btn-warning">Edit</a>
                                    <a href="#" class="btn btn-danger">Delete</a>
                                </div>
                            </td>
                        </tr>
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
@endsection