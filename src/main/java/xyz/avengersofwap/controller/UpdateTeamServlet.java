package xyz.avengersofwap.controller;

import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.util.TeamUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/updateTeam")
public class UpdateTeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("desc");
        String teamId = request.getParameter("teamId");
        String mems = request.getParameter("members");
        System.out.println("name:" + name);
        System.out.println("id:" + teamId);
        System.out.println("desc:" + description);
        System.out.println("members:" + mems);
        PrintWriter out = response.getWriter();

        if (teamId == null || Integer.valueOf(teamId) < 1) {
            // Create New Team
            Team team = TeamUtil.createNewTeam(name);
            team.setDescription(description);

        } else {
            // Update Team info
            Team team = TeamUtil.teamWithId(Integer.valueOf(teamId));
            team.setName(name);
            team.setDescription(description);
        }

        out.println("success");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
