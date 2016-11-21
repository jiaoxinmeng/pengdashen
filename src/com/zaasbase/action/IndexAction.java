package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Base;
import com.zaasbase.bean.News;
import com.zaasbase.bean.Team;

public class IndexAction extends BaseAction {

	private int id;
	private List<News> newsList = new ArrayList();
	private List<News> leaderList = new ArrayList();
	private List<News> workingList = new ArrayList();
	private List<Base> baseList = new ArrayList();
	private List<Team> teamList = new ArrayList();
	
	public String execute() {
		
		newsList = service.getPartNewsByType(5,1);
		leaderList = service.getPartNewsByType(5, 4);
		workingList = service.getPartNewsByType(3, 3);
		
		baseList = service.getAllBase();
		
		teamList = service.getPartTeam(6);
		
		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public List<News> getLeaderList() {
		return leaderList;
	}

	public void setLeaderList(List<News> leaderList) {
		this.leaderList = leaderList;
	}

	public List<News> getWorkingList() {
		return workingList;
	}

	public void setWorkingList(List<News> workingList) {
		this.workingList = workingList;
	}

	public List<Base> getBaseList() {
		return baseList;
	}

	public void setBaseList(List<Base> baseList) {
		this.baseList = baseList;
	}

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}
	
}
