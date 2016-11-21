package com.zaasbase.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.bean.News;

public class NewsAction extends BaseAction{
	
	private int id;
	private News news = new News();
	private List<News> newsList = new ArrayList();
	private int newsType;
	private Integer pageSize = 10;
	private Integer page=1;
	private Integer pageCount;
	
	public String execute(){
		
		newsList = service.findNewsByPage(page,pageSize,newsType);
		
		Integer totalCount =service.getAllNewsByType(newsType).size();
		
		if (totalCount % pageSize == 0) {
			
			pageCount = totalCount/ pageSize;
			
		} else {
			
			pageCount =  totalCount / pageSize + 1;
			
		}
		
		return "page";
	}
	
	public String detail(){
		
		news = service.getNewsById(id);
		
		return "detail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public int getNewsType() {
		return newsType;
	}

	public void setNewsType(int newsType) {
		this.newsType = newsType;
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
