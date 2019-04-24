$(document).ready(function () {
    var userId;
    var  index;
    $('#user_table').DataTable();

    $('.add_new_role').click(function () {
        const view = $(this);
        //view.attr("data-value");
         index = view.attr("data-defaultValue");
        userId = view.attr("data-value");
        let val = $("#roles").val();

    })


    $(".deletebtn").click(function () {
        const view = $(this);
        let userID = view.attr("data-value");
        let index = view.attr("data-defaultValue");
        $("#tr" + index).remove();
        $.ajax({
            url: "http://localhost:8080/delete?",
            type: "GET",
            data: {
                userid: userID
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                refresh();
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            },
            error: function (err) {
                // alert(err);
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });
    $(".role_btn").click(function () {
        const view = $(this);
        let rolsId = view.attr("data-value");
        let userId = view.attr("data-defaultValue");

        view.remove();
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
                refresh();
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            },
            error: function (err) {
                // alert(err.toString());
                // window.location.href="http://localhost:8080/delete?userid="+userid;
            }
        });
    });


    $("#select_role_save").click(function () {
        const val = $("#select_role");
        let options = val.val();
        $("#td"+index).append(" <button id=\"td_role${index.index}\" data-defaultValue=\"${index.index}\" data-value=\"${role}\" type=\"button\" class=\"btn btn-outline-primary role_btn\" >group7</button>")

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
                refresh();
                userId = "";
                //  $("#td"+index).append(" <button id=\"td_role${index.index}\" data-defaultValue=\"${index.index}\" data-value=\"${role}\" type=\"button\" class=\"btn btn-outline-primary role_btn\">+c+</button>")
            },
            error: function (err) {
                // alert(err.toString());
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
                window.location.href = "http://localhost:8080/userinfo?userid=" + userId;
            },
            error: function (err) {
                // alert(err.toString());
                window.location.href = "http://localhost:8080/userinfo?userid=" + userId;
            }
        });

    })

    $("#submit_btn").click(function () {
        $("#tbody").append("<tr id=\"tr${idxStatus.index}\" data-defaultValue=\"${idxStatus.index}\">\n" +
            "                                    <td style=\"width: 10%;\">a</>\n" +
            "                                    <td style=\"width: 10%;\">a</td>\n" +
            "                                    <td style=\"width: 10%;\">a</td>\n" +
            "                                    <td id=\"td${idxStatus.index}\" style=\"width: 70%\">\n" +
            "                                        <c:forEach var=\"role\" items='${team.roles}' varStatus=\"index\" >\n" +
            "                                        <button id=\"td_role${index.index}\" data-defaultValue=\"${index.index}\" data-value=\"${role}\" type=\"button\" class=\"btn btn-outline-primary role_btn\">group1</button>\n" +
            "                                        </c:forEach>\n" +
            "                                    </td>\n" +
            "                                    <td> <a id=\"a${idxStatus.index}\" data-value=\"${team.location}\" class=\"locala\" data-target=\"#map\"  data-toggle=\"modal\" href=\"javascript:void(0);\">a</a></td>\n" +
            "                                    <td id=\"itme${idxStatus.index}\" style=\"width: 10%\">\n" +
            "                                        <a data-value=\"${team.userId}\" data-defaultValue=\"${idxStatus.index}\" href=\"javascript:void(0)\" data-toggle=\"modal\" data-target=\"#add-new\" class=\"btn m-t-20 btn-info btn-block waves-effect waves-light add_new_role\">\n" +
            "                                            Add New\n" +
            "                                        </a>\n" +
            "                                        <form >\n" +
            "                                            <input type=\"hidden\" name=\"userId\" value=\"${team.userId}\" />\n" +
            "                                            <input  type=\"button\" class=\"btn btn-cyan btn-sm editBtn\" value=\"Edit\" />\n" +
            "                                        </form>\n" +
            "                                        <button id=\"btn_${idxStatus.index}\" data-value=\"${team.userName}\" data-defaultValue=\"${idxStatus.index}\" type=\"button\" class=\"btn btn-danger btn-sm deletebtn\">Delete</button>\n" +
            "                                    </td>\n" +
            "                                </tr>");
        // var rolesvalue = alert($("#roles").val());
        $.ajax({
            url: "http://localhost:8080/addnewuser?",
            type: "GET",
            data: {
                name: $("#userName").val(),
                password: $("#password").val(),
                uid: $("#uid").val(),
                rolesvalue: rolesvalue
            },
            cache: false,
            dataType: "json",
            success: function (data) {
                location.reload();
            },
            error: function (err) {
                // alert(err.toString());
            }
        });

    });


});


function refresh(){
    $("#submit_btn").click(function () {
        $.ajax({
            url: "http://localhost:8080/user",
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

}

