<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="res/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="res/css/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="res/css/fullcalendar.css"/>
    <link rel="stylesheet" href="res/css/matrix-style.css"/>
    <link rel="stylesheet" href="res/css/matrix-media.css"/>
    <link rel="stylesheet" href="res/css/jquery.gritter.css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>

</head>
<body>

<!--Header-part-->
    <div id="header">
    <h1>Task List</h1>
</div>
<!--close-Header-part-->

<!--sidebar-menu-->
    <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href="index.jsp"><i class="icon icon-home"></i> <span>Home</span></a></li>
        <li><a href="newTask.jsp"><i class="icon icon-signal"></i> <span>New Task</span></a></li>
        <li><a href="setting.jsp"><i class="icon icon-inbox"></i> <span>Setting</span></a></li>
        <li><a href="login.jsp"><i class="icon icon-th"></i> <span>Log out</span></a></li>
    </ul>
</div>

<!--sidebar-menu-->

<!--main-container-part-->
    <div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb">
            <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>
            Home</a>
        </div>
    </div>
    <!--End-breadcrumbs-->
</div>


    <!--End-Chart-box-->
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box collapsible">
                <div class="widget-title pass_bg"><a data-toggle="collapse" href="#collapseOne"> <span
                        class="icon"><i>1</i></span>
                    <h5>Title</h5><span class="label label-important">2019-04-21 19:14:48</span><span
                            class="label label-important">important</span>
                </a></div>

                <div id="collapseOne" class="collapse in pass_bg">
                    <p id="p_text_context" class="text_center"> This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                        This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                        This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                        This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                    </p>
                    <div id="group_icon1" class="icon_user">
                        <button id="close" class="btn btn-info">close</button>
                        <button id="repay" class="btn btn-info" data-toggle="modal" data-target="#repay_text">Reply</button>
                        <img class="add_people" src="res/img/add_icon.png" alt="" style="background-color: green"
                             data-toggle="modal" data-target="#myModal"/>
                        <img src="res/img/0.jpeg" alt=""/>
                        <img src="res/img/0.jpeg" alt=""/>
                        <img src="res/img/0.jpeg" alt=""/>
                        <img src="res/img/0.jpeg" alt=""/>
                        <img src="res/img/0.jpeg" alt=""/>
                        <img src="res/img/0.jpeg" alt=""/>
                    </div>
                    <div class="discuss-title"><a data-toggle="collapse" href="#discuss1">
                        <h5>discuss</h5>
                    </a>
                    </div>
                    <div id="discuss1" class="collapse in">
                        <div id="discuss_icon1" class="discuss_user">
                            <img src="res/img/0.jpeg"/>
                        </div>
                        <div class="widget-content"> This box is opened by default,
                            paragraphs and is full of waffle to pad out the comment. Usually,
                            you just wish these sorts of comments would come to an end.
                        </div>

                    </div>
                </div>


                <div class="widget-title"><a data-toggle="collapse" href="#collapse2"> <span
                        class="icon"><i>2</i></span>
                    <h5>Title</h5><span class="label label-warning">warning</span>
                </a></div>
                <div id="collapse2" class="collapse in">
                    <div class="widget-content"> This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                        <div id="group_icon2" class="icon_user">
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                        </div>
                        <div class="discuss-title"><a data-toggle="collapse" href="#discuss2">
                            <h5>discuss</h5>
                        </a></div>
                        <div id="discuss2" class="collapse in">
                            <div id="discuss_icon2" class="discuss_user">
                                <img src="res/img/0.jpeg"/>
                            </div>
                            <div class="widget-content"> This box is opened by default,
                                paragraphs and is full of waffle to pad out the comment. Usually,
                                you just wish these sorts of comments would come to an end.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-title"><a data-toggle="collapse" href="#collapse3"> <span
                        class="icon"><i>3</i></span>
                    <h5>Title</h5><span class="label label-success">low</span>
                </a></div>
                <div id="collapse3" class="collapse in">
                    <div class="widget-content"> This box is opened by default,
                        paragraphs and is full of waffle to pad out the comment. Usually,
                        you just wish these sorts of comments would come to an end.
                        <div id="group_icon3" class="icon_user">
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                            <img src="res/img/0.jpeg" alt=""/>
                        </div>
                        <div class="discuss-title"><a data-toggle="collapse" href="#discuss3">
                            <h5>discuss</h5>
                        </a></div>
                        <div id="discuss3" class="collapse in">
                            <div id="discuss_icon3" class="discuss_user">
                                <img src="res/img/0.jpeg"/>
                            </div>
                            <div class="widget-content"> This box is opened by default,
                                paragraphs and is full of waffle to pad out the comment. Usually,
                                you just wish these sorts of comments would come to an end.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- 模态框（Modal） -->
    <div class="modal-body">

        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body" style="text-align: center;">
                        <form role="form">
                            <div class="form-group">
                                <label>选择列表</label>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">submit</button>
                        </div>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </div>

        <!--end-main-container-part-->

        <!-- 模态框（Modal） -->
        <div class="modal-body">
            <div id="repay_text" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body" style="text-align: center;">
                            <form role="form">
                                <div class="form-group">
                                    <label>Reply</label>
                                   <textarea style="width: 100%; height: 100%; margin-right: 2px">

                                   </textarea>
                                    </select>
                                </div>
                            </form>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">submit</button>
                            </div>
                        </div>


                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
        </div>

    <script src="res/js/jquery.min.js"></script>
    <script src="res/js/jquery.ui.custom.js"></script>
    <script src="res/js/bootstrap.min.js"></script>
    <script src="res/js/index.js"></script>

</body>
</html>
