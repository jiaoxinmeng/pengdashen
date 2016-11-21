package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Expert;

public class ExpertAction extends BasesAction{
	
	private int id;
	private String expertType;
	private List<Expert> expertList = new ArrayList<Expert>();
	private Expert expert;
	
	public String execute(){
		
		expertList = service.getAllexpert();
		
		return "success";
	}
	
	public String detail(){
		
		expert = service.getExpertById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Expert> getExpertList() {
		return expertList;
	}

	public void setExpertList(List<Expert> expertList) {
		this.expertList = expertList;
	}

	public Expert getExpert() {
		return expert;
	}

	public void setExpert(Expert expert) {
		this.expert = expert;
	}
	
}
