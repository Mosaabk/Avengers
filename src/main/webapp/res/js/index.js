$(document).ready(function() {
    var img =  $(".icon_user>img").not(".add_people");
    var add_btn = $(".add_people");
    var img_src ;
    var text_center = $(".text_center");
    var close_btn =$("#close");
    var prev_element =$("#p_text_context");
    var repay_btn =$("#repay");
    var collapseOne = $("#collapseOne");


    close_btn.click(function () {
        prev_element.css("text-decoration","line-through")
        $(this).hide();
        repay_btn.hide();
    });
    repay_btn.click(function () {

    });
 
    img.mouseover(function () {
        var val=$(this);
        img_src = val.attr("src")
        val.attr("src","img/minus_icon.png");
    });
    img.mouseout(function () {

        let val=$(this);
        val.attr("src",img_src);
    });
    img.click(function(){

       });

    add_btn.mouseover(function(){
        let val =$(this);
    });
    add_btn.click(function(){
        let val =$(this);

    });



    text_center.dblclick(function(){
        let val=$(this);
        let text=val.text();
        let input=$('<textarea id="textarea_context" style=" width: 100%; height: 100px; "> '+text+'</textarea>  <button  id="close" class="btn btn-info">close</button>');
        val.html( input );

        $("#close").click(function () {
            let text=$("#textarea_context").val();
            // alert(text);
            let a=$('<p style=" width: 100%; height: auto;"> '+text+' </p>');
            val.html( a );
        });
    });







});


