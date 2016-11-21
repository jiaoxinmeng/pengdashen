package com.zaasbase.admin.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zaasbase.action.BaseAction;
import com.zaasbase.bean.Base;
import com.zaasbase.bean.BaseImg;

public class BaseManagerAction extends BaseAction{
	
	private Integer id = 0;
	private Integer baseId = 0;
	private Base base = new Base();
	private BaseImg baseImg;
	private List<Base> baseList = new ArrayList<Base>();
	
	public String doView(){
		base = service.getBaseById(id);
		return "view";
	}
	
	public String doList(){
		baseList = service.getAllBase();
		return "list";
	}
	
	public String goEdit(){
		base = service.getBaseById(id);
		return "goEdit";
	}
	
	public String doEdit() throws Exception{
		id = base.getId();
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\images\\background\\";
		if(pictureFileName!=null){
			
			if(base.getBaseImg()!=null){
				service.deleteImg(base.getBaseImg(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			base.setBaseImg(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.updateBase(base);
		return "edit";
	}
	
	public String doImgList(){
		baseList = service.getAllBase();
		for(Base base:baseList){
			base.setBaseImgList(service.getAllBaseImg(base.getId()));
		}
		return "imgList";
	}
	
	public String doImgView(){
		baseImg = service.getBaseImgById(id);
		return "imgView";
	}
	
	public String goImgEdit(){
		System.out.println("goImgEdit+"+id);
		baseImg = service.getBaseImgById(id);
		baseList = service.getAllBase();
		return "goImgEdit";
	}
	
	public String goImgAdd(){
		baseList = service.getAllBase();
		Base newBase = service.getBaseById(baseId);
		baseList.add(0, newBase);
		return "goImgAdd";
	}
	
	public String doImgEdit() throws Exception{
		id = baseImg.getId();
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\photos\\";
		if(pictureFileName!=null){
			
			if(baseImg.getImgName()!=null){
				service.deleteImg(baseImg.getImgName(), newPath);
			}
			
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			baseImg.setImgName(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.updateBaseImg(baseImg);
		return "imgEdit";
	}
	
	public String doImgAdd() throws Exception{
		newPath = "D:\\apache-tomcat-6.0.30\\apache-tomcat-6.0.30\\webapps\\zaasbase\\photos\\";
		if(pictureFileName!=null){
			String lastName = pictureFileName.substring(pictureFileName.lastIndexOf("."));
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			pictureFileName = sdf.format(date)+lastName;
			baseImg.setImgName(pictureFileName);
			service.uploadImg(pictureFileName, picture);
			service.copyFile(pictureFileName,oldPath,newPath);
			service.deleteImg(pictureFileName, oldPath);
		}
		service.addBaseImg(baseImg);
		return "imgAdd";
	}
	
	public String doImgDel(){
		service.delBaseImg(id);
		return "imgDel";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Base getBase() {
		return base;
	}

	public void setBase(Base base) {
		this.base = base;
	}

	public List<Base> getBaseList() {
		return baseList;
	}

	public void setBaseList(List<Base> baseList) {
		this.baseList = baseList;
	}

	public void setBaseImg(BaseImg baseImg) {
		this.baseImg = baseImg;
	}

	public BaseImg getBaseImg() {
		return baseImg;
	}

	public void setBaseId(Integer baseId) {
		this.baseId = baseId;
	}

	public Integer getBaseId() {
		return baseId;
	}
	
}
