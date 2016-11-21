<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<title>Zaasbase 后台管理</title>
		
	</head>
	<frameset rows="200,*" frameborder="NO" border="0" framespacing="0" scrolling="auto">
		<frame src="top.jsp" noresize="noresize" frameborder="0"
			name="topFrame" scrolling="no" marginwidth="0" marginheight="0"
			/>
		<frameset cols="100%" rows="100%" id="frame">
			<frame src="base!doList.do" name="middleFrame" noresize="noresize"
				marginwidth="0" marginheight="0" frameborder="0" scrolling="auto"
				/>
			<%--<frame src="base!doView.do?id=1" name="main" marginwidth="0" marginheight="0"
				frameborder="0" scrolling="auto"/>
		--%></frameset>
		<noframes>
			<body></body>
		</noframes>
	</frameset>	
</html>
