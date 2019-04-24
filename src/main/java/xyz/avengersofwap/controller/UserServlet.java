package xyz.avengersofwap.controller;

import xyz.avengersofwap.util.TeamUtil;
import xyz.avengersofwap.util.UserUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("userList", UserUtil.getAllUser());
        request.getRequestDispatcher("WEB-INF/views/User/user.jsp").forward(request, response);
    }
}
