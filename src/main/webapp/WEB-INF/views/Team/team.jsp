<%--
  Created by IntelliJ IDEA.
  User: Mosaabk
  Date: 2019-04-22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ include file="teamstyle.jsp"%>--%>

<t:genericpage>

    <jsp:body>
        <div class="card">
            <div class="card-body">
                <h4 class="card-title m-b-0">Teams</h4>
            </div>
            <div class="comment-widgets scrollable">
                <c:forEach var="team" items="${teamList}" >
                    <div class="d-flex flex-row comment-row">
                        <div class="p-2">
                            <img src="<c:url value="/res/img/users/1.jpg" />" alt="team-avatar" width="50" class="round-circle">
                        </div>
                        <div class="comment-text w-100">
                            <h6 class="font-medium">${team.name}</h6>
                            <span class="m-b-15 d-block">${team.description}</span>
                        </div>
                        <div class="comment-footer">
                            <button type="button" class="btn btn-cyan btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </jsp:body>
</t:genericpage>
