package xyz.avengersofwap.model;

import xyz.avengersofwap.util.DataDAO;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Task {
    public int Id;
    public int id(){return Id;}
    public int priority;
    public Date Duedate;
    public int DeveloperId;
    public User Developer;
    public int TeamId;
    public  Team ForTeam;
    public  int Status;
    public Date SubmitDate;
    public String title;
    public String DevName;
    public String TeamName;

    public Task(int Id, String title, int priority, Date Duedate, int DeveloperId,  int TeamId, int Status, Date SubmitDate, String DevName, String TeamName){
        this.Id			   = Id;
        this.priority      = priority;
        this.Duedate       = Duedate;
        this.DeveloperId   = DeveloperId;
        this.Developer     = Developer;
        this.TeamId        = TeamId;
        this.ForTeam       = ForTeam;
        this.Status        = Status;
        this.SubmitDate    = SubmitDate;
        this.title = title;
        this.DevName = DevName;
        this.TeamName = TeamName;
    }
    public  Task(){

    }
    public Task(int taskId){

    }
    public  static Task getById(int taskId){
        List<Task> result = new ArrayList<>();

        result = DataDAO.getTasks(" Where t.Id = ? ", Arrays.asList((Object)taskId));

        try{
            System.out.println(result.get(0).id());
        }
        catch (Exception e){
            System.out.println("Error");
        }
        return result.get(0);
    }
    public static List<Task> getAllTasks(){
        List<Task> result = new ArrayList<>();
        result = DataDAO.getTasks("", new ArrayList<Object>());
        return result;
    }

    public static List<Task> getTasksByUser(int devId){
        List<Task> result = new ArrayList<>();

        result = DataDAO.getTasks(" Where Developer = ? ", Arrays.asList((Object)devId));
        return result;
    }
    public static List<Task> getTasksByTeam(int teamId){
        List<Task> result = new ArrayList<>();
        result = DataDAO.getTasks(" Where team = ? ", Arrays.asList((Object)teamId));
        return result;
    }
}
