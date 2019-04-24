<%@ page import="xyz.avengersofwap.util.TeamUtil" %>
<%@ page import="xyz.avengersofwap.model.Team" %>
<%@ page import="xyz.avengersofwap.model.User" %>
<%@ page import="xyz.avengersofwap.util.UserUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: 凯
  Date: 2019/4/23
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Avengers</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<c:url value="/res/libs/select2/dist/css/select2.min.css" />" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/res/css/style.min.css" /> " />

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>

<%!
    String userId = "";
    User user = null;
%>

<%
    String param = "";
    try {
        param = request.getParameter("userId");
        if (!param.isEmpty()) {
            userId = param;
//            team = TeamUtil.teamWithId(teamId);
        }
    }
    catch (Exception e){
        userId = "";
    }

%>

<body>
<div id="main-wrapper">
    <jsp:include page="../Common/topbar.jsp"></jsp:include>
    <jsp:include page="../Common/sidebar.jsp"></jsp:include>

    <div class="page-wrapper">
        <div class="card">
            <form class="form-horizontal">
                <div class="card-body">
                    <h4 class="card-title">User Edit</h4>
                    <div class="form-group row col-md-6">
                        <label for="tname" class="col-sm-3 text-right control-label col-form-label">name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="tname" placeholder="Team Name Here">
                        </div>
                    </div>
                    <div class="form-group row col-md-6">
                        <label for="tdesc" class="col-sm-3 text-right control-label col-form-label">password</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="tdesc" placeholder="Team Description Here">
                        </div>
                    </div>
                    <div class="form-group row col-md-6">
                        <label class="col-sm-3 text-right control-label col-form-label">roles</label>
                        <div class="col-md-9">
                            <select class="select2 form-control m-t-15" multiple="multiple" style="height: 36px;width: 100%;">

                            </select>
                        </div>
                    </div>
                    <div class="border-top">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="<c:url value="/res/libs/jquery/dist/jquery.min.js" />"></script>
<script src="<c:url value="/res/libs/popper.js/dist/umd/popper.min.js" />"></script>
<script src="<c:url value="/res/libs/bootstrap/dist/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/res/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js" />"></script>
<script src="<c:url value="/res/extra-libs/sparkline/sparkline.js" />"></script>
<script src="<c:url value="/res/dist/js/waves.js" />"></script>
<script src="<c:url value="/res/dist/js/sidebarmenu.js" />"></script>
<script src="<c:url value="/res/dist/js/custom.min.js" />"></script>
<script src="<c:url value="/res/libs/select2/dist/js/select2.full.min.js" /> "></script>
<script src="<c:url value="/res/libs/select2/dist/js/select2.min.js" /> "></script>
<script>
    $(".select2").select2();
</script>
</body>
</html>
