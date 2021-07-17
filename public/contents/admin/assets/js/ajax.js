$(function () {

    $('#category_id').on('change', function () {
        // alert('ok');
        var id = $(this).val();
        var url = window.origin + '/admin/subcategory/' + id;

    

        $.ajax({
            url: url,
            type: 'GET',
            dataType: 'HTML',
            success: function(data) {
                $('#subcategories').html(data);
                   
            }
        });
    });

});


// "use strict";
$(document).ready(function () {
    $('#test').on('click', function () {
        var link = $(this).data('url');
        alert('link');
        $.ajax({
            type: 'post',
            url: link,
            dataType: 'JSON',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="token"]').attr('content')
            },
            beforeSend: function (data) {
                console.log('start');
            },
            success: function (data) {
                console.log('running');
            },
            complete: function (data) {
                var value = ('#title').val();
                $('#result').val() = value;
            }
        });
    });


    $('#softDelete2').on('click', function () {
        var link = $(this).data('url');
        alert(link);
        $.ajax({
            type: 'get',
            url: link,
            dataType: 'JSON',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="token"]').attr('content')
            },
            beforeSend: function () {
                console.log('start');
            },
            success: function () {
                console.log('running');
            },
            complete: function () {
                console.log('complete');
            }
        });
    });

});




