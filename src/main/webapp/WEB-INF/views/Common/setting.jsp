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
    <script src="../../../res/js/setting.js"></script>
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
        <li ><a href="contentdemo.jsp"><i class="icon icon-home"></i> <span>Home</span></a> </li>
        <li> <a href="../Task/newTask.jsp"><i class="icon icon-signal"></i> <span>New Task</span></a> </li>
        <li class="active"> <a href="setting.jsp"><i class="icon icon-inbox"></i> <span>Setting</span></a> </li>
        <li><a href="../Login/login.jsp"><i class="icon icon-th"></i> <span>Log out</span></a></li>
    </ul>
</div>


<!--close-left-menu-stats-sidebar-->

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="contentdemo.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
        <h1>Common Form Elements</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-content nopadding">
                        <img src="" id="portrait" style="width: 100%; height: 100%; display: block;" />

                    </div>
                </div>
            </div>

            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Personal-info</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="#" method="get" class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">First Name :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="First name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Last Name :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="Last name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Password input</label>
                                <div class="controls">
                                    <input type="password"  class="span11" placeholder="Enter Password"  />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Company info :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="Company name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Description field:</label>
                                <div class="controls">
                                    <input type="text" class="span11" />
                                    <span class="help-block">Description field</span> </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Message</label>
                                <div class="controls">
                                    <textarea class="span11" ></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">File upload input</label>
                                <div class="controls">
                                    <input type="file" id="file" onchange="showPreview(this, 'portrait')" />
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

<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>
