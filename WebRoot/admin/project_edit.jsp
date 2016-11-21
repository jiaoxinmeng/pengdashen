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
	
	<script type="text/javascript" src="kindeditor/kindeditor.js"></script>
	<script type="text/javascript" src="kindeditor/lang/zh_CN.js"></script>	
	
	<script>
		var editor1;
		KindEditor.ready(function(K) {
			editor1 = K.create('textarea[name="project.projectContent"]', {
				uploadJson : 'kindeditor/upload_json.jsp',
				fileManagerJson : 'kindeditor/file_manager_json.jsp',
				allowFileManager : true,
				allowImageUpload : true,
				autoHeightMode : true,
				afterCreate : function() {this.loadPlugin('autoheight');},
				afterBlur : function(){ this.sync(); }  //Kindeditor下获取文本框信息
			});
		});
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
	    	<form action="project!doEdit.do" method="post" enctype="multipart/form-data">
	    		<input type="hidden" name="project.id" value="<s:property value="project.id"/>"/>
	    		<p><label>项目名称：</label><input type="text" class="text small" name="project.projectTitle" value="<s:property value="project.projectTitle"/>"/></p>
	    		<p>
	    			<label>所属团队：</label>
	    			<select name="project.projectTeamId">
	    				<s:iterator value="teamList">
		    				<option value="<s:property value="id"/>" <s:if test="project.projectTeamId==id">selected="selected"</s:if>><s:property value="teamTitle"/></option>
	    				</s:iterator>
	    			</select>
	    		</p>
	    		<p><label>项目基金：</label><input type="text" class="text small" name="project.projectFund" value="<s:property value="project.projectFund"/>"/></p>
	    		<p><label>项目类型：</label><input type="text" class="text small" name="project.projectType" value="<s:property value="project.projectType"/>"/></p>
	    		<p><label>发起日期：</label><input type="text" class="text small" name="project.projectDate" value="<s:property value="project.projectDate"/>"/></p>
	    		<p><label>项目介绍：</label><textarea name="project.projectContent"><s:property value="project.projectContent" escape="fasle"/></textarea></p>
	    		<p>
	    			<input type="submit" class="submit" value="提交"/>
	    			<input type="button" class="submit" value="返回" onclick="history.go(-1);"/>
	    		</p>
	    	</form>	
    	</div>
    </div>	
</body>

</html>