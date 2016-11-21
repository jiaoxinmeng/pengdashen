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
	
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<h2>
    			<a href="expert!doList.do?teamId=<s:property value="expert.expertTeam"/>">返回列表</a>
    			<a href="expert!goEdit.do?id=<s:property value="expert.id"/>"">编辑</a>
    			<a href="expert!doDel.do?id=<s:property value="expert.id"/>&teamId=<s:property value="expert.expertTeam"/>"" onclick="return confirm('是否确认删除')">删除</a>
    		</h2>
    		<div>
    			<p><label>姓名：</label><s:property value="expert.expertName"/></p>
    			<p><label>type：</label><s:property value="expert.expertType"/></p>
    			<p><label>order：</label><s:property value="expert.expertOrder"/></p>
    			<p><label>图片：</label><img src="../images/experts/<s:property value="expert.expertImg"/>" width="200px"/></p>
    			<p><label>团队：</label><s:property value="expert.expertTeamName"/></p>
    			<p><label>简介：</label><s:property value="expert.expertSummary" escape="false"/></p>
    			<p><label>正文：</label><s:property value="expert.expertContent" escape="false"/></p>
    		</div>
    	</div>
    </div>	
</body>

</html>