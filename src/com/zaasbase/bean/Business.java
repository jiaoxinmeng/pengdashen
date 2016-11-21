package com.zaasbase.bean;

public class Business {
	private Integer id;
	private String businessTitle;
	private String businessContent;
	private String businessSummary;
	private String businessImg;
	
	@Override
	public String toString() {
		return "Business [id=" + id + ", businessTitle=" + businessTitle
				+ ", businessContent=" + businessContent + ", businessSummary="
				+ businessSummary + ", businessImg=" + businessImg + "]";
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBusinessContent() {
		return businessContent;
	}
	public void setBusinessContent(String businessContent) {
		this.businessContent = businessContent;
	}
	public String getBusinessTitle() {
		return businessTitle;
	}
	public void setBusinessTitle(String businessTitle) {
		this.businessTitle = businessTitle;
	}
	public String getBusinessSummary() {
		return businessSummary;
	}
	public void setBusinessSummary(String businessSummary) {
		this.businessSummary = businessSummary;
	}
	public String getBusinessImg() {
		return businessImg;
	}
	public void setBusinessImg(String businessImg) {
		this.businessImg = businessImg;
	}
	
}
