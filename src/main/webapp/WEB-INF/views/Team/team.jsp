<%--
  Created by IntelliJ IDEA.
  User: Mosaabk
  Date: 2019-04-22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Avengers</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<c:url value="/res/css/style.min.css" /> " />
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<%--<jsp:include page="../Common/preload.jsp"></jsp:include>--%>

<div id="main-wrapper">
    <jsp:include page="../Common/topbar.jsp"></jsp:include>
    <jsp:include page="../Common/sidebar.jsp"></jsp:include>

    <div class="page-wrapper">
        <div class="card">
            <div class="card-body p-b-0">
                <div class="d-flex flex-row justify-content-between card-title m-b-0">
                    <h4>Teams</h4>
                    <button type="button" class="float-right btn btn-default btn-sm">New Team</button>
                </div>
            </div>
            <div class="comment-widgets scrollable">
                <c:forEach var="team" items="${teamList}" >
                    <div class="d-flex flex-row comment-row">
                        <div class="p-2">
                            <img src="<c:url value="/res/img/users/1.jpg" />" alt="team-avatar" width="50" class="rounded-circle">
                        </div>
                        <div class="comment-text w-100" data-defaultValue="${team.id}">
                            <h6 class="font-medium">${team.name}</h6>
                            <span class="m-b-15 d-block">${team.description}</span>
                            <div class="comment-footer">
                                <span class="text-muted float-right"> </span>
                                <form action="<c:url value="/teamInfo" />" method="get">
                                    <input type="hidden" name="teamId" value="${team.id}" />
                                    <input type="submit" id="edit${team.id}" type="button" class="btn btn-cyan btn-sm editBtn" value="Edit" />
                                    <input type="submit" id="del${team.id}" type="button" class="btn btn-danger btn-sm delBtn" value="Delete">
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
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

<script src="<c:url value="/res/js/team/team.js"/> "></script>
</body>
</html>

