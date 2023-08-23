package com.quizapp;

import java.math.BigDecimal;

public class Job {
    private String jobTitle;
    private String jobDescription;
    private String skillsRequired;
    private int experienceRequired;
    private BigDecimal salary;


    public Job(String jobTitle, String jobDescription, String skillsRequired, int experienceRequired, BigDecimal salary) {
        this.jobTitle = jobTitle;
        this.jobDescription = jobDescription;
        this.skillsRequired = skillsRequired;
        this.experienceRequired = experienceRequired;
        this.salary = salary;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getSkillsRequired() {
        return skillsRequired;
    }

    public void setSkillsRequired(String skillsRequired) {
        this.skillsRequired = skillsRequired;
    }

    public int getExperienceRequired() {
        return experienceRequired;
    }

    public void setExperienceRequired(int experienceRequired) {
        this.experienceRequired = experienceRequired;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }
}
