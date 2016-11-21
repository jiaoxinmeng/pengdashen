package com.zaasbase.admin.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Team;
import com.zaasbase.bean.TeamImg;

public class TeamManagerAction extends BaseAction{
	
	private Integer id = 0;
	private Integer teamId = 0;
	private Team team = new Team();
	private TeamImg teamImg = new TeamImg();
	private List<Team> teamList = new ArrayList<Team>();
	private List<TeamImg> teamImgList = new ArrayList<TeamImg>();
	
	public String doList(){
		teamList = service.getAllTeam();
		return "list";
	}
	
	public String doView(){
		team = service.getTeamById(id);
		return "view";
	}
	
	public String goEdit(){
		team = service.getTeamById(id);
		teamImgList = service.getTeamListByTeamId(id);
		return "goEdit";
	}
	
	public String goAdd(){
		return "goAdd";
	}
	
	public String doEdit() throws Exception{
		id = team.getId();
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		if(pictureFileName!=null){
			
			if(team.getTeamImg()!=null){
				service.deleteImg(team.getTeamImg(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			team.setTeamImg(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.updateTeam(team);
		System.out.println(team.getTeamTitle()+"2222222222");
		return "edit";
	}
	
	public String doAdd() throws Exception{
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		if(pictureFileName!=null){
			
			if(team.getTeamImg()!=null){
				service.deleteImg(team.getTeamImg(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			team.setTeamImg(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.addTeam(team);
		id = team.getId();
		return "add";
	}
	
	public String doDel(){
		String path = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		team = service.getTeamById(id);
		service.deleteImg(team.getTeamImg(), path);
		service.delTeam(id);
		teamImgList = service.getTeamListByTeamId(id);
		if(!teamImgList.isEmpty()){
			for(TeamImg teamImg:teamImgList){
				service.deleteImg(teamImg.getImgName(), path);
			}
		}
		return "del";
	}
	
	public String doImgList(){
		teamList = service.getAllTeam();
		if(!teamList.isEmpty()){
			for(Team team:teamList){
				teamImgList = service.getTeamListByTeamId(team.getId());
				team.setImgList(teamImgList);
			}
		}
		return "imgList";
	}
	public String doImgView(){
		teamImg = service.getTeamImgById(id);
		return "imgView";
	}
	
	public String goImgEdit(){
		teamImg = service.getTeamImgById(id);
		return "goImgEdit";
	}
	
	public String goImgAdd(){
		return "goImgAdd";
	}
	
	public String doImgEdit() throws Exception{
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		if(pictureFileName!=null){
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			teamImg.setImgName(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		if(teamImg!=null){
			service.updateTeamImg(teamImg);
			id = teamImg.getId();
			//System.out.println(teamImg.getImgAuthor()+":doImgEdit():"+teamImg.getId()+":bean:"+teamImg+":date:"+new Date());
		}
		return "imgEdit";
	}
	
	public String doImgAdd() throws Exception{
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		if(pictureFileName!=null){
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			teamImg.setImgName(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.addTeamImg(teamImg);
		return "imgAdd";
	}
	
	public String doImgDel(){
		String path = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\teams\\";
		
		teamImg = service.getTeamImgById(id);
		
		if(teamImg.getImgName()!=null){
			service.deleteImg(teamImg.getImgName(), path);
		}
		
		service.delTeamImg(id);
		return "imgDel";
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

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public TeamImg getTeamImg() {
		return teamImg;
	}

	public void setTeamImg(TeamImg teamImg) {
		this.teamImg = teamImg;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamImgList(List<TeamImg> teamImgList) {
		this.teamImgList = teamImgList;
	}

	public List<TeamImg> getTeamImgList() {
		return teamImgList;
	}

}
