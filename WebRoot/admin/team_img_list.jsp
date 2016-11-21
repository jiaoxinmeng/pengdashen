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
		function goEdit(id){
			window.location.href = "team!goImgEdit.do?id="+id+"&random="+Math.random();
		}
		
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<input type="hidden" id="newsType" value="<s:property value="newsType"/>"/>
    		<h2>
    			<a href="team!doImgList.do">科研团队-图片列表</a>
    			<a href="team!goImgAdd.do">添加</a>
    		</h2>
				<div class="container_12">

					<ul class="tabs">
						<s:iterator value="teamList" status="teamList">
								<li>
									<a title="<s:property value="teamTitle"/>" href="#tab<s:property value="#teamList.index+1"/>"><s:property value="teamTitle"/></a>
								</li>
						</s:iterator>
					</ul>

					<div class="tab_container">
						<s:iterator value="teamList" status="teamList">
							<div id="tab<s:property value="#teamList.index+1"/>" class="tab_content">
								<br/>
								<h2>图片</h2>
								<ul class="imglist">
									<s:iterator value="imgList" >
										<li>
											<img src="../images/teams/<s:property value="imgName"/>" width="100" height="100" alt="<s:property value="imgContent"/>" />
											<div class="actions">
												<a  class="imglistbutton" rel="facebox" href="team!goImgEdit.do?id=<s:property value="id"/>&random=<%=Math.random()%>" ><img src="images/magnifier.png" width="16" height="16" alt="edit"/></a>
												<a onclick="return confirm('你~确定？');" href="team!doImgDel.do?id=<s:property value="id"/>" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
											</div>
										</li>
									</s:iterator>
									<li>
										<a href="team!goImgAdd.do?teamId=<s:property value="id"/>" rel="facebox"><img src="#" width="100" height="100" alt="add"/></a>
									</li>
								</ul>
							</div>
						</s:iterator>
						

					</div>
				</div>

			</div>
    </div>	
</body>

</html>