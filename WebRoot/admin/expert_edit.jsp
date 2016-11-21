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
    			
    		</h2>
    		<div>
    			<form action="expert!doEdit.do" method="post" enctype="multipart/form-data">
    				<input type="hidden" name="expert.id" value="<s:property value="expert.id"/>"/>
    				<p><label>姓名：</label><input type="text" class="text small" name="expert.expertName" value="<s:property value="expert.expertName"/>"/></p>
	    			<p><label>type：</label><input type="text" class="text small" name="expert.expertType" value="<s:property value="expert.expertType"/>"/></p>
	    			<p><label>order：</label><input type="text" class="text small" name="expert.expertOrder" value="<s:property value="expert.expertOrder"/>"/></p>
	    			<p>
	    				<label>图片：</label>
	    				<s:if test="expert.expertImg!=null||expert.expertImg!=''">
		    				<img src="../images/experts/<s:property value="expert.expertImg"/>" width="200px"/>
	    				</s:if>
	    				<s:file name="picture" theme="simple"></s:file>
	    				<input type="hidden" name="expert.expertImg" value="<s:property value="expert.expertImg"/>"/>
	    			</p>
	    			<p>
		    			<label>所属团队：</label>
		    			<select name="expert.expertTeam">
		    				<s:iterator value="teamList">
			    				<option value="<s:property value="id"/>" <s:if test="expert.expertTeam==id">selected="selected"</s:if>><s:property value="teamTitle"/></option>
		    				</s:iterator>
		    			</select>
		    		</p>
	    			<p><label>简介：</label><input type="text" class="text large" name="expert.expertSummary" value="<s:property value="expert.expertSummary"/>"/></p>
	    			<p><label>正文：</label><textarea name="expert.expertContent"><s:property value="expert.expertContent" escape="false"/></textarea></p>
	    			<p>
	    				<input type="submit" class="submit" value="提交"/>
	    				<input type="button" class="submit" value="取消" onclick="history.go(-1);"/>
	    			</p>
    			</form>
    		</div>
    	</div>
    </div>	
</body>

</html>