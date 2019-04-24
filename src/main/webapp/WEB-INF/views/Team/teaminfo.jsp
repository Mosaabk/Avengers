<%@ page import="xyz.avengersofwap.util.TeamUtil" %>
<%@ page import="xyz.avengersofwap.model.Team" %>
<%@ page import="java.util.List" %>
<%@ page import="xyz.avengersofwap.model.User" %>
<%@ page import="xyz.avengersofwap.util.UserUtil" %>
<%@ page import="xyz.avengersofwap.model.TeamMember" %>
<%@ page import="java.util.ArrayList" %>
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

<%! int teamId = -1;
    Team team = null;
    List<User> userList = UserUtil.getAllUsers();
    List<TeamMember> members = new ArrayList<>();
%>

<%
    String param = "";
    try {
        param = request.getParameter("teamId");

        if (param != null && !param.isEmpty() && param != "-1") {
            System.out.println("parameter:" + param);
            teamId = Integer.valueOf(param);
            team = TeamUtil.teamWithId(teamId);

        } else {
            param = "";
            team = TeamUtil.createNewTeam("");
            teamId = team.getId();
        }
        System.out.println("team id:"+teamId);
        System.out.println("Users: "+userList.size());
        System.out.println("Members: "+team.getMembers().size());
    } catch (Exception e) {

        System.out.println("exception:" + e.getLocalizedMessage());
        response.getWriter().write(e.getMessage());
    } finally {
        if(team != null) {
            for (User u : userList) {
                System.out.println("user name: " + u.getUserName());
                TeamMember mem = new TeamMember(u);
                if (!param.isEmpty())
                    mem.setTeamMember(team.isMemberExist(u.getUserName()));
                members.add(mem);
            }
        }
        else{
            team = TeamUtil.createNewTeam("");
        }
        session.setAttribute("teamId", teamId);
        session.setAttribute("teamName", team.getName());
        session.setAttribute("teamDesc", team.getDescription());
        session.setAttribute("memberList", members);
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
                    <h4 class="card-title">Teams</h4>
                    <div class="form-group row col-md-6">
                        <label for="tname" class="col-sm-3 text-right control-label col-form-label">Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="tname" value="<%=team.getName()%>" placeholder="Team Name Here">
                        </div>
                    </div>
                    <div class="form-group row col-md-6">
                        <label for="tdesc" class="col-sm-3 text-right control-label col-form-label">Description</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="tdesc" value="<%=team.getDescription()%>" placeholder="Team Description Here">
                        </div>
                    </div>
                    <div class="form-group row col-md-6">
                        <label class="col-sm-3 text-right control-label col-form-label">Members</label>
                        <div class="col-md-9">
                            <select class="select2 form-control m-t-15" multiple="multiple" style="height: 36px;width: 100%;">
                                <c:forEach var="member" items="${memberList}">
                                    <option value="${member.user.userName}" <c:if test="${member.teamMember}">selected</c:if>>${member.user.userName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="border-top">
                        <div class="card-body">
                            <button id="submitBtn" type="button" class="btn btn-primary" data-defaultValue="${teamId}">Submit</button>
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

    $(document).ready(function () {
        $('#submitBtn').click(clickSubmit);
    });

    function clickSubmit() {
        const tname = $('#tname').val();
        const tdesc = $('#tdesc').val();
        let members = [];
        $.each($(".select2 option:selected"), function(){
            members.push($(this).val());
        });
        const teamId = sessionStorage.getItem();
        console.log("session.teamId: "+teamId);
        const tid = $('#submitBtn').attr('data-defaultValue');
        console.log("data-value: " + tid);
        const postData = {
            'teamId': teamId,
            'name': tname,
            'desc': tdesc,
            'members': members
        };
        console.log(postData);
        $.ajax({
            url: "/updateTeam",
            type: "POST",
            data: postData,
            success: function (response) {
                setTimeout(function(){document.location.href = "/team"},50);
            }
        });
    }
</script>
</body>
</html>
