package xyz.avengersofwap.util;

import xyz.avengersofwap.model.User;

import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.model.User;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserUtil {

    static List<User> userList = new ArrayList<>();

    public static List<User> getAllUsers() {
        if (userList.size() == 0) {
            initialUserList();
        }
        return userList;
    }

    static void initialUserList() {
        User u1 = new User("Allen", "123", User.GENDER_MALE, "Developer");
        Team t1 = TeamUtil.teamWithId(1);
        u1.addToTeam(t1);
        User u2 = new User("Bob", "123", User.GENDER_MALE, "Developer");
        Team t2 = TeamUtil.teamWithId(2);
        u1.addToTeam(t2);
        User u3 = new User("Steve", "123", User.GENDER_MALE, "Developer");
        Team t3 = TeamUtil.teamWithId(3);
        u1.addToTeam(t3);
        User u4 = new User("Mary", "123", User.GENDER_MALE, "Developer");
        User u5 = new User("Jack", "123", User.GENDER_MALE, "Developer");
        userList = Arrays.asList(u1, u2, u3, u4, u5);
    }

    public static User findUserWithName(String name) {
        for (User user : userList) {
            if (name.equals(user.getUserName())) {
                return user;
            }
        }
        return null;
    }
    public  static List<User> getAllUser(){
        User u1 = new User("a","22-Apr-2019 23:0","c","d","d");
        u1.setUserId("213123123");
        User u2 = new User("b","e","c","d","d","d","d","zzzy zzy","d","d","d","d","d");
        u2.setUserId("wqewqe");
        User u3 = new User("c","f","h","d","d");
        u3.setUserId("2131231rew2323");
        return Arrays.asList(u1, u2, u3);
    }
}