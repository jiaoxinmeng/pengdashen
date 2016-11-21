<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!-- mobile meta tag -->
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">

		<title>浙江省农业科学院农业高科技园区</title>

		<!-- main style -->
		<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
		<link rel="shortcut icon" href="images/ico/leaf.ico" >
		<!-- color scheme -->
		<link rel="stylesheet" type="text/css"
			href="color-schemes/yellow/yellow.css" media="screen" title="yellow" />

		<!--miscellaneous-->
		<link rel="stylesheet" type="text/css" href="css/superfish.css"
			media="screen">
		<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css"
			media="screen" />
		<link rel="stylesheet" type="text/css" href="css/font-awesome.css"
			media="screen" />
		<link rel="stylesheet" type="text/css" href="css/audioplayer.css"
			media="screen" />

		<!-- revolution slider settings -->
		<link rel="stylesheet" type="text/css"
			href="rs-plugin/css/settings.css" media="screen" />

		<!-- setting mobile environment -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css"
			media="screen" />

		<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="css/font-awesome-ie7.min.css">
	<![endif]-->

		<!--[if lt IE 9]>
	<script src="../../../html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

		<script type="text/javascript" src="js/jquery-1.8.3.min.js">
</script>
		<script type="text/javascript" src="js/hoverIntent.js">
</script>
		<script type="text/javascript" src="js/superfish.js">
</script>
		<script type="text/javascript" src="js/jquery.jcarousel.js">
</script>
		<script type="text/javascript" src="js/jquery.tweet.js">
</script>
		<script type="text/javascript" src="js/jflickrfeed.js">
</script>
		<script type="text/javascript" src="js/jquery.prettyPhoto.js">
</script>
		<script type="text/javascript" src="js/slides.min.jquery.js">
</script>
		<script type="text/javascript" src="js/jquery.mobilemenu.js">
</script>
		<script type="text/javascript" src="js/jquery.contact.js">
</script>
		<script type="text/javascript" src="js/jquery.preloadify.min.js">
</script>
		<script type="text/javascript" src="js/jquery.jplayer.min.js">
</script>
		<script type="text/javascript" src="js/jquery.isotope.min.js">
</script>

		<!-- jQuery Revolution Slider -->
		<script type="text/javascript"
			src="rs-plugin/js/jquery.themepunch.plugins.min.js">
</script>
		<script type="text/javascript"
			src="rs-plugin/js/jquery.themepunch.revolution.min.js">
</script>

		<script type="text/javascript" src="js/custom.js">
</script>

		<link rel="stylesheet" type="text/css" href="template-changer.css"
			media="screen" />
		<script type="text/javascript" src="js/jquery.cookie.js">
</script>
		<script type="text/javascript" src="js/styleswitch.js">
</script>

		<!-- Google Web Fonts -->
		<link
			href='../../../fonts.googleapis.com/css@family=Open+Sans_3A300,400,600,700'
			rel='stylesheet' type='text/css'>


		<script type="text/javascript">
$(function() {
	// Call stylesheet init so that all stylesheet changing functions 
	// will work.
	$.stylesheetInit();

	// This code loops through the stylesheets when you click the link with 
	// an ID of "toggler" below.
	$('#toggler').bind('click', function(e) {
		$.stylesheetToggle();
		return false;
	});

	// When one of the styleswitch links is clicked then switch the stylesheet to
	// the one matching the value of that links rel attribute.
	$('.styleswitch').bind('click', function(e) {
		$.stylesheetSwitch(this.getAttribute('rel'));
		return false;
	});
});
</script>

	</head>

	<body>

		<div id="wrapper">
			<%@include file="head.jsp"%>

			<div class="top-shadow"></div>

			<section class="page-title">
			<div class="page-background">
				<div class="pattern1"></div>
			</div>
			<div class="bottom-shadow"></div>
			<div class="title-wrapper">
				<div class="title-bg">
					<div class="title-content">
						<s:if test="newsType==1">
							<div class="title">
								对外交流 &nbsp;&nbsp;
								<font color="#F8A436">Community&nbsp;&nbsp;<i
									class="icon-align-justify"></i>
								</font>
							</div>
						</s:if>
						<s:elseif test="newsType==2">
							<div class="title">
								科研进展 &nbsp;&nbsp;
								<font color="#F8A436">Research Progress&nbsp;&nbsp;<i
									class="icon-align-justify"></i>
								</font>
							</div>
						</s:elseif>
						<s:elseif test="newsType==3">
							<div class="title">
								工作动态 &nbsp;&nbsp;
								<font color="#F8A436">Working Status&nbsp;&nbsp;<i
									class="icon-align-justify"></i>
								</font>
							</div>
						</s:elseif>
						<s:elseif test="newsType==4">
							<div class="title">
								领导关怀 &nbsp;&nbsp;
								<font color="#F8A436">Solicitude&nbsp;&nbsp;<i
									class="icon-align-justify"></i>
								</font>
							</div>
						</s:elseif>
						<s:elseif test="newsType==5">
							<div class="title">
								通知通告 &nbsp;&nbsp;
								<font color="#F8A436">Notification&nbsp;&nbsp;<i
									class="icon-align-justify"></i>
								</font>
							</div>
						</s:elseif>

						<div class="clear"></div>
					</div>
					<!--end title-content-->
				</div>
			</div>
			<!--end title-wrapper-->
			</section>

			<div class="centered-wrapper">
				<div class="news-list">
					<ul class="customlist">
						<s:iterator value="newsList">
							<li>
								<i class="icon-star"></i>&nbsp;&nbsp;
								<a href="news!detail.do?id=<s:property value="id"/>&newsType=<s:property value="newsType"/>"><s:property value="newsTitle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<s:date name="newsDate" format="yyyy-MM-dd"/>]
							</li>
						</s:iterator>
					
					</ul>
					<div class="space"></div>

					<div align="center">
						<s:if test="pageCount!=null">
							<s:if test="page==1">
								<a href="#">上一页</a>
							</s:if>
							<s:else>
								<a href="news.do?page=${page-1}&newsType=${newsType}"
									class="button yellow">上一页</a>
							</s:else>
										&nbsp;&nbsp; 第${page}页 &nbsp;&nbsp;/
										&nbsp;&nbsp;共${pageCount}页 &nbsp;&nbsp;
										<s:if test="page==pageCount">
								<a href="#">下一页</a>
							</s:if>
							<s:else>
								<a href="news.do?page=${page+1}&newsType=${newsType}"
									class="button yellow">下一页</a>
							</s:else>

						</s:if>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			<!--end centered-wrapper-->

			<%@include file="foot.jsp"%><!--end footer-->

		</div>
		<!--end wrapper-->
	</body>
</html>