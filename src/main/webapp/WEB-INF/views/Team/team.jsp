<%--
  Created by IntelliJ IDEA.
  User: Mosaabk
  Date: 2019-04-22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:genericpage>
    <jsp:attribute name="sidebar">

    </jsp:attribute>
    <jsp:body>
        <div class="card">
            <ul>
                <c:forEach var="team" items="${teamList}" >
                    <li>${team.name}</li>
                </c:forEach>
            </ul>
        </div>
    </jsp:body>
</t:genericpage>
