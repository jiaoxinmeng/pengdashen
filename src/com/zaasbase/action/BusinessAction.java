package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Business;

public class BusinessAction extends BaseAction{
	
	private int id;
	private List<Business> businessList = new ArrayList<Business>();
	private Business business;
	
	public String execute(){
		
		businessList = service.getAllBusiness();
		
		return "page";
	}
	
	public String detail(){
		
		business = service.getBusinessById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Business> getBusinessList() {
		return businessList;
	}

	public void setBusinessList(List<Business> businessList) {
		this.businessList = businessList;
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}
	
}
