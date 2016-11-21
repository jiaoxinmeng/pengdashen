package com.zaasbase.admin.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Business;

public class BusinessManagerAction extends BaseAction{
	
	private Integer id = 0;
	private Business business = new Business();
	private List<Business> businessList = new ArrayList<Business>();
	
	public String doList(){
		businessList = service.getAllBusiness();
		//System.out.println("businessList size : " + businessList.size());
		return "list";
	}
	
	public String doView(){
		System.out.println("action: step 1");
		business = service.getBusinessById(id);
		System.out.println("action："+business.toString());
		return "view";
	}
	
	public String doEdit(){
		System.out.println("action: step 1");
		
		if(business!=null){
			id = business.getId();
		}else{
			error = "business is null";
			return "error";
		}
		
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\area\\";
		if(pictureFileName!=null){
			
			if(business!=null && business.getBusinessImg()!=null){
				service.deleteImg(business.getBusinessImg(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			business.setBusinessImg(pictureFileName);
			try {
				service.uploadImg(pictureFileName, picture);
			} catch (Exception e) {
				e.printStackTrace();
			}
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		//System.out.println("id="+id);
		if(id==null){
			service.addBusiness(business);
		}else{
			service.updateBusiness(business);
		}
		System.out.println("action："+business.toString());
		return "edit";
	}
	
	public String goEdit(){
		business = service.getBusinessById(id);
		System.out.println("id="+id);
		return "goEdit";
	}
	
	public String doDel(){
		service.delBusiness(id);
		return "del";
	}

	public Integer getId() {
		return id;
	}

	public Business getBusiness() {
		return business;
	}

	public List<Business> getBusinessList() {
		return businessList;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	public void setBusinessList(List<Business> businessList) {
		this.businessList = businessList;
	}
}
