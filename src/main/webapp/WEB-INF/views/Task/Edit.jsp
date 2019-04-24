<%@ page import="xyz.avengersofwap.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Mosaabk
  Date: 2019-04-22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
%@ page isELIgnored = "true" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="bodyContent">
    <%
        Task task = (Task)request.getSession().getAttribute("task");
    %>
    <div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Edit Task</h5>
                <div class="table-responsive">
                    <form method="post"
                        <% if(task.id() == 0) { %>
                            <input type="hidden" name="r" value="add" />
                        <% } else { %>
                            <input type="hidden" name="r" value="save" />
                        <% } %>
                        <div id="zero_config_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="Id">Taks Id</label>
                                    <input type="text" id="Id" name="Id" value="<%= task.Id %>"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="title">Title</label>
                                    <input type="text" id="title" name="title" value="<%= task.title %>"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="priority">priority</label>
                                    <input type="text" id="priority" name="priority" value="<%= task.priority %>"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="Duedate">Duedate</label>
                                    <input type="text" id="Duedate" name="Duedate" value="<%= task.Duedate %>"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="DeveloperId">Developer</label>
                                    <input type="text" id="DeveloperId" name="DeveloperId" value="<%= task.DeveloperId %>"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="TeamId">Team</label>
                                    <input type="text" id="TeamId" name="TeamId" value="<%= task.TeamId %>"/>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="Save" />
                    </form>
                </div>

            </div>
        </div>
    </div>
</c:set>

<t:genericpage>
    <jsp:attribute name="preload">

    </jsp:attribute>
    <jsp:attribute name="topbar">

    </jsp:attribute>
    <jsp:body>
        ${bodyContent}
    </jsp:body>
</t:genericpage>

