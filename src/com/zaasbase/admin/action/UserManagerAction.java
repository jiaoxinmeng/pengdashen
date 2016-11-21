package com.zaasbase.admin.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Business;
import com.zaasbase.bean.User;
import com.zaasbase.bean.UserType;

@SuppressWarnings("serial")
public class UserManagerAction extends BaseAction implements java.io.Serializable{
	private Integer id = 0;
	private String loginName = "";
	private String password = "";
	private String error = "";
	private User user = new User();
	private List<User> userList = new ArrayList<User>();
	private Map<String, Object> session;
	private List<UserType> typeList = new ArrayList<UserType>();
	private List<Business> businessList	= new ArrayList<Business>();
	private Integer typeId = 0;
	
	
	public String login(){
		user = service.getPassword(loginName);
		
		if(user==null){
			error = "用户名不存在，请确认后重新输入";
			return "login";
		}
		
		System.out.println("typeId:"+user.getTypeId());
		
		if(password.equals(user.getPassword())){
			getSession().put("user",user);
			Date nowDate = new Date();
			user.setLastLoginDate(nowDate);
			service.updateUser(user);
			return "success";
		}else{
			error = "密码错误，请确认后重新输入";
			return "login";
		}
	}
	
	public String loginOut(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		@SuppressWarnings("rawtypes")
		Enumeration e=session.getAttributeNames(); 
		while(e.hasMoreElements()){ 
		   String attributeName=(String)e.nextElement(); 
		   session.removeAttribute(attributeName); 
		}
		return "loginOut";
	}
	
	public String doList(){
		userList = service.getUsers();
		return "list";
	}
	
	public String goEdit(){
		typeList = service.getAllUserType();
		user = service.getUserById(id);
		System.out.println(id);
		if(user!=null)
		System.out.println(user.toString());
		return "goEdit";
	}
	
	public String doEdit(){
		service.updateUser(user);
		updateSession();
		return "edit";
	}
	
	public String goAdd(){
		typeList = service.getAllUserType();
		return "goAdd";
	}
	
	public String doAdd(){
		service.addUser(user);
		return "add";
	}
	
	public String doDel(){
		service.delUser(id);
		return "del";
	}
	
	public String changePassword(){
		user = service.getUserById(id);
		return "changePwd";
	}
	
	public Map<String, Object> getSession(){
		ActionContext ac = ActionContext.getContext();
		session = ac.getSession();
		return session;
	}
	
	public String getNextList(){
		
		//System.out.println("UserManagerAction : getNextList()");
		
		String typeName = service.getNamebyTypeId(typeId);
		//System.out.println("typeName:"+typeName);
		if(typeName!=null && typeName.equals("business")){
			 businessList = service.getAllBusiness();
		}
		//System.out.println(businessList.size());
		
		return "nextList";
	}
	
	public String doCommit(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User)session.getAttribute("user");
		if(user==null && user.getId()==null){
			error = "session丢失，请重新登录，或联系管理员";
			return "error";
		}
		if(user.getIsCommit()==1){
			error = "您已同意该承诺，请重新登录尝试或联系管理员";
			return "error";
		}
		service.doCommit(user.getId());
		updateSession();
		return "commited";
	}
	
	public void updateSession(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User)session.getAttribute("user");
		if(user!=null&&user.getId()!=null){
			session.setAttribute("user", service.getUserById(user.getId()));
		}
	}
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<UserType> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<UserType> typeList) {
		this.typeList = typeList;
	}

	public List<Business> getBusinessList() {
		return businessList;
	}

	public void setBusinessList(List<Business> businessList) {
		this.businessList = businessList;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
}
