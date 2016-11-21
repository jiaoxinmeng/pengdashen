<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>高新科技园区-后台管理界面</title>

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
	
	<!-- LOAD JQUERY-->
	<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			//初始化页面，隐藏moudle栏
			//判断当为全体管理员时，关闭二级菜单
	      	if($("#type option:selected").val()==1){
	      		//alert("hide");
	      		$("#moudle").hide();
	      	}else{
	      		$("#moudle").show();
	      	}
			
			//onChange ajax级联菜单
			$("#type").change(function(){
				//alert($("#type option:selected").val());
		    	$.ajax({type:"post",url:"user!getNextList.do",dataType:"json",
		           data:{"typeId" : $("#type option:selected").val()},
		           success:function(data){
		        	  //判断当为全体管理员时，关闭二级菜单
		        	  if($("#type option:selected").val()==1){
		        		  //alert("hide");
		        		  $("#moudle").hide();
		        	  }else{
		        		  $("#moudle").show();
		        	  }
		        	  //清空二级菜单
		              $("#moudle").html("");
		              //遍历返回数据
		        	  $.each(data,function(i,item){
		        		  //alert(item.id);
		            	  $("#moudle").append("<option value="+item.id+">"+item.businessTitle+"</option>");
		              });
		           }
		       });
		    });
		});
	</script>	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<form action="user!doAdd.do" method="post" >
    			<p>
    				<label>姓名：</label>
    				<input type="text" name="user.name" class="text small" value="<s:property value="user.name"/>"/>
    			</p>
    			<p>
    				<label>管理员类型：</label>
    				<select id="type" name="user.typeId">
    					<s:iterator value="typeList" var="type">
    						<option value="<s:property value="#type.id"/>"><s:property value="#type.nameCn"/></option>
    					</s:iterator>
    				</select>
    					<select id="moudle" name="user.moudleId"></select>
    			</p>
    			<p>
    				<label>用户名：</label>
    				<input type="text" name="user.loginName" class="text small" value="<s:property value="user.loginName"/>"/>
    			</p>
    			<p>
    				<label>密码：</label>
    				<input type="text" name="user.password" class="text small" value="<s:property value="user.password"/>"/>
    			</p>
    			<p>
    				<input type="submit" class="submit" value="确认"/>
    				<input type="button" class="submit" value="返回" onclick="history.go(-1)"/>
    			</p>
    		</form>
		</div>
			
		<div class="clearfix">&nbsp;</div>
    
    </div>	
</body>

</html>