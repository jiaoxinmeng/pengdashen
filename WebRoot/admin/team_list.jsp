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
	
	<script>
		function edit(id){
			window.location = "news!goEdit.do?id="+id+"&random=" + Math.random();
		}
	
		function del(id){
			var newsType = document.getElementById("newsType").value;
			if(confirm("确认删除")){
				window.location = "news!doDel.do?id="+id+"&newsType="+newsType+"&random=" + Math.random();
			}
		}
		
		function go(page){
			var newsType = document.getElementById("newsType").value;
			window.location = "news!doList.do?newsType="+newsType+"&page=" + page+"&random=" + Math.random();
		}
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<input type="hidden" id="newsType" value="<s:property value="newsType"/>"/>
    		<h2>
    			<a href="team!doList.do">科研团队</a>
    			<a href="team!goAdd.do">新增</a>
    		</h2>
    		
        	<div id="icondock" class="grid_12">
    		  <ul>
    		    <s:iterator value="teamList">
    		      <li><a href="team!doView.do?id=<s:property value="id"/>" target="middleFrame" title="查看<s:property value="teamTitle"/>详情"><img width="190" src="../images/teams/<s:property value="teamImg"/>" alt="Contacts" /><s:property value="teamTitle"/></a></li>
    		    </s:iterator>  
    		  </ul>
    		</div>
     
    	</div>
    </div>	
</body>

</html>