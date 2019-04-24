package xyz.avengersofwap.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TaskServlet", urlPatterns = "/task")
public class TaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType = "";
        switch(reqType){
            case "Edit":
                break;
            case "Save":
                break;
            case "New":
                break;
            case "Add":
                break;
            case "Delete":
                break;
            case "Get":
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/Task/task.jsp").forward(request, response);
    }
}
