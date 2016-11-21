package com.zaasbase.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.RequestUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;
import com.zaasbase.bean.Business;
import com.zaasbase.bean.User;
import com.zaasbase.util.RequstUtil;

public class PermissionsInterceptor extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionValues = invocation.getInvocationContext().getSession();
		User user = (User)sessionValues.get("user");
	
		// 获取action后附带参数  
		String id = null;
        Map parameters = invocation.getInvocationContext().getParameters();
        String[] ids = (String[]) parameters.get("id");
        if(ids!=null)id = ids[0];
        String[] businessIds = (String[]) parameters.get("business.id");
        if(businessIds!=null)id = businessIds[0]; 
		
		
		//如果是功能区块，则拦截
		if(invocation.getAction().getClass().getName().equals("com.zaasbase.admin.action.BusinessManagerAction")){
			if(id==null){
				//System.out.println("列表页面");
				return invocation.invoke();//列表页面  放行
			}else if(user.getTypeId()==1){
				//System.out.println("超级管理员  放行");
				return invocation.invoke();//超级管理员  放行
			}else if(user.getMoudleId() == Integer.getInteger(id)){
				//System.out.println("本区块管理员  放行");
				return invocation.invoke();//本区块管理员  放行
			}else{
				return Action.ERROR;
			}
		}else{
			return invocation.invoke();//其他栏目放行
		}
	}

}
