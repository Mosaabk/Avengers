<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../../res/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../../res/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../../../res/css/colorpicker.css" />
    <link rel="stylesheet" href="../../../res/css/datepicker.css" />
    <link rel="stylesheet" href="../../../res/css/uniform.css" />
    <link rel="stylesheet" href="../../../res/css/select2.css" />
    <link rel="stylesheet" href="../../../res/css/matrix-style.css" />
    <link rel="stylesheet" href="../../../res/css/matrix-media.css" />
    <link rel="stylesheet" href="../../../res/css/bootstrap-wysihtml5.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1>Task List</h1>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<!--<div id="user-nav" class="navbar navbar-inverse">-->
<!--    <ul class="nav">-->
<!--        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>-->
<!--        <li class=""><a title="" href="login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>-->
<!--    </ul>-->
<!--</div>-->



<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li ><a href="../Common/contentdemo.jsp"><i class="icon icon-home"></i> <span>Home</span></a> </li>
        <li class="active"> <a href="newTask.jsp"><i class="icon icon-signal"></i> <span>New Task</span></a> </li>
        <li> <a href="../Common/setting.jsp"><i class="icon icon-inbox"></i> <span>Setting</span></a> </li>
        <li><a href="../Login/login.jsp"><i class="icon icon-th"></i> <span>Log out</span></a></li>
    </ul>
</div>


<!--close-left-menu-stats-sidebar-->

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="../Common/contentdemo.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
        <h1>Common Form Elements</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-content nopadding">
                        <form action="#" method="get" class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">Title:</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="Title" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Multiple Select input</label>
                                <div class="controls">
                                    <select multiple >
                                        <option>First option</option>
                                        <option selected>Second option</option>
                                        <option>Third option</option>
                                        <option>Fourth option</option>
                                        <option>Fifth option</option>
                                        <option>Sixth option</option>
                                        <option>Seventh option</option>
                                        <option>Eighth option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label  class="control-label">Data Radio button</label>
                                <div class="controls">
                                    <div data-toggle="buttons-radio" class="btn-group">
                                        <button class="btn btn-primary" type="button">important</button>
                                        <button class="btn btn-primary" type="button">warning</button>
                                        <button class="btn btn-primary" type="button">low</button>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Date picker (dd-mm)</label>
                                <div class="controls">
                                    <input type="text" data-date="01-02-2013" data-date-format="dd-mm-yyyy" value="01-02-2013" class="datepicker span11">
                                    <span class="help-block">Date with Formate of  (dd-mm-yy)</span> </div>
                            </div>

                            <div class="control-group">
                                    <label class="control-label">Description</label>
                                        <div class="controls">
                                            <textarea class="textarea_editor span12" rows="12"  placeholder="Enter text ..."></textarea>
                                        </div>
                                </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="../../../res/js/jquery.min.js"></script>
    <script src="../../../res/js/jquery.ui.custom.js"></script>
    <script src="../../../res/js/bootstrap.min.js"></script>
    <script src="../../../res/js/bootstrap-colorpicker.js"></script>
    <script src="../../../res/js/bootstrap-datepicker.js"></script>
    <script src="../../../res/js/masked.js"></script>
    <script src="../../../res/js/jquery.uniform.js"></script>
    <script src="../../../res/js/select2.min.js"></script>
    <script src="../../../res/js/matrix.js"></script>
    <script src="../../../res/js/matrix.form_common.js"></script>


</body>
</html>
