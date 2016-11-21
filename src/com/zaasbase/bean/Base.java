package com.zaasbase.bean;

import java.util.List;

public class Base {
	private int id;
	private String baseTitle;
	private String baseContent;
	private String baseLocation;
	private String baseImg;
	private String baseLocationDetail;
	private int baseIsUsed;
	private int baseIndex;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBaseTitle() {
		return baseTitle;
	}
	public void setBaseTitle(String baseTitle) {
		this.baseTitle = baseTitle;
	}
	public String getBaseContent() {
		return baseContent;
	}
	public void setBaseContent(String baseContent) {
		this.baseContent = baseContent;
	}
	public String getBaseLocation() {
		return baseLocation;
	}
	public void setBaseLocation(String baseLocation) {
		this.baseLocation = baseLocation;
	}
	public String getBaseImg() {
		return baseImg;
	}
	public void setBaseImg(String baseImg) {
		this.baseImg = baseImg;
	}
	public String getBaseLocationDetail() {
		return baseLocationDetail;
	}
	public void setBaseLocationDetail(String baseLocationDetail) {
		this.baseLocationDetail = baseLocationDetail;
	}
	public int getBaseIsUsed() {
		return baseIsUsed;
	}
	public void setBaseIsUsed(int baseIsUsed) {
		this.baseIsUsed = baseIsUsed;
	}
	public void setBaseImgList(List<BaseImg> allBaseImg) {
		// TODO Auto-generated method stub
		
	}
	public int getBaseIndex() {
		return baseIndex;
	}
	public void setBaseIndex(int baseIndex) {
		this.baseIndex = baseIndex;
	}
	
}
