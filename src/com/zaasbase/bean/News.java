package com.zaasbase.bean;

import java.util.Date;

public class News {
	
	private int id;
	private String newsTitle;
	private String newsSummary;
	private String newsContent;
	private Date newsDate;
	private String newsAuthor;
	private int newsType;
	private Integer newsIsPublish = 0;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsSummary() {
		return newsSummary;
	}
	public void setNewsSummary(String newsSummary) {
		this.newsSummary = newsSummary;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public String getNewsAuthor() {
		return newsAuthor;
	}
	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}
	public int getNewsType() {
		return newsType;
	}
	public void setNewsType(int newsType) {
		this.newsType = newsType;
	}
	public Integer getNewsIsPublish() {
		return newsIsPublish;
	}
	public void setNewsIsPublish(Integer newsIsPublish) {
		this.newsIsPublish = newsIsPublish;
	}
	
}
