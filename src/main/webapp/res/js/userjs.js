$(document).ready(function () {
    $('#user_table').DataTable();

    $("#role_btn").dblclick(function(){
        $(this).hide();
    });

});


function add_roles(){

}

function new_user(){

}


function deleteItem(obj){
    //add ajax if success doing this else nothing happen
    obj.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode);

}

function remove_role(obj){
    obj.parentNode.removeChild(obj);
}
