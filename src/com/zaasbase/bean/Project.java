package com.zaasbase.bean;

import java.util.Date;

public class Project {
	private int id;
	private String projectTitle;
	private String projectContent;
	private int projectTeamId;
	private Date projectDate;
	private String projectType;
	private String projectFund;
	
	private String projectTeam;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public String getProjectContent() {
		return projectContent;
	}
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	public int getProjectTeamId() {
		return projectTeamId;
	}
	public void setProjectTeamId(int projectTeamId) {
		this.projectTeamId = projectTeamId;
	}
	public Date getProjectDate() {
		return projectDate;
	}
	public void setProjectDate(Date projectDate) {
		this.projectDate = projectDate;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public String getProjectFund() {
		return projectFund;
	}
	public void setProjectFund(String projectFund) {
		this.projectFund = projectFund;
	}
	public String getProjectTeam() {
		return projectTeam;
	}
	public void setProjectTeam(String projectTeam) {
		this.projectTeam = projectTeam;
	}
	
}
