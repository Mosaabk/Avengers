package xyz.avengersofwap.model;

import java.util.ArrayList;
import java.util.List;

public class Team {
    private String name;
    private String description = "";
    private List<User> members = new ArrayList<>();

    public Team(String name) {
        this.name = name;
    }

    public void addMember(User member) {
        this.members.add(member);
    }

    public boolean removeMember(User member) {
        return this.members.remove(member);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<User> getMembers() {
        return members;
    }

    public void setMembers(List<User> members) {
        this.members = members;
    }
}
