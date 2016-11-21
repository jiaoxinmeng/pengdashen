package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Project;

public class ProjectAction extends BaseAction{
	private int id;
	private Project project;
	private List<Project> projectList = new ArrayList();
	private Integer pageSize = 15;
	private Integer page=1;
	private Integer pageCount;
	
	public String list(){
		
		projectList =  service.findProjectByPage(page,pageSize);
		System.out.println(projectList.size());
		return "list";
	}
	
	public String detail(){
		
		project = service.getProjectById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	
}
