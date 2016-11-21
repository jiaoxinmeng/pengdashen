package com.zaasbase.bean;

import java.util.Date;

public class User {
	private Integer id;
	private String loginName;
	private String password;
	private String name;
	private Date lastLoginDate;
	private Integer moudleId = 0;
	private Integer typeId = 0;
	private String typeName;
	private Integer isCommit = 0;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", loginName=" + loginName + ", password="
				+ password + ", name=" + name + ", lastLoginDate="
				+ lastLoginDate + ", moudleId=" + moudleId + ", typeId="
				+ typeId + ", typeName=" + typeName + ", isCommit=" + isCommit
				+ "]";
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public Integer getMoudleId() {
		return moudleId;
	}
	public void setMoudleId(Integer moudleId) {
		this.moudleId = moudleId;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getIsCommit() {
		return isCommit;
	}

	public void setIsCommit(Integer isCommit) {
		this.isCommit = isCommit;
	}
}
