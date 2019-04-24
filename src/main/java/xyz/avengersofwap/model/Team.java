package xyz.avengersofwap.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Team {
    private int id;
    private String name;
    private String description = "";
    private boolean isDeleted = false;
    private List<User> members = new ArrayList<>();

    public Team(int id, String name) {
        this.id = id;
        this.name = name;

    }

    public void addMember(User member) {
        if (member != null) {
            this.members.add(member);
        }
    }

    public boolean removeMember(User member) {
        return this.members.remove(member);
    }

    public boolean isMemberExist(final String userName) {
        System.out.println("team members: " + members.size());
        System.out.println("team members: " + members);
        if (members != null && members.size() > 0) {
            for (User u: members) {
                if (u != null) {
                    System.out.println("test member: " + u.getUserName());
                    if (u.getUserName().equals(userName)) {
                        return true;
                    }
                }
            }
        }
        return false;
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

    public int getId() {
        return id;
    }

    public boolean isDeleted() {
        return isDeleted;
    }

    public void setDeleted(boolean deleted) {
        isDeleted = deleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Team team = (Team) o;
        return id == team.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Team{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
