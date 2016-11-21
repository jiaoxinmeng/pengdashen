<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>高新科技园区-后台管理界面</title>

	
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
	
	<!-- LOAD JQUERY-->
	<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
	
	<script>
		
		$(document).ready(function(){
			//alert($("#isPublish").val());
			if($("#isPublish").val()==1){
				$("#publish").hide();
				$("#backPublish").show();
			}else{
				$("#publish").show();
				$("#backPublish").hide();
			}
		});
			
		function goEdit() {
			var id = $("#id").val();
			//alert(id);
			window.location.href = "news!goEdit.do?id=" + id + "&random="
					+ Math.random();
		}
		function goList() {
			var type = $("#type").val();
			//alert(type);
			window.location.href = "news!doList.do?newsType=" + type
					+ "&random=" + Math.random();
		}
		function goPublish() {
			//var id = $("#id").val();
			//alert(id);
			//window.location.href = "news!doPublish.do?id="+id+"&random="+Math.random();
			$.ajax({
				type : "post",
				url : "news!doPublish.do",
				dataType : "json",
				data : {
					"id" : $("#id").val()
				},
				success : function(data) {
					alert("发布成功");
					$("#publish").hide();
					$("#backPublish").show();
				}
			});
		}
		function backPublish() {
			$.ajax({
				type : "post",
				url : "news!doBackPublish.do",
				dataType : "json",
				data : {
					"id" : $("#id").val()
				},
				success : function(data) {
					alert("撤回成功");
					$("#publish").show();
					$("#backPublish").hide();
				}
			});
		}
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
    			&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="news.newsTitle"/>&nbsp;&nbsp;&nbsp;&nbsp;
    		</h2>
    		
    		<div>
    			<p><s:property value="news.newsSummary" escape="false"/></p>
    			<p><s:property value="news.newsContent" escape="false"/></p>
    		</div>
    		
    		<div>
    			<input type="hidden" id="id" value="<s:property value="news.id"/>"/>
    			<input type="hidden" id="type" value="<s:property value="newsType"/>"/>
    			<input type="hidden" id="isPublish" value="<s:property value="news.newsIsPublish"/>"/>
    		</div>
    		
    		<div class="container_12" align="center">
    			<input type="button" value="再次编辑" onclick="goEdit();"/>&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="button" value="返回列表" onclick="goList();"/>&nbsp;&nbsp;&nbsp;&nbsp;
   				<input type="button" id="publish" value="发布" onclick="goPublish();"/>&nbsp;&nbsp;&nbsp;&nbsp;
   				<input type="button" id="backPublish" value="撤回" onclick="backPublish();"/>
   			
    		</div>
    	</div>
    </div>	
</body>

</html>