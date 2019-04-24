package xyz.avengersofwap.controller;

import xyz.avengersofwap.model.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.SortedMap;

@WebServlet(name = "TaskServlet", urlPatterns = {"/task"})
public class TaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String reqType = "";
        try {
            reqType = request.getParameter("r");
            reqType = reqType.toLowerCase();
        }
        catch(Exception e)
        {
            reqType = "";
        }
        Boolean status = false;
        switch(reqType){
            case "save":
                System.out.println("Save");
                try{

                    status = true;
                }
                catch (Exception e){

                }
                break;
            case "add":
                System.out.println("Add");
                try{
                    status = true;
                }
                catch (Exception e){

                }
                break;
            case "delete":
                System.out.println("Del");
                try{
                    status = true;
                }
                catch (Exception e){

                }
                break;
        }
        if(status){
            response.sendRedirect("/task");
        }
        else{
            request.getRequestDispatcher("WEB-INF/views/Task/task.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType = "";
        try {
            reqType = request.getParameter("r");
            reqType = reqType.toLowerCase();
        }
        catch(Exception e)
        {
            reqType = "";
        }

        switch(reqType){
            case "edit":
                try{

                    int tId = 0;
                    try {
                        tId = Integer.parseInt( request.getParameter("id"));

                    }
                    catch(Exception e)
                    {
                        tId = 0;
                    }
                    request.getSession().setAttribute("task", Task.getById(tId));
                    request.getRequestDispatcher("WEB-INF/views/Task/Edit.jsp").forward(request, response);
                }
                catch (Exception e){

                }
                request.getRequestDispatcher("WEB-INF/views/Task/Edit.jsp").forward(request, response);
                break;
            case "new":
                try{
                    request.getSession().setAttribute("task", new Task());
                    request.getRequestDispatcher("WEB-INF/views/Task/Edit.jsp").forward(request, response);
                }
                catch (Exception e){

                }
                request.getRequestDispatcher("WEB-INF/views/Task/new.jsp").forward(request, response);
                break;
            default:
                List<Task> data = Task.getAllTasks();
                request.getSession().setAttribute("data", data);
                request.getRequestDispatcher("WEB-INF/views/Task/task.jsp").forward(request, response);
                break;
        }
    }
}
