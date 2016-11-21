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
	
	<style>
		.lab_tag_active {
			color: #000;
			font-weight: bold;
		 }
	</style>
	
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
			window.location = "expert!doList.do?page=" + page+"&random=" + Math.random();
		}
		
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	
    	
    	<div id="lab_tag" class="grid_12">
    		<a <s:if test="teamId==0">class="lab_tag_active"</s:if> href="expert!doList.do?random=<%=Math.random() %>">全部</a>
    		<s:iterator value="teamList">
    			<a  <s:if test="teamId==id">class="lab_tag_active"</s:if> href="expert!doList.do?teamId=<s:property value="id"/>&random=<%=Math.random() %>"><s:property value="teamTitle"/></a>
    		</s:iterator>
    	</div>
    	
    	<h2></h2>
    	<a href="expert!goAdd.do">新增</a>
		<div id="icondock" class="grid_12">
   		  <ul>
   		    <s:iterator value="expertList">
   		      <li><a href="expert!doView.do?id=<s:property value="id"/>" target="middleFrame" title="查看<s:property value="expertName"/>详情"><img width="190" src="../images/experts/<s:property value="expertImg"/>" alt="<s:property value="expertName"/>" /><s:property value="expertName"/></a></li>
   		    </s:iterator>  
   		  </ul>
   		</div>
		
		<div class="grid_12">
           
           <div class="clearfix">&nbsp;</div>
           
            <ul id="pagination">
            	
            	<s:if test="page==1">
            		<li class="previous-off">上一页</li>
            	</s:if>
            	<s:else>
            		<li class="previous"><a href="javascript:go(<s:property value="page-1"/>);">上一页</a></li>
            	</s:else>
                <s:iterator status="pageNumber" begin="1" end="totalPage">
                	<s:if test="#pageNumber.index+1==page">
                		<li class="active"><s:property value="#pageNumber.index+1"/></li>
                	</s:if>
                	<s:else>
                		<li><a href="javascript:go(<s:property value="#pageNumber.index+1"/>);"><s:property value="#pageNumber.index+1"/></a></li>
                	</s:else>
                </s:iterator>
                <s:if test="%{page<=totalPage-1}">
            		<li class="next"><a href="javascript:go(<s:property value="page+1"/>);">下一页</a></li>
            	</s:if>
            	<s:else>
            		<li class="next-off">下一页</li>
            	</s:else>
                
            </ul>
           </div>        
    	</div>
   	
</body>

</html>