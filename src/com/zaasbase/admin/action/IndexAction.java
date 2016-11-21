package com.zaasbase.admin.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Base;
import com.zaasbase.bean.News;
import com.zaasbase.bean.Team;


public class IndexAction extends BaseAction {

	private int id;
	private List<News> newsList = new ArrayList<News>();
	private List<News> progressList = new ArrayList<News>();
	private List<News> workingList = new ArrayList<News>();
	private List<Base> baseList = new ArrayList<Base>();
	private List<Team> teamList = new ArrayList<Team>();
	
	public String execute() {
		
		newsList = service.getPartNewsByType(5,1);
		progressList = service.getPartNewsByType(5, 2);
		workingList = service.getPartNewsByType(3, 3);
		
		baseList = service.getAllBase();
		
		teamList = service.getPartTeam(7);
		
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

	public List<News> getProgressList() {
		return progressList;
	}

	public void setProgressList(List<News> progressList) {
		this.progressList = progressList;
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
