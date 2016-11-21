<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>高新科技园区-后台欢迎</title>

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

	
    <!-- LOAD GRAPH JAVASCRIPT FILE-->
	<script src="js/graphs.js" type="text/javascript"></script>
	
	<script>
		function commit(){
			window.location.href = "user!doCommit.do";
		}
		function logOut(){
			window.location.href = "user!loginOut.do";
		}
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<h2 align="center">入网信息安全责任承诺书</h2>
    		<div id="icondock" class="grid_12">
				
				<p>本系统各级信息管理员必须遵守以下各项规定： </p>
				<p>一、遵守国家有关法律、行政法规和管理规章，严格执行信息安全保密规定。</p>
				<p>二、不得利用本系统在互联网上从事危害国家安全、泄露国家机密等违法犯罪活动；不得利用本系统在互联网上制作、查阅、复制和传播违反宪法和法律、妨碍社会治安，破坏国家统一、破坏民族团结、色情、暴力等信息；不得利用本系统在互联网上发布如下侵犯国家、社会、集体的利益和公民合法权益的任何信息：</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 反对宪法所确定的基本原则的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、危害国家安全，泄露国家机密，颠覆国家政权，破坏国家统一的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、损害国家荣誉和利益的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、煽动民族仇恨、民族歧视，破坏民族团结的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、破坏国家宗教政策，宣扬邪教和封建迷信的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6、散布谣言，扰乱社会秩序，破坏社会稳定的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7、散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8、侮辱或者诽谤他人，侵害他人合法权益的；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9、含有法律、行政法规禁止的其他内容的。</p>
				<p>三、提供的信息必须遵守国家有关知识产权的规定。</p>
				<p>四、若违反上述规定，信息安全管理部门有权采取措施，如实取证并上报相关部门处理，由信息管理员承担相应的责任。</p>
				<br/>
				
				<br/>
			</div>
			
			<div id="icondock" class="grid_12" align="center">
				<input type="button" value="同意承诺" onclick="commit();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="退出系统" onclick="logout();"/>
			</div>
    	</div>
    </div>
	
</body>

</html>