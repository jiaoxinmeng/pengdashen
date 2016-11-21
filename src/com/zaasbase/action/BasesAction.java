package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Base;

public class BasesAction extends BaseAction{
	
	private int id ; 
	private Base base;
	private List<Base> baseList = new ArrayList<Base>();
	
	public String execute(){
		
		baseList = service.getAllBase();
		
		return "success";
	}
	
	public String detail(){
		
		base = service.getBaseById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Base getBase() {
		return base;
	}

	public void setBase(Base base) {
		this.base = base;
	}

	public List<Base> getBaseList() {
		return baseList;
	}

	public void setBaseList(List<Base> baseList) {
		this.baseList = baseList;
	}
	
}	
