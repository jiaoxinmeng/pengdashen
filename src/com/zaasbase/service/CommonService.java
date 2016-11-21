package com.zaasbase.service;

import java.io.File;
import java.util.List;

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

public interface CommonService {
	public List<News> getAllNews();
	
	public List<News> getAllNewsByType(Integer newsType);
	
	public List<News> getPartNewsByType(Integer top,Integer newsType);
	
	public News getNewsById(Integer id);

	public List<News> findNewsByPage(Integer page,Integer pageSize,Integer newsType);
	
	public List<News> findNewsByPageAll(Integer page,Integer pageSize,Integer newsType);
	
	public Base getBaseById(Integer id);
	
	public List<Base> getAllBase();
	
	public  List<Expert> getAllexpert();
	
	public Expert getExpertById(Integer id);
	
	public  List<Team> getPartTeam(Integer top);
	
	public  List<Team> getAllTeam();
	
	public Team getTeamById(Integer id);
	
	public  List<Project> getProjectListByTeamId(Integer teamId);
	
	public List<Project> findProjectByPage(Integer page,Integer pageSize);
	
	public Project getProjectById(Integer id);
	
	public  List<BaseImg> getAllBaseImg(Integer baseId);
	
	public Business getBusinessById(Integer id);
	
	public List<Business> findBusinessByPage(Integer page,Integer pageSize);

	public List<TeamImg> getTeamListByTeamId(Integer teamId);

	public Achievement getAchievementById(Integer id);

	public List<Achievement> findAchievementByPage(Integer page,
			Integer pageSize, Integer achievementType);

	public List<Achievement> getAllAchievementByType(Integer achievementType);

	public List<Achievement> getAchievementListByTeamId(int id);

	public List<Business> getAllBusiness();

	//admin
	
	public Integer getPageCount(Integer size, Integer pageSize);

	public void updateAchievement(Achievement achievement);

	public void addAchievement(Achievement achievement);

	public void delAchievement(Integer id);

	public void deleteImg(String baseImg, String newPath);

	public void uploadImg(String pictureFileName, File picture) throws Exception;

	public void copyFile(String pictureFileName, String oldPath, String newPath);

	public void updateBase(Base base);

	public BaseImg getBaseImgById(Integer id);

	public void updateBaseImg(BaseImg baseImg);

	public void addBaseImg(BaseImg baseImg);

	public void delBaseImg(Integer id);

	public Integer getCountFromExpertByTeamId(Integer teamId);

	public List<Expert> getExpertByTeamId(Integer page, Integer pageSize,
			Integer teamId);

	public void addExpert(Expert expert);

	public void delExpert(Integer id);

	public void updateExpert(Expert expert);

	public void updateNews(News news);

	public void addNews(News news);

	public void delNews(Integer id);

	public List<Project> findProjectByPage(Integer page, Integer pageSize,
			Integer teamId);

	public void updateProject(Project project);

	public void addProject(Project project);

	public void delProject(Integer id);

	public void updateTeam(Team team);

	public void addTeam(Team team);

	public void delTeam(Integer id);

	public TeamImg getTeamImgById(Integer id);

	public void updateTeamImg(TeamImg teamImg);

	public void addTeamImg(TeamImg teamImg);

	public void delTeamImg(Integer id);

	public User getPassword(String loginName);

	public void updateUser(User user);

	public List<User> getUsers();

	public User getUserById(Integer id);

	public void addUser(User user);

	public void delUser(Integer id);
	
	public void addBusiness(Business business);
	
	public void updateBusiness(Business business);
	
	public void delBusiness(Integer id);

	public List<UserType> getAllUserType();

	public String getNamebyTypeId(Integer typeId);

	public void publishNews(Integer id, boolean b);

	public void doCommit(Integer id);
	
}
