package xyz.avengersofwap.util;

import xyz.avengersofwap.model.User;
import xyz.avengersofwap.util.SecurityConfig;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class DataDAO {

    private static final String DB_DRIVER = "org.h2.Driver";
    private static final String DB_CONNECTION = "jdbc:h2:D:\\MUM\\WAP\\Project\\database\\avengers";
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
            System.out.println("Class Name error " + e.getMessage());
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
}

