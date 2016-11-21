package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Achievement;

public class AchievementAction extends BaseAction{
	
	private int id;
	private Achievement achievement = new Achievement();
	private List<Achievement> achievementList = new ArrayList<Achievement>();
	private int achievementType=1;
	private Integer pageSize = 10;
	private Integer page=1;
	private Integer pageCount;
	
	public String execute(){
		
		achievementList = service.findAchievementByPage(page,pageSize,achievementType);
		
		Integer totalCount =service.getAllAchievementByType(achievementType).size();
		
		
		System.out.println(totalCount);
		
		if (totalCount % pageSize == 0) {
			
			pageCount = totalCount/ pageSize;
			
		} else {
			
			pageCount =  totalCount / pageSize + 1;
			
		}
		
		return "page";
	}
	
	public String detail(){
		
		achievement = service.getAchievementById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Achievement getAchievement() {
		return achievement;
	}

	public void setAchievement(Achievement achievement) {
		this.achievement = achievement;
	}

	public List<Achievement> getAchievementList() {
		return achievementList;
	}

	public void setAchievementList(List<Achievement> achievementList) {
		this.achievementList = achievementList;
	}

	public int getAchievementType() {
		return achievementType;
	}

	public void setAchievementType(int achievementType) {
		this.achievementType = achievementType;
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
