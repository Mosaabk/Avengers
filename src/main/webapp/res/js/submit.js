$(document).ready(function () {
    $("#submit_btn").click(function () {
        let name = $("#tname").val();
        let pwd = $("#pwd").val();
        let Location = $("#location").val();
        let roles = $("#roles").val();
       let  uid = $("#uid").val();
        // let index = view.attr("data-defaultValue");
        // $("#tr" + index).empty();
        $.ajax({
            url: "http://localhost:8080/edituser?",
            type: "GET",
            data: {
                userid: uid,
                username : name,
                password: pwd,
                location : Location,
                roles :roles
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                 window.location.href="http://localhost:8080/user";
            },
            error: function (err) {
                     alert("success");
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });


});