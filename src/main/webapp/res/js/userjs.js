$(document).ready(function () {
    $('#user_table').DataTable();

    $('.add_new_role').click(function () {

    })


    $(".deletebtn").click(function(){
        const view = $(this);
        let userID=view.attr("data-value");
        let index=view.attr("data-defaultValue");
        $("#tr"+index).empty();
    });
    $(".role_btn").click(function(){
        const view  = $(this);
        let rolsId = view.attr("data-value");
        let index=view.attr("data-defaultValue");

        view.remove();

    });



    $("#select_role_save").click(function () {
        var options=$("#select_role option:selected");

    });


});

function deleteItme(id,trLayout){
   console.log(id +"------------"+trLayout);
}
