package com.zaasbase.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.zaasbase.bean.Achievement;
import com.zaasbase.bean.Base;
import com.zaasbase.bean.BaseImg;
import com.zaasbase.bean.Business;
import com.zaasbase.bean.Expert;
import com.zaasbase.bean.News;
import com.zaasbase.bean.Project;
import com.zaasbase.bean.Team;
import com.zaasbase.bean.TeamImg;
import com.zaasbase.bean.User;
import com.zaasbase.bean.UserType;
import com.zaasbase.dao.InterfaceBase;

public class CommonServiceImpl implements CommonService {

	private InterfaceBase baseDao;

	public InterfaceBase getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(InterfaceBase baseDao) {
		this.baseDao = baseDao;
	}

	public List<News> getAllNews() {

		return baseDao.getAllNews();
	}
	
	public List<News> getPartNewsByType(Integer top,Integer newsType){
		
		return baseDao.getPartNewsByType(top,newsType);
		
	}

	public News getNewsById(Integer id) {
		
		return baseDao.getNewsById(id);
	}
	
	public List<News> getAllNewsByType(Integer newsType){
		
		return baseDao.getAllNewsByType(newsType);
	}

	public List<News> findNewsByPage(Integer page,Integer pageSize,Integer newsType) {
		
		return baseDao.getNewsPage((page-1) * pageSize,pageSize * page, newsType);
	}
	
	public List<News> findNewsByPageAll(Integer page,Integer pageSize,Integer newsType) {
		
		return baseDao.getNewsPageAll((page-1) * pageSize,pageSize * page, newsType);
	}
	
	public Base getBaseById(Integer id) {
		
		return baseDao.getBaseById(id);
	}

	public List<Base> getAllBase() {
		
		return baseDao.getAllBase();
	}
	
	public Expert getExpertById(Integer id) {
		
		return baseDao.getExpertById(id);
	}
	
	public  List<Expert> getAllexpert(){
		
		return baseDao.getAllexpert();
	}

	public List<Team> getPartTeam(Integer top) {

		return baseDao.getPartTeam(top);
	}
	
	public  List<Team> getAllTeam(){
		
		return baseDao.getAllTeam();
		
	}
	
	public Team getTeamById(Integer id){
		
		return baseDao.getTeamById(id);
	}

	public List<Project> getProjectListByTeamId(Integer teamId) {
			
		return baseDao.getProjectListByTeamId(teamId);
	}

	public List<Project> findProjectByPage(Integer page, Integer pageSize) {
		
		return baseDao.getProjectPage((page-1) * pageSize,pageSize * page);
	}

	public Project getProjectById(Integer id) {
		
		return baseDao.getProjectById(id);
	}

	public List<BaseImg> getAllBaseImg(Integer baseId) {
		
		return baseDao.getAllBaseImg(baseId);
	}

	public List<Business> findBusinessByPage(Integer page, Integer pageSize) {
		
		return baseDao.getBusinessPage((page-1) * pageSize,pageSize * page);
	}

	public Business getBusinessById(Integer id) {
		return baseDao.getBusinessById(id);
	}

	public List<TeamImg> getTeamListByTeamId(Integer teamId) {
		return baseDao.getTeamListByTeamId(teamId);
	}

	public List<Achievement> findAchievementByPage(Integer page,Integer pageSize, Integer achievementType) {
		return baseDao.getAchievementPage((page-1) * pageSize,page * pageSize,achievementType);
	}

	public Achievement getAchievementById(Integer id) {
		return baseDao.getAchievementById(id);
	}

	public List<Achievement> getAllAchievementByType(Integer achievementType) {
		return baseDao.getAllAchievementByType(achievementType);
	}

	public List<Achievement> getAchievementListByTeamId(int teamId) {
		return baseDao.getAchievementListByTeamId(teamId);
	}

	public List<Business> getAllBusiness() {
		return baseDao.getAllBusiness();
	}
	
	public Integer getPageCount(Integer count, Integer pageSize) {
		if(count%pageSize==0){
			return count/pageSize;
		}else{
			return count/pageSize+1;
		}
	}
	
	public void addTeam(Team team) {
		baseDao.addTeam(team);
	}

	public void addTeamImg(TeamImg teamImg) {
		baseDao.addTeamImg(teamImg);
	}

	public void delTeam(Integer id) {
		baseDao.delTeam(id);
	}

	public void delTeamImg(Integer id) {
		baseDao.delTeamImg(id);
	}

	public TeamImg getTeamImgById(Integer id) {
		return baseDao.getTeamImgById(id);
	}

	public void updateTeam(Team team) {
		baseDao.updateTeam(team);
	}

	public void updateTeamImg(TeamImg teamImg) {
		baseDao.updateTeamImg(teamImg);
	}

	public void addAchievement(Achievement achievement) {
		baseDao.addAchievement(achievement);
	}

