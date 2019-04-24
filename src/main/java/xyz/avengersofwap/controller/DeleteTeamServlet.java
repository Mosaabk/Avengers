package xyz.avengersofwap.controller;

import xyz.avengersofwap.util.TeamUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteTeam")
public class DeleteTeamServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("teamId");
        if (param != null && !param.isEmpty()) {
            System.out.println("delete team: " + param);
            TeamUtil.deleteTeam(Integer.valueOf(param));
        }

        response.getWriter().println("Success");
    }
}
