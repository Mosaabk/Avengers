<%@ page import="xyz.avengersofwap.model.Team" %>
<%@ page import="java.util.List" %>
<%@ page import="xyz.avengersofwap.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Mosaabk
  Date: 2019-04-22
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="bodyContent">

    <div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Basic Datatable</h5>
                <div class="table-responsive">
                    <div id="zero_config_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_length" id="zero_config_length">
                                    <label>Show
                                        <select name="zero_config_length" aria-controls="zero_config" class="form-control form-control-sm">
                                            <option value="10">10</option><option value="25">25</option>
                                            <option value="50">50</option><option value="100">100</option>
                                        </select>
                                        entries
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div id="zero_config_filter" class="dataTables_filter">
                                    <label>
                                        <form method="get">
                                            <input type="hidden" name="r" value="new" />
                                            <input type="submit" value="Add Task"/>
                                        </form>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="zero_config" class="table table-striped table-bordered dataTable" role="grid" aria-describedby="zero_config_info">
                                    <thead>
                                    <tr role="row">
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Id" style="max-width: 25px;">
                                            ID
                                        </th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 251px;">
                                            Title
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 388px;">
                                            Due date
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 188px;">
                                            Team
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 96px;">
                                            Developer
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 169px;">
                                            Status
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 164px;">
                                            Submition Date
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        List<Task> data = Task.getAllTasks();
                                        for(int i = 0; i < data.size(); i++) {
                                            Task task = data.get(i);
                                    %>

                                    <%
                                        if(i%2 == 0) {
                                    %>
                                    <tr role="row" class="odd">
                                    <%
                                    } else {
                                    %>

                                    <tr role="row" class="even">
                                    <%
                                            }
                                    %>

                                        <td>
                                            <form method="get">
                                                <input type="hidden" name="r" value="edit" />
                                                <input type="hidden" name="id" value="<%= task.Id %>" />
                                                <input type="submit" value="Edit"/>
                                            </form>

                                            <form method="post">
                                                <input type="hidden" name="r" value="delete" />
                                                <input type="hidden" name="id" value="<%= task.Id %>" />
                                                <input type="submit" value="Delete"/>
                                            </form>
                                        </td>
                                        <td class="sorting_1"><%= task.title %></td>
                                        <td><%= task.Duedate %></td>
                                        <td><%= task.TeamName %></td>
                                        <td><%= task.DevName %></td>
                                        <td><%= task.Status %></td>
                                        <td><%= task.SubmitDate %></td>
                                    </tr>
                                    <%
                                        }
                                    %>

                                    </tbody>
                                    <tfoot>

                                    <tr role="row">
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Id" style="width: 50px;">
                                            ID
                                        </th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 251px;">
                                            Title
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 388px;">
                                            Due date
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 188px;">
                                            Team
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 96px;">
                                            Developer
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 169px;">
                                            Status
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 164px;">
                                            Submition Date
                                        </th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-5">
                                <div class="dataTables_info" id="zero_config_info" role="status" aria-live="polite">
                                    Showing 1 to 10 of 100 entries
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="zero_config_paginate">
                                    <ul class="pagination">
                                        <li class="paginate_button page-item previous" id="zero_config_previous">
                                            <a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                        </li>
                                        <li class="paginate_button page-item ">
                                            <a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                                        </li>
                                        <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                        <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
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

