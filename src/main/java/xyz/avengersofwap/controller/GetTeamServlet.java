package xyz.avengersofwap.controller;

import com.google.gson.Gson;
import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.util.TeamUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/getTeam")
public class GetTeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int teamId = Integer.valueOf(request.getParameter("teamId"));
        Team team = TeamUtil.teamWithId(teamId);
        Gson gson = new Gson();
        String teamJson = gson.toJson(team);
        PrintWriter out = response.getWriter();
        try {
            out.println(teamJson);
        } catch (Exception e) {
            out.println(e.getLocalizedMessage());
        }
    }
}
