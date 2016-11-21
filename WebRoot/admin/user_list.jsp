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
			//alert(id)
			window.location.href = "user!goEdit.do?id="+id+"&random="+Math.random();
		}
		
		function del(id){
			if(confirm("是否确认删除")){
				window.location.href = "user!doDel.do?id="+id+"&random="+Math.random();
			}
		}
		
		function add(){
			window.location.href = "user!goAdd.do?random="+Math.random();
		}
		
		
		
		function print(){
			$("#print").hide();
			window.setTimeout(function(){ 
				$("#print").show();
			},2000); 
			factory.printing.Print(false);
		}
		
		
	</script>
	

</head>

<body>
	<object id="factory" style="DISPLAY: none" viewastext classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814" codebase="smsx.cab#Version=6,5,439,72"></object>
	<script type="text/javascript">
		//用于设置打印参数
		factory.printing.header = "";  //页眉
		factory.printing.footer = "";  //页脚
		factory.printing.portrait = false;  //true为纵向打印，false为横向打印
		factory.printing.leftMargin = 0; //左页边距
		factory.printing.topMargin = 0; //上页边距
		factory.printing.rightMargin = 0;  //右页边距
		factory.printing.bottomMargin = 0;   //下页边距
		
	</script>
	
	
	<div id="main_content_wrap" class="container_12">
    	<div class="container_12">
    		<h2>管理员列表</h2>
    		<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
		          <th width="5%" scope="col">序号</th>
		          <th width="20%" scope="col">姓名</th>
		          <th width="15%" scope="col">用户名</th>
		          <th width="13%" scope="col">密码</th>
		          <th width="13%" scope="col">类型</th>
		          <th width="20%" scope="col">最后登录时间</th>
		          <th width="19%" scope="col">操作</th>
				</tr>
				<s:iterator value="userList" status="user">
		        	<tr>
			            <td scope="col"><s:property value="#user.index+1+(page-1)*pageSize"/></td>
 			            <td scope="col"><s:property value="name"/></td>
			            <td scope="col"><s:property value="loginName"/></td>
			            <td scope="col"><s:property value="password"/></td>
			            <td scope="col"><s:property value="typeName"/></td>
			            <td scope="col">
			            	<s:if test="lastLoginDate==null">
			            		暂未使用
			            	</s:if>
			            	<s:else>
			            		<s:date name="lastLoginDate" format="yyyy-MM-dd hh:mm:ss"/>
			            	</s:else>
			            </td>
			            <td scope="col"><img src="images/email_edit.png" alt="编辑" onclick="javascript:edit(<s:property value="id"/>);" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/email_delete.png" alt="删除" width="16" height="16" onclick="javascript:del(<s:property value="id"/>);"/></td>
			        </tr>
		        </s:iterator>
    		</table>
		</div>
			
		<div class="clearfix">&nbsp;</div>
		<div id="print">
    		<input type="button" class="submit" value="新增" onclick="add();"/>
			<input type="button" value="打印" onclick="print();" />
			<input type="button" value="预览" onclick="factory.printing.Preview();" />
		</div>
    	
    </div>	
</body>

</html>