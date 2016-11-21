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
     
    <script type="text/javascript" src="kindeditor/kindeditor.js"></script>
	<script type="text/javascript" src="kindeditor/lang/zh_CN.js"></script>	
    
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
		var editor1;
		KindEditor.ready(function(K) {
			editor1 = K.create('textarea[name="achievement.achievementContent"]', {
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
    		<form action="achievement!doAdd.do" method="post" enctype="multipart/form-data">
	    		<h2>
	    			
	    		</h2>
	    		<p><label>名称：</label><input type="text" class="text small" name="achievement.achievementTitle"/></p>
	    		<p><label>类型：</label><input type="text" class="text small" name="achievement.achievementType"/></p>
	    		<p><label>简介：</label><input type="text" class="text medium" name="achievement.achievementSummary"/></p>
	    		<p><label>作者：</label><input type="text" class="text small" name="achievement.achievementAuthor"/></p>
	    		<p><label>时间：</label><input type="text" class="text small" name="achievement.achievementDate"/></p>
	    		<p><label>正文：</label><textarea id="achievementContent" name="achievement.achievementContent"></textarea></p>
	    		<p>
	    			<input type="submit" class="submit" value="提交"/>
	    			<input type="button" class="submit" value="关闭"/>
	    		</p>
    		</form>
    	</div>
    </div>	
</body>

</html>