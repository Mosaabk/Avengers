package xyz.avengersofwap.controller;

import xyz.avengersofwap.model.User;
import xyz.avengersofwap.util.AppUtils;
import xyz.avengersofwap.util.DataDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("username");
        String password = request.getParameter("password");


        User user = DataDAO.findUser(userName, password);

        if(user == null && !request.getRequestURI().contains("res")){
            String errorMsg= "Invalid Username or Password";
            request.setAttribute("errorMsg", errorMsg);

            request.getRequestDispatcher("/WEB-INF/views/Login/login.jsp").forward(request, response);
            return;
        }


        AppUtils.storeLoginedUser(request.getSession(), user);

        int redirectId = -1;

        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e){

        }

        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);

        if(requestUri != null){
            response.sendRedirect(requestUri);
        } else {
            response.sendRedirect(request.getContextPath() + "/Welcome");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/Login/login.jsp").forward(request, response);
    }
}
