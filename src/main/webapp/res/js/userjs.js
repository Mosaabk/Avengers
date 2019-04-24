$(document).ready(function () {
    var userId;
    $('#user_table').DataTable();

    $('.add_new_role').click(function () {
        const view = $(this);
        //view.attr("data-value");
        let index = view.attr("data-defaultValue");
        userId = view.attr("data-value");
        // $("#td"+index).append(" <button id=\"td_role${index.index}\" data-defaultValue=\"${index.index}\" data-value=\"${role}\" type=\"button\" class=\"btn btn-outline-primary role_btn\">+c+</button>")

    })


    $(".deletebtn").click(function () {
        const view = $(this);
        let userID = view.attr("data-value");
        let index = view.attr("data-defaultValue");
        $("#tr" + index).empty();


        $.ajax({
            url: "http://localhost:8080/delete?",
            type: "GET",
            data: {
                userid: userID
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                location.reload();
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            },
            error: function (err) {
                alert(err.toString());
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });
    $(".role_btn").click(function () {
        const view = $(this);
        let rolsId = view.attr("data-value");
        let userId = view.attr("data-defaultValue");

        // view.remove();
        //

        $.ajax({
            url: "http://localhost:8080/deleterole?",
            type: "GET",
            data: {
                rolsid: rolsId,
                userid: userId
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                location.reload();
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            },
            error: function (err) {
                alert(err.toString());
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });


    $("#select_role_save").click(function () {
        const val = $("#select_role");
        let options = val.val();

        $.ajax({
            url: "http://localhost:8080/addrole?",
            type: "GET",
            data: {
                userid: userId,
                role: options
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                location.reload();
                userId = "";
                //  $("#td"+index).append(" <button id=\"td_role${index.index}\" data-defaultValue=\"${index.index}\" data-value=\"${role}\" type=\"button\" class=\"btn btn-outline-primary role_btn\">+c+</button>")
            },
            error: function (err) {
                alert(err.toString());
                userId = "";
            }
        });


    });

    $(".editBtn").click(function () {
        const view = $(this);
        let userId = view.val();
        console.log(userId);

        $.ajax({
            url: "http://localhost:8080/userinfo?",
            type: "GET",
            data: {
                userid: userId
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                alert("11111");
                window.location.href = "http://localhost:8080/userinfo?userid=" + userId;
            },
            error: function (err) {
                window.location.href = "http://localhost:8080/userinfo?userid=" + userId;
            }
        });

    })

    $("#submit_btn").click(function () {
        $.ajax({
            url: "http://localhost:8080/userinfo?",
            type: "GET",
            data: {
                name: $("#userName").val(),
                password: $("#password").val(),
                uid: $("#uid").val(),
                roles: $("#roles").val()
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                location.reload();
            },
            error: function (err) {
                console.log(err);
            }
        });

    });


});

