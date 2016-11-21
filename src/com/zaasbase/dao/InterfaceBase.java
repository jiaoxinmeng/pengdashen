package com.zaasbase.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

public interface InterfaceBase {
	
	public List<News> getAllNews();
	
	public News getNewsById(Integer id);
	
	public void updateNews(News news);
	
	public void deleteNews(Integer id);

	public List<News> getAllNewsByType(Integer newsType);
	
	public List<News> getPartNewsByType (@Param("top")Integer top, @Param("newsType")Integer newsType);
	
	public List<News> getNewsPage (@Param("page")Integer page, @Param("pageSize")Integer pageSize, @Param("newsType")Integer newsType);

	public List<News> getNewsPageAll (@Param("page")Integer page, @Param("pageSize")Integer pageSize, @Param("newsType")Integer newsType);

	public Base getBaseById(Integer id);
	
	public  List<Base> getAllBase();
	
	public  List<Expert> getAllexpert();
	
	public Expert getExpertById(Integer id);
	
	public  List<Team> getPartTeam(@Param("top")Integer top);
	
	public  List<Team> getAllTeam();
	
	public Team getTeamById(Integer id);
	
	public  List<Project> getProjectListByTeamId(Integer teamId);
	
	public List<Project> getProjectPage (@Param("page")Integer page, @Param("pageSize")Integer pageSize);
	
	public Project getProjectById(Integer id);
	
	public List<BaseImg> getAllBaseImg(@Param("baseId")Integer baseId );
	
	public Business getBusinessById(Integer id);
	
	public List<Business> getBusinessPage (@Param("page")Integer page, @Param("pageSize")Integer pageSize);

	public List<TeamImg> getTeamListByTeamId(Integer teamId);

	public List<Achievement> getAchievementPage(@Param("page")Integer page, @Param("pageSize")Integer pageSize, @Param("achievementType")Integer achievementType);

	public Achievement getAchievementById(Integer id);

	public List<Achievement> getAllAchievementByType(Integer achievementType);

	public List<Achievement> getAchievementListByTeamId(int teamId);

	public List<Business> getAllBusiness();

	public void addNews(News news);

	public void updateBase(Base base);

	public void addTeam(Team team);

	public void addTeamImg(TeamImg teamImg);

	public void delTeam(Integer id);

	public void delTeamImg(Integer id);

	public TeamImg getTeamImgById(Integer id);

	public void updateTeam(Team team);

	public void updateTeamImg(TeamImg teamImg);

	public void addAchievement(Achievement achievement);

	public void delAchievement(Integer id);

	public void updateAchievement(Achievement achievement);

	public void addProject(Project project);

	public void delProject(Integer id);

	public void updateProject(Project project);

	public void addExpert(Expert expert);

	public void delExpert(Integer id);

	public void updateExpert(Expert expert);

	public List<Expert> getExpertByteamId(@Param("page")Integer page, @Param("pageSize")Integer pageSize,@Param("teamId")Integer teamId);
	
	public Integer getCountFromExpertByTeamId(Integer teamId);

	public BaseImg getBaseImgById(Integer id);

	public void updateBaseImg(BaseImg baseImg);
	
	public void addBaseImg(BaseImg baseImg);

	public void delBaseImg(Integer id);
	
	public User getPassword(String loginName);
	
	public User getUserById(Integer id);

	public void updateUser(User user);
	
	public void delUser(Integer id);
	
	public void addUser(User user);
	
	public List<User> getUsers();

	public List<Project> getProjectPageByTeamId(@Param("page")Integer page, @Param("pageSize")Integer pageSize, @Param("teamId")Integer teamId);

	public void addBusiness(Business business);

	public void updateBusiness(Business business);

	public void delBusiness(Integer id);

	public List<UserType> getAllUserType();

	public String getNameByTypeId(Integer typeId);

	public void publishNews(Integer id);

	public void doCommit(Integer id);

	public void backPublishNews(Integer id);
}
