package xyz.avengersofwap.util;

import xyz.avengersofwap.model.Task;
import xyz.avengersofwap.model.User;
import xyz.avengersofwap.util.SecurityConfig;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataDAO {

    private static final String DB_DRIVER = "org.h2.Driver";
    private static final String DB_CONNECTION = "jdbc:h2:E:\\MUM\\WAP\\Project\\App\\database\\avengers";
    private static final String DB_USER = "";
    private static final String DB_PASSWORD = "";


    // Find a User by userName and password.
    public static User findUser(String userName, String password) {
        System.out.println(userName);
        System.out.println(password);
        Connection connection = getDBConnection();
        PreparedStatement selectPreparedStatement = null;

        User user = new User();

        String SelectQuery = "SELECT * from User where email=?  AND password=?";

        try {
            selectPreparedStatement = connection.prepareStatement(SelectQuery);
            selectPreparedStatement.setString(1, userName);
            selectPreparedStatement.setString(2, password);
            ResultSet res = selectPreparedStatement.executeQuery();

            while (res.next()){
                int id  = res.getInt("id");
                String name = res.getString("name");
                String phone = res.getString("phone");


                return new User(userName, password, User.GENDER_MALE,
                        SecurityConfig.ROLE_EMPLOYEE);

            }

            selectPreparedStatement.close();

            connection.commit();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Exception Message " + e.getLocalizedMessage());
         } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    private static Connection getDBConnection() {
        Connection dbConnection = null;
        try {
            Class.forName(DB_DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println("Class Name " + e.getMessage());
        }
        try {
            dbConnection = DriverManager.getConnection(DB_CONNECTION, DB_USER,
                    DB_PASSWORD);
            return dbConnection;
        } catch (SQLException e) {
            System.out.println("Message " + e.getMessage());
        }
        return dbConnection;
    }

    public static List<Task>  getTasks(String sql, List<Object> param){
        List<Task> result = new ArrayList<>();
        try{

            Connection connection = getDBConnection();
            PreparedStatement selectPreparedStatement = null;

            String SelectQuery = "Select t.*, m.NAME teamName, m.Id TeamId, u.id DeveloperId, u.Name DevName From TASK t left join Team m on m.ID = t.TEAM left join User u on u.id = t.DEVELOPER  " + sql;
            System.out.println(SelectQuery);
            try {
                selectPreparedStatement = connection.prepareStatement(SelectQuery);
                for(int i =0; i< param.size(); i++){
                    selectPreparedStatement.setString(i+1, param.get(i).toString());
                }

                ResultSet res = selectPreparedStatement.executeQuery();

                while (res.next()){
                    int 	Id			= res.getInt("Id");
                    int 	priority	= res.getInt("priority");
                    Date 	Duedate		= res.getDate("Duedate");
                    int 	DeveloperId = res.getInt("DeveloperId");
                    int 	TeamId		= res.getInt("TeamId");
                    int 	Status		= res.getInt("Status");
                    Date 	SubmitDate	= res.getDate("SubmitDate");
                    String title = res.getString("title");
                    String teamName = res.getString("teamName");
                    String DevName = res.getString("DevName");

                    result.add( new Task(Id,title, priority, Duedate, DeveloperId, TeamId, Status, SubmitDate, DevName, teamName));
                    System.out.println(Id);
                }

                selectPreparedStatement.close();

                connection.commit();
                connection.close();
                System.out.println(result);
                return result;
            } catch (SQLException e) {
                System.out.println("Exception Message 1 " + e.getMessage());
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Exception Message 2 " + e.getMessage());
            }

            return result;
        }
        catch (Exception ex){

            System.out.println("Exception Message 3 " + ex.getMessage());
        }
        return  result;
    }
}

