package xyz.avengersofwap.util;

import xyz.avengersofwap.model.Team;

import java.util.Arrays;
import java.util.List;

public class TeamUtil {
    public static List<Team> getAllTeams() {
        // mock data
        Team t1 = new Team("team 1");
        Team t2 = new Team("team 2");
        Team t3 = new Team("team 3");
        return Arrays.asList(t1, t2, t3);
    }
}
