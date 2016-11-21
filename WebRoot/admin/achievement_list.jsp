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
			window.location = "achievement!goEdit.do?id="+id+"&random=" + Math.random();
		}
	
		function del(id){
			if(confirm("确认删除")){
				window.location = "achievement!doDel.do?id="+id+"&random=" + Math.random();
			}
		}
		
		function go(page){
			window.location = "achievement!doList.do?page=" + page+"&random=" + Math.random();
		}
	</script>
	

</head>

<body>
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<h2>
    			科研成果
    			<a href="achievement!goAdd.do">新增</a>
    		</h2>
    		<table width="100%" border="0" cellpadding="0" cellspacing="0">
    
        <tr>
        
            <th width="5%" scope="col">
            <input type="checkbox" name="checkbox" id="checkbox" class="checkall" /><label for="checkbox"></label></th>
            <th width="5%" scope="col">序号</th>
            <th width="43%" scope="col">名称</th>
            <th width="15%" scope="col">发表人</th>
            <th width="13%" scope="col">发表日期</th>
            <th width="10%" scope="col">类型</th>
            <th width="19%" scope="col">操作</th>
        </tr>
        
        <s:iterator value="achievementList" status="achievement">
        	<tr>
	            <td scope="col"><input type="checkbox" name="checkbox2" id="checkbox2" /></td>
	            <td scope="col"><s:property value="#achievement.index+1+(page-1)*pageSize"/></td>
	            <td scope="col"><a target="middleFrame" rel="facebox" href="achievement!doView.do?id=<s:property value="id"/>&random=<%=Math.random() %>>"><s:property value="achievementTitle"/></a></td>
	            <td scope="col"><s:property value="achievementAuthor"/></td>
	            <td scope="col"><s:date name="achievementDate" format="yyyy-MM-dd"/></td>
	            <td scope="col"><s:property value="achievementType"/></td>
	            <td scope="col"><img src="images/email_edit.png" alt="编辑" onclick="javascript:edit(<s:property value="id"/>);" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/email_delete.png" alt="删除" width="16" height="16" onclick="javascript:del(<s:property value="id"/>);"/></td>
	        </tr>
        </s:iterator>
        
    </table>
    
    <!-- END TABULAR DATA EXAMPLE -->
      
           
           
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
    </div>	
</body>

</html>