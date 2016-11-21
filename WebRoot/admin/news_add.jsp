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
			editor1 = K.create('textarea[name="news.newsContent"]', {
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
    		<h2>
    			<s:if test="newsType==3">
    				<a href="news!doList.do?newsType=3" target="middleFrame">工作动态</a>
    			</s:if>
    			<s:if test="newsType==1">
    				<a href="news!doList.do?newsType=1" target="middleFrame">对外交流</a>
    			</s:if>
    			<s:if test="newsType==2">
    				<a href="news!doList.do?newsType=2" target="middleFrame">科研进站</a>
    			</s:if>
    			&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="news.newsTitle"/>
    			
    		</h2>
    		<div>
    			<form action="news!doAdd.do" method="post" enctype="multipart/form-data">
    				
    				<input type="hidden" name="news.newsType" value="<s:property value="newsType"/>"/>
    				
    				<p>
    					<label>标题:</label>
    					<input type="text" class="text small" name="news.newsTitle"/>
    				</p>
    				
    				<p>
    					<label>简介:</label>
    					<input type="text" class="text medium" name="news.newsSummary"/>
					</p>
    				
    				<p><label>发表机构:</label><input type="text" class="text small" name="news.newsAuthor"/></p>
    				
    				<p><label>发表时间:</label><input type="text" class="text small" name="news.newsDate" /></p>
    				
    				<p>
		                <label>正文:</label><textarea name="news.newsContent"></textarea>
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