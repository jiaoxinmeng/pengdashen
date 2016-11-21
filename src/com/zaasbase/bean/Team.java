package com.zaasbase.bean;

import java.util.ArrayList;
import java.util.List;

public class Team {
	
	private int id;
	private String teamTitle;
	private String teamContent;
	private String teamType;
	private String teamLogo;
	private String teamImg;
	private List<TeamImg> imgList = new ArrayList<TeamImg>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeamTitle() {
		return teamTitle;
	}
	public void setTeamTitle(String teamTitle) {
		this.teamTitle = teamTitle;
	}
	public String getTeamContent() {
		return teamContent;
	}
	public void setTeamContent(String teamContent) {
		this.teamContent = teamContent;
	}
	public String getTeamType() {
		return teamType;
	}
	public void setTeamType(String teamType) {
		this.teamType = teamType;
	}
	public String getTeamLogo() {
		return teamLogo;
	}
	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}
	public String getTeamImg() {
		return teamImg;
	}
	public void setTeamImg(String teamImg) {
		this.teamImg = teamImg;
	}
	public List<TeamImg> getImgList() {
		return imgList;
	}
	public void setImgList(List<TeamImg> imgList) {
		this.imgList = imgList;
	}
	
}
