<%--
  Created by IntelliJ IDEA.
  User: 凯
  Date: 2019/4/22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Avengers</title>
</head>
<body>
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
    </aside>
</body>
</html>
