<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>高新科技园区-后台管理界面-管理区块详情</title>

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
    		<h2><a href="business!doList.do" target="middleFrame">功能区块</a>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="business.businessTitle"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="business!goEdit.do?id=<s:property value="business.id"/>" target="middleFrame">编辑</a></h2>
    		<div>
    			<p>
					<s:property value="business.businessContent" escape="false"/>
				</p>
    		</div>
    	</div>
    </div>	
</body>

</html>