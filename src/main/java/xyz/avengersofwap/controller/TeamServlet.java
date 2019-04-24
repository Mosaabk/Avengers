package xyz.avengersofwap.controller;

import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.util.TeamUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TeamServlet", urlPatterns = "/team")
public class TeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Team> teamList = TeamUtil.getAllTeams();
        System.out.println("teams count: " + teamList.size());
        request.setAttribute("teamList", teamList);
        request.getRequestDispatcher("WEB-INF/views/Team/team.jsp").forward(request, response);
    }
}
