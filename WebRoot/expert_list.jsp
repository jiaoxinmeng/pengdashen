<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
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
						<div class="one-third">
							<div class="title">
								专家风采 &nbsp;&nbsp;
								<font color="#F8A436">Experts&nbsp;&nbsp;<i
									class="icon-group"></i> </font>
							</div>
						</div>
						<div class="two-third column-last">
							<!-- 
							<section id="options">
							<ul id="filters" class="option-set clearfix"
								data-option-key="filter">
								<li>
									<a href="#filter" data-option-value="*" class="selected active">全部</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".marketing">畜牧</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".photography">作物</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".branding">虫害</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".print">植保</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".webdesign">病害</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".marketing">畜牧</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".photography">作物</a>
								</li>
								<li>
									<a href="#filter" data-option-value=".branding">虫害</a>
								</li>
			
							</ul>
							</section>
							 -->
						</div>
						<div class="clear"></div>
					</div>
					<!--end title-content-->
				</div>
			</div>
			<!--end title-wrapper-->
			</section>

			<div class="centered-wrapper">
				<section id="portfolio-wrapper">
				<ul class="portfolio four-columns">
					<s:iterator value="expertList">
						<li data-category="branding" class="branding print">
						<a href="images/experts/<s:property value="expertImg"/>" rel="prettyPhoto"
							title=""> <span class="item-on-hover"><span
								class="hover-image"></span>
						</span> <img src="images/experts/<s:property value="expertImg"/>" alt=" " /> </a>
						<div class="portfolio-carousel-details">
							<h3>
								<a href="expert!detail.do?id=<s:property value="id"/>"><s:property value="expertName"/></a>
							</h3>
							<span>printing identity, rebranding</span>
						</div>
					</li>
					</s:iterator>
				</ul>
				</section>

				<div class="clear"></div>
			</div>
			<!--end centered-wrapper-->

			<%@include file="foot.jsp"%><!--end footer-->

		</div>
		<!--end wrapper-->
	</body>
</html>