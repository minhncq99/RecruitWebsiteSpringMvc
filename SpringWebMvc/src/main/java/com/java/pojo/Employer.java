package com.java.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 *
 * @author minh
 */
@Entity
@Table(name = "employer")
public class Employer implements Serializable {
    
    @Id
    private int id;
    @NotNull(message = "Trường dữ liệu không được rỗng")
    private String description;
    @ManyToOne
    @JoinColumn(name = "user_name", nullable = false)
    private User user;
    @ManyToOne
    @JoinColumn(name = "location_id", nullable = false)
    private Location location;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
}
