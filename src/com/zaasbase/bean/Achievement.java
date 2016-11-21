package com.zaasbase.bean;

import java.util.Date;

public class Achievement {
	
	private int id;
	private String achievementTitle;
	private String achievementSummary;
	private String achievementContent;
	private Date achievementDate;
	private String achievementAuthor;
	private int achievementType;
	private int achievementTeamId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAchievementTitle() {
		return achievementTitle;
	}
	public void setAchievementTitle(String achievementTitle) {
		this.achievementTitle = achievementTitle;
	}
	public String getAchievementSummary() {
		return achievementSummary;
	}
	public void setAchievementSummary(String achievementSummary) {
		this.achievementSummary = achievementSummary;
	}
	public String getAchievementContent() {
		return achievementContent;
	}
	public void setAchievementContent(String achievementContent) {
		this.achievementContent = achievementContent;
	}
	public Date getAchievementDate() {
		return achievementDate;
	}
	public void setAchievementDate(Date achievementDate) {
		this.achievementDate = achievementDate;
	}
	public String getAchievementAuthor() {
		return achievementAuthor;
	}
	public void setAchievementAuthor(String achievementAuthor) {
		this.achievementAuthor = achievementAuthor;
	}
	public int getAchievementType() {
		return achievementType;
	}
	public void setAchievementType(int achievementType) {
		this.achievementType = achievementType;
	}
	public int getAchievementTeamId() {
		return achievementTeamId;
	}
	public void setAchievementTeamId(int achievementTeamId) {
		this.achievementTeamId = achievementTeamId;
	}
	
}
