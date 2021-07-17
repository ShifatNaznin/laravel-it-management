$(function () {


    $('#cartAjax').click(function (e) {
        e.preventDefault();
        // alert('ok');
        var formdata = new FormData(this);
        // console.log(formdata);

        var datatype = $(this).data('type');
        // alert(datatype);
        $.ajax({
            url: this.action,
            type: this.method,
            data: formdata,
            dataType: 'JSON',
            processData: false,
            contentType: false,
            success(data) {
                swal({
                    title: 'Successful',
                    text: data.success,
                    type: 'success',
                    timer: 3000
                });
                return cartItems();
            }
        });

    });


    $(document).on('click', '.cartadd', function () {
      // alert('ok');
      // var rowid = $(this).data('rowid');
      var id = id;
      var url = window.origin + '/cartitems';

      $.ajax({
          url: url,
          type: "get",
          data: {
              id: id,
              // rowid: rowid
          },
          dataType: 'JSON',
          // beforeSend(){
          // 	$('.loading').css('display', 'block');
          // },
          success(data) {
              swal({
                  title: 'Successful',
                  text: data.success,
                  type: 'success',
                  timer: 3000
              });
              return cartItems();
          },
          complete() {
              $('.loading').css('display', 'none');
          }
      });

  });

  


    function cartItems() {
        var url = window.origin + '/cartitems';
        // console.log(url);
        $.ajax({
            url: url,
            type: "GET",
            dataType: 'HTML',
            success(data) {
                $('#cartItems').html(data);
            }
        });
    }


    function cart_update_page() {
        var url = window.origin + '/cart-update-page';
        // console.log(url);
        $.ajax({
            url: url,
            type: "GET",
            dataType: 'HTML',
            success(data) {

                $('table').html(data);
            }
        });
    }


    $(document).on('click', '.increase', function () {
        // alert('ok');
        var rowid = $(this).data('rowid');
        var qty = $(this).prev().val();
        var url = window.origin + '/cart/update';

        $.ajax({
            url: url,
            type: "get",
            data: {
                qty: qty,
                rowid: rowid
            },
            dataType: 'JSON',
            // beforeSend(){
            // 	$('.loading').css('display', 'block');
            // },
            success(data) {
                swal({
                    title: 'Successful',
                    text: data.success,
                    type: 'success',
                    timer: 3000
                });
                return cartItems() + cart_update_page();
            },
            complete() {
                $('.loading').css('display', 'none');
            }
        });

    });




    $(document).on('click', '.reduced', function () {
        var rowid = $(this).data('rowid');
        var qty = $(this).prev().prev().val();
        var url = window.origin + '/cart/update';

        $.ajax({
            url: url,
            type: "get",
            data: {
                qty: qty,
                rowid: rowid
            },
            dataType: 'JSON',
            // beforeSend(){
            // 	$('.loading').css('display', 'block');
            // },
            success(data) {
                swal({
                    title: 'Successful',
                    text: data.success,
                    type: 'success',
                    timer: 3000
                });
                return cartItems() + cart_update_page();
            },
            complete() {
                $('.loading').css('display', 'none');
            }
        });

    });




    $(document).on('click', '.btn-remove', function (e) {
        e.preventDefault();
        var url = $(this).attr('href');

        $.ajax({
            url: url,
            type: "get",
            dataType: 'JSON',
            // beforeSend(){
            // 	$('.loading').css('display', 'block');
            // },
            success(data) {
                swal({
                    title: 'Successful',
                    text: data.success,
                    type: 'success',
                    timer: 3000
                });
                return cartItems() + cart_update_page();
            },
            complete() {
                $('.loading').css('display', 'none');
            }
        });

    });

})
