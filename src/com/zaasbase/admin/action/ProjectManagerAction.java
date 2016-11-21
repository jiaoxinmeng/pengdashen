package com.zaasbase.admin.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Project;
import com.zaasbase.bean.Team;

public class ProjectManagerAction extends BaseAction{
	private Integer id = 0;
	private Integer teamId = 0;
	private Project project = new Project();
	private List<Project> projectList = new ArrayList<Project>();
	private List<Team> teamList = new ArrayList<Team>();
	
	public String doList(){
		totalPage = service.getPageCount(service.getProjectListByTeamId(teamId).size(), pageSize);
		projectList = service.findProjectByPage(page, pageSize,teamId);
		return "list";
	}
	
	public String doView(){
		project = service.getProjectById(id);
		return "view";
	}
	
	public String goEdit(){
		teamList = service.getAllTeam();
		project = service.getProjectById(id);
		return "goEdit";
	}
	
	public String doEdit(){
		service.updateProject(project);
		return "edit";
	}
	
	public String goAdd(){
		teamList = service.getAllTeam();
		return "goAdd";
	}

	public String doAdd(){
		service.addProject(project);
		return "add";
	}
	
	public String doDel(){
		service.delProject(id);
		return "del";
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTeamId() {
		return teamId;
	}
	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}
}
