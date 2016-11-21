package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.Base;
import com.zaasbase.bean.BaseImg;

public class BaseImgAction extends BaseAction{
	private int id;
	private int baseId;
	private List<BaseImg> baseImgList =new ArrayList<BaseImg>();
	private Base base;
	
	public String execute(){
		
		baseImgList = service.getAllBaseImg(baseId);
		
		base = service.getBaseById(baseId);
		
		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBaseId() {
		return baseId;
	}

	public void setBaseId(int baseId) {
		this.baseId = baseId;
	}

	public List<BaseImg> getBaseImgList() {
		return baseImgList;
	}

	public void setBaseImgList(List<BaseImg> baseImgList) {
		this.baseImgList = baseImgList;
	}

	public Base getBase() {
		return base;
	}

	public void setBase(Base base) {
		this.base = base;
	}
	
}
