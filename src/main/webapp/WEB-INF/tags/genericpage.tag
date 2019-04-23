<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="preload" fragment="true" %>
<%@attribute name="topbar" fragment="true" %>
<%@attribute name="leftSidebar" fragment="true" %>
<%@attribute name="pageWrapper" fragment="true" %>
<%@attribute name="mainWrapper" fragment="true" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<c:url value="/res/css/style.min.css" /> " />
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
    <jsp:invoke fragment="preload"/>
</div>
<div id="main-wrapper">
    <header class="topbar" data-navbarbg="skin5">
        <jsp:invoke fragment="topbar"/>
    </header>

    <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav" class="p-t-30">
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/Welcome" />" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Home</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/task" />" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">Task</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/user" />" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">User</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/team" />" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">Team</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<c:url value="/logout" />" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Log out</span></a></li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
        <jsp:invoke fragment="leftSidebar"/>
    </aside>

    <jsp:invoke fragment="mainWrapper"/>
</div>

<div class="page-wrapper">
    <jsp:doBody/>
</div>

<%--<div id="sidebar">--%>

<%--    <a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>--%>
<%--    <ul>--%>
<%--        <li ><a href="../views/Common/contentdemo.jsp"><i class="icon icon-home"></i> <span>Home</span></a> </li>--%>
<%--        <li> <a href="<c:url value="/task" />"><i class="icon icon-inbox"></i> <span>Task</span></a> </li>--%>
<%--        <li> <a href="<c:url value="/user" />"><i class="icon icon-inbox"></i> <span>User</span></a> </li>--%>
<%--        <li> <a href="<c:url value="/team" />"><i class="icon icon-inbox"></i> <span>Team</span></a> </li>--%>
<%--        <li><a href="<c:url value="/logout" />"><i class="icon icon-th"></i> <span>Log out</span></a></li>--%>
<%--    </ul>--%>
<%--    <jsp:invoke fragment="sidebar"/>--%>
<%--</div>--%>



<%--<script src="<c:url value="/res/js/jquery.min.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/jquery.ui.custom.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/bootstrap.min.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/bootstrap-colorpicker.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/bootstrap-datepicker.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/masked.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/jquery.uniform.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/select2.min.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/matrix.js" />"></script>--%>
<%--<script src="<c:url value="/res/js/matrix.form_common.js" />"></script>--%>

<script src="<c:url value="/res/libs/jquery/dist/jquery.min.js" />"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<c:url value="/res/libs/popper.js/dist/umd/popper.min.js" />"></script>
<script src="<c:url value="/res/libs/bootstrap/dist/js/bootstrap.min.js" />"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="<c:url value="/res/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js" />"></script>
<script src="<c:url value="/res/extra-libs/sparkline/sparkline.js" />"></script>
<!--Wave Effects -->
<script src="<c:url value="/res/dist/js/waves.js" />"></script>
<!--Menu sidebar -->
<script src="<c:url value="/res/dist/js/sidebarmenu.js" />"></script>
<!--Custom JavaScript -->
<script src="<c:url value="/res/dist/js/custom.min.js" />"></script>
</body>
</html>
