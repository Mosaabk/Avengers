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

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/res/css/select2.css"/>">
    </head>
    <body>
    <jsp:include page="../Common/preload.jsp"></jsp:include>
    <div id="main-wrapper">
        <jsp:include page="../Common/topbar.jsp"></jsp:include>
        <jsp:include page="../Common/sidebar.jsp"></jsp:include>
         <div class="page-wrapper">
             <div class="card">
                 <div class="card-body">
                     <h3 class="card-title">User List</h3>
                     <button data-toggle="modal" data-target="#add-new-user" type="button" class="btn btn-success btn-sm">New User</button>
                     <div class="table-responsive">
                         <table id="user_table" class="table table-striped table-bordered">
                             <thead>
                             <tr>
                                 <th scope="col">user name</th>
                                 <th scope="col">phone</th>
                                 <th scope="col">roles</th>
                                 <th scope="col"> </th>
                             </tr>
                             </thead>

                             <tbody>
                                <c:forEach var="team" items='${userList}' varStatus="idxStatus">
                             <tr>
                                    <td style="width: 10%; -webkit-user-modify :read-write "  >${team.userName}</>
                                    <td style="width: 10%; -webkit-user-modify :read-write">${idxStatus.index}</td>
                                    <td style="width: 70%"> <c:forEach var="role" items='${team.roles}' varStatus="index" >
                                        <button ondblclick="remove_role(this)" type="button" class="btn btn-outline-primary">${role}</button></c:forEach>  </td>
                                    <td style="width: 10%">
                                        <a href="javascript:void(0)" data-toggle="modal" data-target="#add-new" class="btn m-t-20 btn-info btn-block waves-effect waves-light">
                                            Add New
                                        </a>
                                        <button onclick="deleteItem(this)" type="button" class="btn btn-danger btn-sm">Delete</button>
                                    </td>
                                </tr>
                                </c:forEach>
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>

             <div class="modal fade none-border" id="add-new">
                 <div class="modal-dialog">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h4 class="modal-title">add new role</h4>
                             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                         </div>
                         <div class="modal-body">
                             <form>
                                     <div class="col-md-12">
                                         <label class="control-label">Choose Category Color</label>
                                         <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                <c:forEach var="item" items='${userList}' varStatus="index" >
                                                    <c:forEach var="role" items='${item.roles}' varStatus="index" >
                                                    <option value="success">${role}</option>
                                                    </c:forEach>
                                                </c:forEach>
                                         </select>
                                     </div>
                             </form>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                             <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                         </div>
                     </div>
                 </div>
             </div>


             <div class="modal fade none-border" id="add-new-user">
                 <div class="modal-dialog">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h4 class="modal-title">add new user</h4>
                             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                         </div>
                         <div class="modal-body">
                             <form class="form-horizontal">
                                 <div class="card-body">
                                     <h4 class="card-title">Personal Info</h4>
                                     <div class="form-group row">
                                         <label for="fname" class="col-sm-3 text-right control-label col-form-label">First Name</label>
                                         <div class="col-sm-9">
                                             <input type="text" class="form-control" id="fname" placeholder="First Name Here">
                                         </div>
                                     </div>
                                     <div class="form-group row">
                                         <label for="lname" class="col-sm-3 text-right control-label col-form-label">Last Name</label>
                                         <div class="col-sm-9">
                                             <input type="text" class="form-control" id="lname" placeholder="Last Name Here">
                                         </div>
                                     </div>
                                     <div class="form-group row">
                                         <label for="lname" class="col-sm-3 text-right control-label col-form-label">Password</label>
                                         <div class="col-sm-9">
                                             <input type="password" class="form-control" id="lname" placeholder="Password Here">
                                         </div>
                                     </div>
                                     <div class="form-group row">
                                     <label class="col-md-3 m-t-15">Multiple Select</label>
                                     <div class="col-md-9">
                                         <select class="select2 form-control m-t-15" multiple="multiple" style="height: 36px;width: 100%;">
                                        <c:forEach var="item" items='${userList}' varStatus="index" >
                                            <c:forEach var="role" items='${item.roles}' varStatus="index" >
                                             <option value="AK">${role}</option>
                                            </c:forEach>
                                        </c:forEach>
                                         </select>
                                     </div>
                                     </div>
                                     <div class="form-group row">
                                         <label class="col-md-3">File Upload</label>
                                         <div class="col-md-9">
                                             <div class="custom-file">
                                                 <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                                 <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                                 <div class="invalid-feedback">Example invalid custom file feedback</div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="border-top">
                                     <div class="card-body">
                                         <button type="button" class="btn btn-primary">Submit</button>
                                     </div>
                                 </div>
                             </form>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                             <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                         </div>
                     </div>
                 </div>
             </div>
        </div>
    <script src="<c:url value="/res/js/userjs.js"/>"></script>
     <script src="<c:url value="/res/js/select2.full.min.js"/>"></script>
     <script src="<c:url value="/res/js/userjs.js"/>select2.min.js"></script>
            <script>
                //***********************************//
                // For select 2
                //***********************************//
                $(".select2").select2();

            </script>

<%--    <script type="text/javascript">--%>
<%--        /****************************************--%>
<%--         *       Basic Table                   *--%>
<%--         ****************************************/--%>
<%--        $('#user_table').DataTable();--%>
<%--    </script>--%>

    </body>
</html>

