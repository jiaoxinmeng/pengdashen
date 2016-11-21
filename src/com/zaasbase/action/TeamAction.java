package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Achievement;
import com.zaasbase.bean.Project;
import com.zaasbase.bean.Team;
import com.zaasbase.bean.TeamImg;

public class TeamAction extends BaseAction{
	
	private int id;
	private List<Team> teamList = new ArrayList();
	private Team team;
	private List<Project> projectList = new ArrayList();
	private List<TeamImg> teamImgList = new ArrayList();
	private List<Achievement> achievementList = new ArrayList();
	
	public String execute(){
		
		return "success";
	}
	
	public String list(){
		
		teamList = service.getAllTeam();
		
		return "list";
	}
	
	public String detail(){
		
		team = service.getTeamById(id);
		
		achievementList = service.getAchievementListByTeamId(id);
		
		teamImgList = service.getTeamListByTeamId(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public List<Project> getProjectList() {
		return projectList;
	}

	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}

	public List<TeamImg> getTeamImgList() {
		return teamImgList;
	}

	public void setTeamImgList(List<TeamImg> teamImgList) {
		this.teamImgList = teamImgList;
	}

	public List<Achievement> getAchievementList() {
		return achievementList;
	}

	public void setAchievementList(List<Achievement> achievementList) {
		this.achievementList = achievementList;
	}
	
}
