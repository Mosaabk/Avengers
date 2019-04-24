package xyz.avengersofwap.controller;

import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.model.TeamMember;
import xyz.avengersofwap.model.User;
import xyz.avengersofwap.util.TeamUtil;
import xyz.avengersofwap.util.UserUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/teamInfo")
public class TeamInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String teamId = request.getParameter("teamId");
        int id = 0;
        Team team = null;
        System.out.println("Receive request teamId: " + teamId);
        if (teamId != null && teamId != "" && Integer.valueOf(teamId) > 0) {
            id = Integer.valueOf(teamId);
            team = TeamUtil.teamWithId(id);
            request.setAttribute("teamName", team.getName());
            request.setAttribute("teamDesc", team.getDescription());
        } else {
            // new team
        }
        List<User> userList = UserUtil.getAllUsers();
        List<TeamMember> members = new ArrayList<>();

        for (User u : userList) {
            System.out.println("user name: " + u.getUserName());
            TeamMember mem = new TeamMember(u);
            if (id > 0) {
                mem.setTeamMember(team.isMemberExist(u.getUserName()));
            }
            members.add(mem);
        }
        request.setAttribute("memberList", members);
        request.setAttribute("teamId", id);
        request.getRequestDispatcher("WEB-INF/views/Team/teaminfo.jsp").forward(request, response);
    }
}