	public void delAchievement(Integer id) {
		baseDao.delAchievement(id);
	}

	public void updateAchievement(Achievement achievement) {
		baseDao.updateAchievement(achievement);
	}

	public void addProject(Project project) {
		baseDao.addProject(project);
	}

	public void delProject(Integer id) {
		baseDao.delProject(id);
	}

	public void updateProject(Project project) {
		baseDao.updateProject(project);
	}

	public void addExpert(Expert expert) {
		baseDao.addExpert(expert);
	}

	public void delExpert(Integer id) {
		baseDao.delExpert(id);
	}

	public void updateExpert(Expert expert) {
		baseDao.updateExpert(expert);
	}

	public List<Expert> getExpertByTeamId(Integer page,Integer pageSize,Integer teamId) {
		return baseDao.getExpertByteamId((page-1)*pageSize,page*pageSize,teamId);
	}
	
	public Integer getCountFromExpertByTeamId(Integer teamId){
		return baseDao.getCountFromExpertByTeamId(teamId);
	}

	public BaseImg getBaseImgById(Integer id) {
		return baseDao.getBaseImgById(id);
	}

	public void updateBaseImg(BaseImg baseImg) {
		baseDao.updateBaseImg(baseImg);
	}
	
	public void addBaseImg(BaseImg baseImg){
		baseDao.addBaseImg(baseImg);
	}

	public void delBaseImg(Integer id) {
		baseDao.delBaseImg(id);
	}

	public void addUser(User user) {
		baseDao.addUser(user);
	}

	public void delUser(Integer id) {
		baseDao.delUser(id);
	}

	public User getPassword(String loginName) {
		return baseDao.getPassword(loginName);
	}

	public List<User> getUsers() {
		return baseDao.getUsers();
	}

	public void updateUser(User user) {
		baseDao.updateUser(user);
	}

	public User getUserById(Integer id) {
		return baseDao.getUserById(id);
	}

	public void deleteImg(String imgName,String imageUrl) {
		(new File(imageUrl+imgName)).delete();
	}
	public void uploadImg(String pictureFileName,File picture) throws Exception {
		File saved = new File(ServletActionContext.getServletContext().getRealPath("upload"),pictureFileName);
		InputStream ins = null;
		OutputStream ous = null;
		try{
			saved.getParentFile().mkdirs();
			
			ins = new FileInputStream(picture);
			ous = new FileOutputStream(saved);
			
			byte[] b = new byte[1024];
			int len = 0;
			while ((len = ins.read(b)) != -1){
				ous.write(b, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(ous != null) ous.close();
			if(ins != null) ins.close();
		}
	}
	
	public void copyFile(String pictureFileName,String oldPath,String newPath) { 
		newPath = newPath + pictureFileName;
		pictureFileName = oldPath + pictureFileName;
		try { 
           int bytesum = 0; 
           int byteread = 0; 
           File oldfile = new File(pictureFileName); 
           if (oldfile.exists()) { //文件存在时 
               InputStream inStream = new FileInputStream(pictureFileName); //读入原文件 
               FileOutputStream fs = new FileOutputStream(newPath); 
               byte[] buffer = new byte[1444]; 
               while ( (byteread = inStream.read(buffer)) != -1) { 
                   bytesum += byteread; //字节数 文件大小 
                   fs.write(buffer, 0, bytesum); 
               } 
               inStream.close(); 
               fs.close();
           } else{
        	   System.out.println("原文件不存在");
           }
       } 
       catch (Exception e) { 
           System.out.println("复制单个文件操作出错"); 
           e.printStackTrace(); 
       } 

   }

	public void updateBase(Base base) {
		baseDao.updateBase(base);
	}

	public void updateNews(News news) {
		baseDao.updateNews(news);
	}

	public void addNews(News news) {
		baseDao.addNews(news);
	}

	public void delNews(Integer id) {
		baseDao.deleteNews(id);
	}

	public List<Project> findProjectByPage(Integer page, Integer pageSize ,Integer teamId) {
		return baseDao.getProjectPageByTeamId((page-1) * pageSize,pageSize * page,teamId);
	}

	public void addBusiness(Business business) {
		baseDao.addBusiness(business);
	}

	public void updateBusiness(Business business) {
		baseDao.updateBusiness(business);
	}

	public void delBusiness(Integer id) {
		baseDao.delBusiness(id);
	}

	public List<UserType> getAllUserType() {
		return baseDao.getAllUserType();
	}

	public String getNamebyTypeId(Integer typeId) {
		return baseDao.getNameByTypeId(typeId);
	}

	public void publishNews(Integer id ,boolean b) {
		if(b){
			baseDao.publishNews(id);
		}else{
			baseDao.backPublishNews(id);
		}
	}

	public void doCommit(Integer id) {
		baseDao.doCommit(id);
	}
	

}
