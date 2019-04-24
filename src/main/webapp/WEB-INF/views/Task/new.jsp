<%--
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
                <h5 class="card-title">New Task</h5>
                <div class="table-responsive">
                    <div id="zero_config_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">

                            </div>
                            <div class="col-sm-12 col-md-6">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-5">

                            </div>
                            <div class="col-sm-12 col-md-7">

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

