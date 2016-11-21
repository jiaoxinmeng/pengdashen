<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>高新科技园区-后台管理界面</title>

	<style>
		.error{
			color:#333;
		}
	</style>

<script type="text/javascript" src="http://www.js-css.cn/jscode/jquery.min.js"></script>

    <!-- MASTER STYLESHEET-->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    
    <!-- LOAD TIPSY TOOLTIPS-->
    <script type="text/javascript" src="js/jquery.tipsy.js"></script>
   
    <!-- LOAD CUSTOM JQUERY SCRIPTS-->
    <script type="text/javascript" src="js/scripts.js"></script>	
    
	 <!-- LOAD FACEBOX -->
	<script type="text/javascript" src="js/facebox.js"></script>
    <link href="css/facebox.css" rel="stylesheet" type="text/css" />
    

    <!-- LOAD FLOT GRAPHS -->
    <script type="text/javascript" src="js/jquery.flot.pack.js"></script>
    <!--[if IE]>
     <script language="javascript" type="text/javascript" src="js/excanvas.pack.js"></script>
    <![endif]-->
    
    
    <!--[if IE 6]>
    <script src="js/pngfix.js"></script>
    <script>
        DD_belatedPNG.fix('.png_bg');
    </script>        
    <![endif]-->

	
    <!-- LOAD GRAPH JAVASCRIPT FILE-->
	<script src="js/graphs.js" type="text/javascript"></script>
	
	<script>
		function validate(){
			return valiPasswordOld() && valiPasswordNew() && valiPasswordNewT();
		}	
	
		function valiPasswordOld(){
			var password = document.getElementById("password").value;
			var password_old = document.getElementById("password_old").value;
			var password_old_text = document.getElementById("password_old_text");
			password_old_text.innerHTML = "";
			if(password_old==""){
				password_old_text.innerHTML = "请验证原密码";
				return false;
			}else if(password==password_old){
				return true;
			}else{
				password_old_text.innerHTML = "原密码错误，请确认后重新输入";
				return false;
			}
		}
		
		function valiPasswordNew(){
			var password_new = document.getElementById("password_new").value;
			var password_new_text = document.getElementById("password_new_text");
			var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/;
			password_new_text.innerHTML = "";
			if(password_new==""){
				password_new_text.innerHTML = "请输入新密码";
				return false;
			}else if(reg.test(password_new)){
				return true;
			}else{
				password_new_text.innerHTML = "密码为6-10位的数字与字母组合,且不可全为字母或数字";
				return false;
			}
		}
		
		function valiPasswordNewT(){
			var password_new = document.getElementById("password_new").value;
			var password_new_t = document.getElementById("password_new_t").value;
			var password_text = document.getElementById("password_text");
			password_text.innerHTML = "";
			if(password_new_t==""){
				password_text.innerHTML = "请再次输入新密码";
				return false;
			}else if(password_new==password_new_t){
				return true;
			}else{
				password_text.innerHTML = "两次输入不一致，请确认后重新输入";
				return false;
			}
		}
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<form action="user!doEdit.do" method="post" >
    			<input type="hidden" name="user.id" value="<s:property value="user.id"/>"/>
    			<input type="hidden" name="user.lastLoginDate" value="<s:property value="user.lastLoginDate"/>"/>
    			<input type="hidden" id="password" value="<s:property value="user.password"/>"/>
    			<input type="hidden" name="user.name" id="password" value="<s:property value="user.name"/>"/>
    			<input type="hidden" name="user.loginName" id="password" value="<s:property value="user.loginName"/>"/>
    			<p>
    				<label>姓&nbsp;&nbsp;名：</label>
    				<input type="text" name="user.name" disabled="disabled" class="text small" value="<s:property value="user.name"/>"/>
    			</p>
    			<p>
    				<label>用户名：</label>
    				<input type="text" name="user.loginName" disabled="disabled" class="text small" value="<s:property value="user.loginName"/>"/>
    			</p>
    			<p>
    				<label>请输入原密码：</label>
    				<input type="password" id="password_old" class="text small" onblur="valiPasswordOld();"/>
    				<span id="password_old_text" class="error"></span>
    			</p>
    			<p>
    				<label>请输入新密码：</label>
    				<input type="password" id="password_new" class="text small" onblur="valiPasswordNew();"/>
    				<span id="password_new_text" class="error"></span>
    			</p>
    			<p>
    				<label>请再次输入新密码：</label>
    				<input type="password" name="user.password" id="password_new_t" class="text small" onblur="valiPasswordNewT();"/>
    				<span id="password_text" class="error"></span>
    			</p>
    			<p>
    				<input type="submit" class="submit" value="确认" onclick="return validate();"/>
    				<input type="button" class="submit" value="返回" onclick="history.go(-1)"/>
    			</p>
    		</form>
		</div>
			
		<div class="clearfix">&nbsp;</div>
    
    </div>	
</body>

</html>