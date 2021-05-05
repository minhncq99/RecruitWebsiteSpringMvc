package com.java.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh
 */
@Entity
@Table(name = "applicant")
public class Applicant implements Serializable {
    
    @Id
    private int id;
    @NotNull
    private String gender;
    private String description;
    private String experiance;
    @Transient
    private MultipartFile cv;
    @ManyToOne
    @JoinColumn(name = "user_name", nullable = false)
    private User user;
    @ManyToOne
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getExperiance() {
        return experiance;
    }

    public void setExperiance(String experiance) {
        this.experiance = experiance;
    }

    public MultipartFile getCv() {
        return cv;
    }

    public void setCv(MultipartFile cv) {
        this.cv = cv;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Career getCareer() {
        return career;
    }

    public void setCareer(Career career) {
        this.career = career;
    }
    
}
