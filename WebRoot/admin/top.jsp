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
	
	<script>
	//$(function(){
	//    $("ul#first_ul li a").click(function(){
	//        $(this).addClass("active").siblings().removeClass("active");
	//    });
	//});
	</script>
</head>

<body>
	<div id="header" class="png_bg">

    <div id="head_wrap" class="container_12">
    
        <!-- start of logo - you could replace this with an image of your logo -->
        <div id="logo" class="grid_4">
          <h1>Zaasbase<span>Admin</span></h1>
        </div>
        <!-- end logo -->
        
        <!-- start control panel -->
    	<div id="controlpanel" class="grid_8">
            <ul>
            	<li><p><strong>你好，<s:property value="#session.user.name"/></strong></p></li>
                <s:if test="#session.user.typeId==1">
                	<li><a href="user!doList.do" target="middleFrame" class="first">设置</a></li>
                </s:if>
                <li><a target="middleFrame" href="user!changePassword.do?id=<s:property value="#session.user.id"/>" class="first">修改密码</a></li>
                <li><a href="user!loginOut.do" onclick="return confirm('是否确认退出')" class="last">退出登录</a></li>
            </ul>
       </div>
        <!-- end control panel -->
    
        <!-- start navigation -->
      	<div id="navigation" class="grid_12">
            <ul id="first_ul">
                <li ><a href="#" class="active">主页</a></li>
                <li ><a href="#" >用户</a></li>
                <li ><a href="#" >内容</a></li>
                <li ><a href="#" >产品</a></li>
                <li ><a href="#" >文字</a></li>
                <li ><a href="#" >很长的导航链接</a></li>
                <li ><a target="middleFrame" href="business!doList.do" >功能区块</a></li>
                <li ><a href="http://192.168.68.130:8080/zaasbase/index.do" target="_blank" >前台页面</a></li>
            </ul>
        </div>
        <!-- end navigation -->
    </div><!-- end headwarp  -->
</div><!-- end header -->

<!-- staqrt subnav -->
<div id="sub_nav">
	<div id="subnav_wrap" class="container_12">
		<!-- start sub nav list -->
		<div id="subnav" class="grid_12">
	        <ul>
	            <li><a target="middleFrame" href="base!doList.do">基地展示</a></li>
	            <li><a target="middleFrame" href="base!doImgList.do">基地图片</a></li>
	            <li><a target="middleFrame" href="news!doList.do?newsType=4">领导关怀</a></li>
	            <li><a target="middleFrame" href="news!doList.do?newsType=1">对外交流</a></li>
	            <li><a target="middleFrame" href="news!doList.do?newsType=3">工作动态</a></li>
	            <li><a target="middleFrame" href="news!doList.do?newsType=5">通知公告</a></li>
	            <li><a target="middleFrame" href="team!doList.do">科研团队</a></li>
	            <li><a target="middleFrame" href="team!doImgList.do">团队图片</a></li>
	            <li><a target="middleFrame" href="achievement!doList.do">科研成果</a></li>
	            <li><a target="middleFrame" href="project!doList.do">科研项目</a></li>
	            <li><a target="middleFrame" class="sub_nav_last" href="expert!doList.do">专家风采</a></li>
	        </ul>
	    </div>
	    <!-- end subnavigation list -->	
	</div>
</div>
<!-- end sub_nav -->
</body>

</html>	