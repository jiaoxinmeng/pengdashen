package com.zaasbase.bean;

import java.util.Date;

public class BaseImg {
	private int id;
	private int imgBaseId;
	private String imgName;
	private String imgType;
	private String imgAuthor;
	private Date imgDate;
	private String imgContent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getImgBaseId() {
		return imgBaseId;
	}
	public void setImgBaseId(int imgBaseId) {
		this.imgBaseId = imgBaseId;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getImgType() {
		return imgType;
	}
	public void setImgType(String imgType) {
		this.imgType = imgType;
	}
	public String getImgAuthor() {
		return imgAuthor;
	}
	public void setImgAuthor(String imgAuthor) {
		this.imgAuthor = imgAuthor;
	}
	public Date getImgDate() {
		return imgDate;
	}
	public void setImgDate(Date imgDate) {
		this.imgDate = imgDate;
	}
	public String getImgContent() {
		return imgContent;
	}
	public void setImgContent(String imgContent) {
		this.imgContent = imgContent;
	}
	
}
