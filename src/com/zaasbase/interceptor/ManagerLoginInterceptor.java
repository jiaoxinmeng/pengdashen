package com.zaasbase.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zaasbase.bean.User;

public class ManagerLoginInterceptor extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionValues = invocation.getInvocationContext().getSession();
		User user = (User)sessionValues.get("user");
		//如果是登录，则放行
		if(invocation.getAction().getClass().getName().equals("com.zaasbase.admin.action.UserManagerAction")){
			return invocation.invoke();
		}
		//如果session为空 请登录
		if(user == null){
			return Action.LOGIN;
		}
		return invocation.invoke();
	}

}
