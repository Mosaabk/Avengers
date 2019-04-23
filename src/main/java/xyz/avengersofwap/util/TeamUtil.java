package xyz.avengersofwap.util;

import xyz.avengersofwap.model.Team;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TeamUtil {
    static List<Team> teamList = new ArrayList<>();

    public static List<Team> getAllTeams() {
        // mock data
        Team t1 = new Team(1, "team 1");
        t1.setDescription("We are the Team 1");
        Team t2 = new Team(2, "team 2");
        t2.setDescription("We are the Team 2");
        Team t3 = new Team(3, "team 3");
        t3.setDescription("We are the Team 3");
        teamList = Arrays.asList(t1, t2, t3);
        return teamList;
    }

    public static int nextTeamId() {
        return teamList.size();
    }

    public static Team createNewTeam(String name) {
        int teamId = nextTeamId();
        Team team = new Team(teamId, name);
        teamList.add(team);
        return team;
    }
    
    public static Team teamWithId(int teamId) {
        Team team = null;
        for (Team t: teamList) {
            if (t.getId() == teamId) {
                team = t;
                break;
            }
        }
        return team;
    }
}
