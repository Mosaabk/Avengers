package xyz.avengersofwap.util;

import xyz.avengersofwap.model.User;
import xyz.avengersofwap.util.SecurityConfig;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class DataDAO {

    private static final String DB_DRIVER = "org.h2.Driver";
    private static final String DB_CONNECTION = "jdbc:h2:/database/avengers";
    private static final String DB_USER = "";
    private static final String DB_PASSWORD = "";

    private static final Map<String, User> mapUsers = new HashMap<String, User>();

    static {
        initUsers();
    }

    public static void main(){
        findUser("test", "test");
    }

    private static void initUsers() {

        // This user has a role as EMPLOYEE.
        User emp = new User("employee1", "123", User.GENDER_MALE, //
                SecurityConfig.ROLE_EMPLOYEE);

        // This user has 2 roles EMPLOYEE and MANAGER.
        User mng = new User("manager1", "123", User.GENDER_MALE, //
                SecurityConfig.ROLE_EMPLOYEE, SecurityConfig.ROLE_MANAGER);

        mapUsers.put(emp.getUserName(), emp);
        mapUsers.put(mng.getUserName(), mng);
    }

    // Find a User by userName and password.
    public static User findUser(String userName, String password) {
        Connection connection = getDBConnection();
        PreparedStatement selectPreparedStatement = null;


        String SelectQuery = "select * from Users where username=? AND password = ?";

        try {
            selectPreparedStatement = connection.prepareStatement(SelectQuery);
            selectPreparedStatement.setString(1, userName);
            selectPreparedStatement.setString(2, password);
            ResultSet res = selectPreparedStatement.executeQuery();

            while (res.next()){
                System.out.println(res);
            }

            selectPreparedStatement.close();

            connection.commit();
        } catch (SQLException e) {
            System.out.println("Exception Message " + e.getLocalizedMessage());
         } catch (Exception e) {
            e.printStackTrace();
        }


//        User u = mapUsers.get(userName);
//        if (u != null && u.getPassword().equals(password)) {
//            return u;
//        }
        return null;
    }


    private static Connection getDBConnection() {
        Connection dbConnection = null;
        try {
            Class.forName(DB_DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        try {
            dbConnection = DriverManager.getConnection(DB_CONNECTION, DB_USER,
                    DB_PASSWORD);
            return dbConnection;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return dbConnection;
    }
}

