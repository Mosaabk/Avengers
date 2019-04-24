package xyz.avengersofwap.model;


import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class User {

    public static final String GENDER_MALE = "M";
    public static final String GENDER_FEMALE = "F";
    private String userName;
    private String gender;
    private String password;
    private String phone;
    private String userId;


    private List<String> roles;
    private List<Team> belongsTeams;

    public User() {

    }

    public User(String userName, String password, String gender, String... roles) {
        this.userName = userName;
        this.password = password;
        this.gender = gender;

        this.roles = new ArrayList<String>();
        if (roles != null) {
            for (String r : roles) {
                this.roles.add(r);
            }
        }
        this.belongsTeams = new ArrayList<>();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public void addToTeam(Team team) {
        this.belongsTeams.add(team);
    }

    public void removeFromTeam(Team team) {
        for (Team t: this.belongsTeams) {
            if (t.equals(team)) {
                this.belongsTeams.remove(t);
                break;
            }
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return userName.equals(user.userName) &&
                gender.equals(user.gender);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName, gender);
    }
}
