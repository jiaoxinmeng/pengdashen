package com.zaasbase.admin.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Expert;
import com.zaasbase.bean.Team;

public class ExpertManagerAction extends BaseAction{
	private Integer id = 0;
	private Integer teamId = 0;
	private Expert expert = new Expert();
	private List<Team> teamList = new ArrayList<Team>();
	private List<Expert> expertList = new ArrayList<Expert>();
	
	public String doList(){
		pageSize = 8;
		teamList = service.getAllTeam();
		totalPage = service.getPageCount(service.getCountFromExpertByTeamId(teamId), pageSize);
		expertList = service.getExpertByTeamId(page,pageSize,teamId);
		return "list";
	}
	
	public String goEdit(){
		teamList = service.getAllTeam();
		expert = service.getExpertById(id);
		return "goEdit";
	}
	
	public String goAdd(){
		teamList = service.getAllTeam();
		return "goAdd";
	}
	
	public String doAdd() throws Exception{
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\experts\\";
		if(pictureFileName!=null){
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			expert.setExpertImg(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.addExpert(expert);
		id = expert.getId();
		return "add";
	}
	
	public String doEdit() throws Exception{
		id = expert.getId();
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\experts\\";
		if(pictureFileName!=null){
			
			if(expert.getExpertImg()!=null){
				service.deleteImg(expert.getExpertImg(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			expert.setExpertImg(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.updateExpert(expert);
		return "edit";
	}
	
	public String doView(){
		expert = service.getExpertById(id);
		return "view";
	}
	
	public String doDel(){
		service.delExpert(id);
		return "del";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTeamId() {
		return teamId;
	}

	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}

	public Expert getExpert() {
		return expert;
	}

	public void setExpert(Expert expert) {
		this.expert = expert;
	}

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}

	public List<Expert> getExpertList() {
		return expertList;
	}

	public void setExpertList(List<Expert> expertList) {
		this.expertList = expertList;
	}
	
}
