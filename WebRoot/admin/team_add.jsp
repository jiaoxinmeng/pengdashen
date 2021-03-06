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
	
	<script type="text/javascript">
		var editor1;
		KindEditor.ready(function(K) {
			editor1 = K.create('textarea[name="team.teamContent"]', {
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
    		<h2><a href="team!doList.do">科研团队</a>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="team.teamTitle"/></h2>
    		<div>
    			<form action="team!doAdd.do" method="post" enctype="multipart/form-data">
    				
    				<p><label>名称:</label><input type="text" class="text small" name="team.teamTitle" /></p>
    				
    				<p>
    					<label>封面图片:</label>
    					<s:if test="team.teamImg!=null">
							<img src="../images/teams/<s:property value="team.teamImg"/>" width="100"/>
						</s:if>
						<s:file name="picture" theme="simple"></s:file>
						<input type="hidden" name="team.teamImg" />
					</p>
    				
    				<p>
		                <label>正文:</label><textarea name="team.teamContent"><s:property value="team.teamContent" escape="false"/></textarea>
		            </p>
		            
		            <p>
		            	<input type="submit" class="submit" value="确认"/>
		            	<input type="button" class="submit" value="取消" onclick="history.go(-1);"/>
		            </p>
    			</form>
    			
    		</div>
    	</div>
    </div>	
</body>

</html>