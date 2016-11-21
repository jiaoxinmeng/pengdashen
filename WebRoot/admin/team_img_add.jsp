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
		
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<h2>new team_img</h2>
			<form action="team!doImgAdd.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="teamImg.imgTeamId" value="<s:property value="teamId"/>"/>
				<p>
					<label>作者：</label>
					<input type="text" name="teamImg.imgAuthor" class="text small"/>
				</p>
				<p>
					<label>拍摄时间：</label>
					<input type="text" name="teamImg.imgDate" class="text small"/>
				</p>
				<p>
					<label>图片简介：</label>
					<input type="text" name="teamImg.imgContent" class="text small"/>
				</p>
				<p>
					<label>图片上传：</label>
					<s:file name="picture" theme="simple"></s:file>
				</p>
				<p>
					<input type="submit" class="submit" value="确认"/>
		            <input type="button" class="submit" value="取消" onclick="history.go(-1);"/>
				</p>
			</form>
		</div>
    </div>	
</body>

</html>