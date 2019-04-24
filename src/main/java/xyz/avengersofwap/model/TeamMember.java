package xyz.avengersofwap.model;

public class TeamMember {
    private User user;
    private boolean isTeamMember;

    public TeamMember(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isTeamMember() {
        return isTeamMember;
    }

    public void setTeamMember(boolean teamMember) {
        isTeamMember = teamMember;
    }
}
