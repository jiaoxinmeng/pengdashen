package com.zaasbase.bean;

public class UserType {
	private Integer id;
	private String nameEn;
	private String nameCn;
	
	@Override
	public String toString() {
		return "UserType [id=" + id + ", nameEn=" + nameEn + ", nameCn="
				+ nameCn + "]";
	}
	
	public Integer getId() {
		return id;
	}
	public String getNameEn() {
		return nameEn;
	}
	public String getNameCn() {
		return nameCn;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	public void setNameCn(String nameCn) {
		this.nameCn = nameCn;
	}
	
}
