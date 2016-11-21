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
<link rel="shortcut icon" href="images/ico/leaf.ico">
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
<link rel="stylesheet" type="text/css" href="css/gips.css"
	media="screen" />

<!-- revolution slider settings -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
	media="screen" />

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

</head>

<!--very important: setting a class for homepage -->
<body class="home">


	<div id="wrapper">
		<%@include file="head.jsp"%>

		<div class="top-shadow"></div>
		<div class="fullwidthbanner-container">
			<div class="fullwidthbanner">
				<ul>
					<!-- THE FIRST SLIDE -->
					<li data-transition="slidedown" data-slotamount="15"
						data-masterspeed="300"><img
						src="images/slides/slide01.jpg" alt="" />

						<div class="caption box-slide1 lfl ltl" data-x="0" data-y="150"
							data-speed="300" data-start="1000" data-easing="easeOutExpo">
							<h2>杨渡基地粮油育种区</h2>
							<p>
								粮油作物育种区拥有280亩标准农田和2200平米的科研辅助用房，以及配套的附属晴雨晒场、网室、连栋大棚、单体温室等设施。</br>主要开展粮油作物新品种的育种试验。目前，在该区实施的各类项目达120项，主要有国家“863”、“973”、支撑计划、国家现代产业技术体系油菜、大麦岗位科学家和水稻、大豆、甘薯综合试验站等等。
							</p>
						</div></li>

					<!-- THE SECOND SLIDE -->
					<li data-transition="fade" data-slotamount="15"
						data-masterspeed="300">
						<!-- THE MAIN IMAGE IN THE FIRST SLIDE --> <img
						src="images/slides/slide02.jpg" alt="" /> <!-- THE CAPTIONS IN THIS SLDIE -->
						<div class="caption box-slide2 lft ltt" data-x="770" data-y="110"
							data-speed="300" data-start="500" data-easing="easeOutExpo">
							<h2>杨渡基地智能温室区</h2>
							<p>
								智能温室区建筑总面积13622平方米，配有自然通风系统、遮阳保温系统、湿帘风机降温系统、自动供水系统等先进设备。
							</p>
						</div>
					</li>

					<!-- THE THIRD SLIDE -->
					<li data-transition="papercut" data-slotamount="15"
						data-masterspeed="300"><img
						src="images/slides/slide03.jpg" alt="" />
						
						<div class="caption box-slide1 lfl ltl" data-x="0" data-y="150"
							data-speed="300" data-start="1000" data-easing="easeOutExpo">
							<h2>杨渡基地粮油育种区</h2>
							<p>
								粮油作物育种区拥有280亩标准农田和2200平米的科研辅助用房，以及配套的附属晴雨晒场、网室、连栋大棚、单体温室等设施。</br>主要开展粮油作物新品种的育种试验。目前，在该区实施的各类项目达120项，主要有国家“863”、“973”、支撑计划、国家现代产业技术体系油菜、大麦岗位科学家和水稻、大豆、甘薯综合试验站等等。
							</p>
						</div>
					</li>
				   <!-- THE FIFTH SLIDE -->
					<li data-transition="slideright" data-slotamount="15"
						data-masterspeed="300"><img
						src="images/slides/slide04.jpg" alt="" />

						<div class="caption title_text lfl stl" data-x="0" data-y="250"
							data-speed="300" data-start="1000" data-easing="easeOutExpo">
							综合服务区</div>

						<div class="caption description_text lfl stl" data-x="0"
							data-y="292" data-speed="300" data-start="1300"
							data-easing="easeOutExpo">
							综合服务区为职工们提供了舒适的工作环境，为各项工作的开展提供了优质保障。中心景观带包括管理用房区块景观和10000平方米温室配套蓄水池和景观池。</div></li>
					<li data-transition="slideright" data-slotamount="15"
						data-masterspeed="300"><img
						src="images/slides/slide06.jpg" alt="" />

						<div class="caption title_text lfl stl" data-x="0" data-y="250"
							data-speed="300" data-start="1000" data-easing="easeOutExpo">
							蓝城农业智能温室区</div>

						<div class="caption description_text lfl stl" data-x="0"
							data-y="292" data-speed="300" data-start="1300"
							data-easing="easeOutExpo">
							温室配有自然通风系统、遮阳保温系统、湿帘风机降温系统、自动供水系统等先进设备。</div></li>
					<!-- THE SIX SLIDE -->
					<li data-transition="slideright" data-slotamount="15"
						data-masterspeed="300"><img
						src="images/slides/slide05.jpg" alt="" />

						<div class="caption title_text lfl stl" data-x="0" data-y="250"
							data-speed="300" data-start="1000" data-easing="easeOutExpo">
							蓝城农业智能温室区</div>

						<div class="caption description_text lfl stl" data-x="0"
							data-y="292" data-speed="300" data-start="1300"
							data-easing="easeOutExpo">
							温室配有自然通风系统、遮阳保温系统、湿帘风机降温系统、自动供水系统等先进设备。</div></li>
					
				</ul>
				<!--enable slider timer
					<div class="tp-bannertimer"></div>
					-->
			</div>
			<div class="bottom-shadow"></div>
		</div>
		<!--end slider-->

		<div class="centered-wrapper">

			<section class="intro">
				<h2>创建一流现代院所、创新一流科研成果、创造一流服务业绩</h2>
				<h5>将园区建成我省农业科研创新中心、现代农业种业基地、绿色农业生产示范基地、现代农业科技和文化交流平台</h5>
			</section>

			<section id="portfolio-wrapper">
				<div class="bgtitle">
					<h2>基地展示</h2>
				</div>



				<ul class="portfolio three-columns">
					<s:iterator value="baseList">
							<li>
						<a href="baseImg.do?baseId=<s:property value="id"/>" 
							title="<s:property value="baseTitle"/>"> <span class="item-on-hover"><span
								class="hover-image"></span>
						</span> <img src="images/background/<s:property value="baseImg"/>" alt=" <s:property value="baseTitle"/>" /> </a>
						<div class="portfolio-carousel-details">
							<h3>
								<a href="bases!detail.do?id=<s:property value="id"/>"> <s:property value="baseTitle"/></a>
							</h3>
							
							<a href="http://ditu.amap.com/search?query=<s:property value="baseLocationDetail"/> " target="_blank" title="<s:property value="baseLocationDetail"/>" class="baseLocationDetail"><span><i class="icon-map-marker"></i><s:property value="baseLocation"/></span></a>
						</div>
					</li>
					</s:iterator>

				</ul>




			</section>
			<div class="space"></div>
			<section>
				<!--end one-third-->
				<div class="one-third column-last">
					<div class="bgtitle">
						<h2>
							<a href="news.do?newsType=4" target="_blank">领导关怀</a>
						</h2>
					</div>
					<ul class="customlist tick-list">
						<s:iterator value="leaderList">
							<li><a
								href="news!detail.do?id=<s:property value="id"/>&newsType=<s:property value="newsType"/>"
								target="_blank"> <s:if test="newsTitle.length()>18">
										<s:property value="newsTitle.substring(0,18)" />... 
														</s:if> <s:else>
										<s:property value="newsTitle" />
									</s:else>

							</a></li>
						</s:iterator>

					</ul>
				</div>

				<div class="one-third ">
					<div class="bgtitle">
						<h2>
							<a href="news.do?newsType=1" target="_blank">对外交流</a>
						</h2>
					</div>
					<ul class="customlist tick-list">
						<s:iterator value="newsList">
							<li><a
								href="news!detail.do?id=<s:property value="id"/>&newsType=<s:property value="newsType"/>"
								target="_blank"> <s:if test="newsTitle.length()>18">
										<s:property value="newsTitle.substring(0,18)" />... 
														</s:if> <s:else>
										<s:property value="newsTitle" />
									</s:else>

							</a></li>
						</s:iterator>

					</ul>
				</div>
				<div class="one-third">
					<div class="bgtitle">
						<h2>
							<a href="news.do?newsType=3" target="_blank">工作动态</a>
						</h2>
					</div>
					<ul id="toggle-view">
						<s:iterator value="workingList">
							<li>
								<h3>
									<a
										href="news!detail.do?id=<s:property value="id"/>&newsType=<s:property value="newsType"/>"
										target="_blank"> <s:if test="newsTitle.length()>18">
											<s:property value="newsTitle.substring(0,18)" />... 
														</s:if> <s:else>
											<s:property value="newsTitle" />
										</s:else>

									</a>
								</h3> <span class="toggle-plus"></span>
								<div class="panel">
									<p>
										<s:property value="newsSummary" />
									</p>
								</div>
							</li>
						</s:iterator>

					</ul>
				</div>
			</section>

			<div class="space"></div>

			<section class="homepage-services">
				<div class="one-fourth">
					<div class="service-item">
						<i class="icon-sitemap"></i>
						<h3 class="service">
							<a href="business.do">功能区块</a>
						</h3>
						<p class="clear">杨渡科研创新基地分为东西两个试验区，共分为8个功能区块......</p>
					</div>
				</div>
				<!--end one-third-->

				<div class="one-fourth">
					<div class="service-item">
						<i class="icon-group"></i>
						<h3 class="service">
							<a href="expert.do">专家风采</a>
						</h3>
						<p class="clear">院士工作站、院士、首席科学家、果蔬生产、质检、加工专家……</p>
					</div>
				</div>
				<!--end one-third-->

				<div class="one-fourth">
					<div class="service-item">
						<i class="icon-facetime-video"></i>
						<h3 class="service">
							<a href="videos.jsp">视频中心</a>
						</h3>
						<p class="clear">
							视频中心提供各个基地的宣传片<br />
							<br />
						</p>
					</div>
				</div>
				<!--end one-third-->

				<div class="one-fourth column-last">
					<div class="service-item">
						<i class="icon-leaf"></i>
						<h3 class="service">
							<a href="achievement.do">科研成果</a>
						</h3>
						<p class="clear">
							展示高新科技园区中的科研成果<br />
							<br />
						</p>
					</div>
				</div>
				<!--end one-third-->
			</section>
			<div class="space"></div>

			<section class="homepage-clients">
				<h2>
					<a href="team!list.do">科研团队</a>
				</h2>
				<div align="right">
					<a href="team!list.do">更多&nbsp;<i
						class="icon-double-angle-right"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<ul class="clients">
					<s:iterator value="teamList">
						<li><a class="groups"
							href="team!detail.do?id=<s:property value="id"/>"><img
								src="images/groups/<s:property value="teamLogo"/>" alt="client" /></a></li>
					</s:iterator>
				</ul>
			</section>

			<div class="half-space"></div>

		</div>
		<!--end centered-wrapper-->

		<%@include file="foot.jsp"%>
</body>
</html>