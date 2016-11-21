package com.zaasbase.admin.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Achievement;

public class AchievementManagerAction extends BaseAction{
	
	private Integer id = 0;
	private Integer achievementType = 0;
	private Achievement achievement = new Achievement();
	private List<Achievement> achievementList = new ArrayList<Achievement>();
	
	public String doList(){
		totalPage = service.getPageCount(service.getAllAchievementByType(achievementType).size(), pageSize);
		achievementList = service.findAchievementByPage(page, pageSize, achievementType);
		return "list";
	}
	
	public String doView(){
		achievement = service.getAchievementById(id);
		return "view";
	}
	
	public String goEdit(){
		achievement = service.getAchievementById(id);
		return "goEdit";
	}
	
	public String doEdit(){
		service.updateAchievement(achievement);
		System.out.println("Content:"+achievement.getAchievementContent()+"ID:"+achievement.getId());
		return "edit";
	}
	
	public String goAdd(){
		return "goAdd";
	}
	
	public String doAdd(){
		service.addAchievement(achievement);
		return "add";
	}
	
	public String doDel(){
		service.delAchievement(id);
		return "del";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getAchievementType() {
		return achievementType;
	}

	public void setAchievementType(Integer achievementType) {
		this.achievementType = achievementType;
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
}
