<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>高科技园区后台管理系统</title>

<script type="text/javascript" src="http://www.js-css.cn/jscode/jquery.min.js"></script>
<script src="js/jquery.validate.js" type="text/javascript"></script>

<!--Initiate form validation - in this example on the login form-->
<script type="text/javascript">
$(document).ready(function() {
	$("#loginform").validate();
});
</script>


<!--This is the styling for the error message for form validation-->
<style type="text/css">
.error {
	padding: 7px;
	margin: 3px;
	font-family: arial;
	font-size: 14px;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	color: red;
	float: left;
	width: 98%;
	-moz-border-radius:5px;
	-webkit-border-radius: 5px;
}

</style>

<link href="css/styles.css" rel="stylesheet" type="text/css" />

<script type="text/javascript"> 
	if (top.location !== self.location) {
    	top.location=self.location;
	}
	
	function valiLogin(){
		return valiLoginName() && valiPassword() && true;
	}
	
	function valiLoginName(){
		var loginName = document.getElementById("loginName").value;
		var loginName_text = document.getElementById("loginName_text");
		loginName_text.innerHTML = "";
		if(loginName==''){
			loginName_text.innerHTML = "用户名不能为空";
			return false;
		}else{
			return true;
		}
	}
	
	function valiPassword(){
		var password = document.getElementById("password").value;
		var password_text = document.getElementById("password_text");
		password_text.innerHTML = "";
		if(password==''){
			password_text.innerHTML = "密码不能为空";
			return false;
		}else{
			return true;
		}
	}
</script>

</head>

<body>

<div id="admin_wrapper">

          
            <form action="user!login.do" id="loginform" method="post">
            
                   
                    <!--START LOGO  --> 
                    
                    <div id="logo">
                    
                    <h1>Zaasbase<span>Admin</span></h1>
                    
                    </div>
                    
                    <!-- END LOGO -->
                    <p>测试账号:zhull 密码:111111</p>
                  
                
                    <!-- TEXTBOXES -->
                    <label>用户名</label><br />
                    <input name="loginName" type="text" class="text large required" id="loginName" onblur="valiLoginName();" /><span id="loginName_text" class="error"></span>
                    <br />
    				
                    <div class="clearfix">&nbsp;</div
                    
                    ><label>密码</label><br />
                    <input name="password" type="password" class="text large required" id="password" onblur="valiLoginName();"/><span id="password_text" class="error"></span>
                     <br />
                		
                		<s:if test="!error.equals('')">
                			<span class="error">${error}</span>
                		</s:if>
              		 <div class="clearfix">&nbsp;</div>
                
                <p>
                    <input name="btnLogin" type="submit" class="submit" id="btnLogin" value="登录" onclick="return valiLogin();"/>
                    
                    <input type="checkbox" class="checkbox" id="cbdemo2" />
                  <label for="cbdemo2">记住密码</label>
                    
              </p>
            </form>

    </div><!-- end admin wrapper -->
    
</body>
</html>
