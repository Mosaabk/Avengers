package xyz.avengersofwap.util;

import xyz.avengersofwap.model.User;

import java.util.Arrays;
import java.util.List;

public class UserUtil {

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
