package xyz.avengersofwap.util;

import xyz.avengersofwap.model.Team;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TeamUtil {
    static ArrayList<Team> teamList = new ArrayList<>();

    static void initialTeams() {
        // mock data
        Team t1 = new Team(1, "team 1");
        t1.setDescription("We are the Team 1");
        t1.addMember(UserUtil.findUserWithName("Allen"));
        Team t2 = new Team(2, "team 2");
        t2.setDescription("We are the Team 2");
        t2.addMember(UserUtil.findUserWithName("Bob"));
        Team t3 = new Team(3, "team 3");
        t3.setDescription("We are the Team 3");
        t3.addMember(UserUtil.findUserWithName("Steve"));
        teamList.add(t1);
        teamList.add(t2);
        teamList.add(t3);
    }

    public static List<Team> getAllTeams() {
        List<Team> aList = new ArrayList<>();
        if (teamList.size() < 1) {
            initialTeams();
        }
        for (Team t: teamList) {
            if (!t.isDeleted()) {
                aList.add(t);
            }
        }
        return aList;
    }

    public static int nextTeamId() {
        return teamList.size() + 1;
    }

    public static Team createNewTeam(String name) {
        int teamId = nextTeamId();
        Team team = new Team(teamId, name);
        System.out.println("create new team: " + teamId);
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

    public static void deleteTeam(int teamId) {
        System.out.println("delete team data: "+ teamId);
        if (teamList != null && teamList.size() > 0) {
            for (int i = 0; i < teamList.size(); i++) {
                Team t = teamList.get(i);
                if (t != null && t.getId() == teamId) {
                    t.setDeleted(true);
                    break;
                }
            }
        }
    }
}
