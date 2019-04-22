<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="sidebar" fragment="true" %>
<%@attribute name="content" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html>
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="res/css/bootstrap.min.css" />
    <link rel="stylesheet" href="res/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="res/css/colorpicker.css" />
    <link rel="stylesheet" href="res/css/datepicker.css" />
    <link rel="stylesheet" href="res/css/uniform.css" />
    <link rel="stylesheet" href="res/css/select2.css" />
    <link rel="stylesheet" href="res/css/matrix-style.css" />
    <link rel="stylesheet" href="res/css/matrix-media.css" />
    <link rel="stylesheet" href="res/css/bootstrap-wysihtml5.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
<div id="header">
    <jsp:invoke fragment="header" />
</div>
<div id="sidebar">

    <a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li ><a href="index.jsp"><i class="icon icon-home"></i> <span>Home</span></a> </li>
        <li class="active"> <a href="newTask.jsp"><i class="icon icon-signal"></i> <span>New Task</span></a> </li>
        <li> <a href="setting.jsp"><i class="icon icon-inbox"></i> <span>Setting</span></a> </li>
        <li><a href="login.jsp"><i class="icon icon-th"></i> <span>Log out</span></a></li>
    </ul>
    <jsp:invoke fragment="sidebar"/>
</div>
<div id="content">
    <jsp:doBody/>
</div>

<script src="res/js/jquery.min.js"></script>
<script src="res/js/jquery.ui.custom.js"></script>
<script src="res/js/bootstrap.min.js"></script>
<script src="res/js/bootstrap-colorpicker.js"></script>
<script src="res/js/bootstrap-datepicker.js"></script>
<script src="res/js/masked.js"></script>
<script src="res/js/jquery.uniform.js"></script>
<script src="res/js/select2.min.js"></script>
<script src="res/js/matrix.js"></script>
<script src="res/js/matrix.form_common.js"></script>
</body>
</html>
