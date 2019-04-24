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
            url: "/edituser?",
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
                 window.location.href="/user";
            },
            error: function (err) {
                     alert("success 都是本地数据..等待后台中....");
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });


});