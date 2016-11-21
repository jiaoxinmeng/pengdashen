package com.zaasbase.admin.action;

import java.util.ArrayList;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.News;

public class NewsManagerAction extends BaseAction{
	
	private Integer id = 0;
	private Integer newsType = 0;
	private News news = new News();
	private List<News> newsList = new ArrayList<News>();
	
	public String doList(){
		newsList = service.findNewsByPageAll(page, pageSize, newsType);
		totalPage = service.getPageCount(service.getAllNewsByType(newsType).size(),pageSize);
		return "list";
	}
	
	public String doView(){
		if(id==0){
			error = "id is null";
			return "error";
		}
		news = service.getNewsById(id);
		newsType = news.getNewsType();
		return "view";
	}
	
	public String goEdit(){
		//System.out.println(id);
		service.publishNews(id, false);
		if(id==0){
			error = "id is null";
			return "error";
		}
		news = service.getNewsById(id);
		newsType = news.getNewsType();
		return "goEdit";
	}
	
	public String doEdit(){
		id = news.getId();
		service.updateNews(news);
		return "edit";
	}
	
	public String goAdd(){
		return "goAdd";
	}
	
	public String doAdd(){
		service.addNews(news);
		id = news.getId();
		return "add";
	}
	
	public String doDel(){
		if(id==0){
			error = "id is null";
			return "error";
		}
		service.delNews(id);
		return "del";
	}
	
	public String doPublish(){
		if(id==0){
			error = "id is null";
			return "error";
		}
		service.publishNews(id,true);
		return "publish";
	}
	
	public String doBackPublish(){
		if(id==0){
			error = "id is null";
			return "error";
		}
		service.publishNews(id,false);
		return "backPublish";
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public void setNewsType(Integer newsType) {
		this.newsType = newsType;
	}

	public Integer getNewsType() {
		return newsType;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public List<News> getNewsList() {
		return newsList;
	}
}
