package xyz.avengersofwap.util;

import xyz.avengersofwap.model.Team;
import xyz.avengersofwap.model.User;

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

    public  static  List<User> getAllUser(){
        User u1 = new User("a","22-Apr-2019 23:09:15.265 信息 [main] org.apache.coyote.AbstractProtocol.init 初始化协议处理器 [\"ajp-nio-8009\"]\n" +
                "                             22-Apr-2019 23:09:15.271 信息 [main] org.apache.catalina.startup.Catalina.load 服务器在[456]毫秒内初始化\n" +
                "                             22-Apr-2019 23:09:15.305 信息 [main] org.apache.catalina.core.StandardService.startInternal Starting service [Catalina]\n" +
                "                             22-Apr-2019 23:09:15.305 信息 [main] org.apache.catalina.core.StandardEngine.startInternal Starting Servlet engine: [Apache Tomcat/9.0.19]\n" +
                "                             22-Apr-2019 23:09:15.320 信息 [main] org.apache.coyote.AbstractProtocol.start 开始协议处理句柄[\"http-nio-8080\"]\n" +
                "                             22-Apr-2019 23:09:15.332 信息 [main] org.apache.coyote.AbstractProtocol.start 开始协议处理句柄[\"ajp-nio-8009\"]\n" +
                "                             22-Apr-2019 23:09:15.334 信息 [main] org.apache.catalina.startup.Catalina.start Server startup in [63] milliseconds\n" +
                "                             Connected to server\n" +
                "                             [2019-04-22 11:09:15,340] Artifact apache-tomcat-9.0.19: Artifact is being deployed, please wait...\n" +
                "                             [2019-04-22 11:09:15,340] Artifact Avengers:war: Artifact is being deployed, please wait...\n" +
                "                             [2019-04-22 11:09:15,645] Artifact apache-tomcat-9.0.19: Artifact is deployed successfully\n" +
                "                             [2019-04-22 11:09:15,645] Artifact apache-tomcat-9.0.19: Deploy took 305 milliseconds","c","d","d");
        User u2 = new User("b","e","c","d","d","d","d","zzzy zzy","d","d","d","d","d");
        User u3 = new User("c","f","h","d","d");
        return Arrays.asList(u1, u2, u3);
    }
}