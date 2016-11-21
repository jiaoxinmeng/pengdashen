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
		<link rel="shortcut icon" href="images/ico/leaf.ico" >
		<!-- main style -->
		<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

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
						<div class="title">
								浙江省农科院概况
						</div>
						<div class="clear"></div>
					</div>
					<!--end title-content-->
				</div>
			</div>
			<!--end title-wrapper-->
			</section>

			<div class="centered-wrapper">

				<div class="testimonial-author">
					<i class="icon-user"></i>&nbsp; 基地办&nbsp;&nbsp;&nbsp;<i class="icon-time"></i>&nbsp;2015-07-03
				</div>
				<div class="testimonial">
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浙江省农业科学院为浙江省政府直属的综合性纯公益类农业科研机构，创办于1911年，主要承担农业应用基础研究、高新技术应用及开发应用研究和科技兴农服务工作，研究领域涵盖除水产、茶叶外大农业各个领域。全院设有畜牧兽医、作物与核技术利用、植物保护与微生物、农村发展、蔬菜（含农业新品种引进中心）、蚕桑、农产品质量标准、环境资源与土壤肥料、园艺、病毒学与生物技术、食品科学、数字农业、棉麻（花卉研究开发中心）、玉米、柑桔、亚热带作物等16个专业研究所和浙江农科实业集团有限公司等院属企业。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全院现有职工1900人，其中在职职工1100人，离退休人员880人。在职职工中专业技术人员869人，其中，中国工程院院士、发展中国家科学院院士1人，省特级专家3人，高级职称371人，博士（后）284人。国家“百千万人才工程”和省“千人计划”6人，国家、省级突出贡献中青年科技专家称号的19人次，享受政府特殊津贴的专家78人，省“新世纪151人才工程”169人，农业部现代农业产业技术体系岗位科学家13人，综合试验站站长11人。建有21个部、省级重点实验室（基地）中心和研究生教育中心。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全院占地面积618千平方米，院舍建筑面积179243.72平方米，其中科研用房163277.74平方米。建有海宁杨渡科研创新基地870亩，海宁盐仓科技牧场380亩，海南南繁基地238亩。全院万元以上专用仪器设备2279台。</p> 
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“十五”以来，全院承担了包括国家重点基础研究发展计划（973计划）项目、国家高技术研究发展计划（863计划）、国家科技支撑计划、国家自然科学基金项目等一大批重大项目。仅近三年，全院承担省级以上各类科研项目达1200多项；牵头实施浙江省农业新品种选育重大科技专项6项，占全省总数一半。2014年，全院科研经费总量达2.26亿元，总资产超过20亿元。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“十五”以来，审定新品种301个；获省级以上成果奖励190项，其中国家科技进步奖二等奖8项，浙江省省科学技术奖一等奖19项，二等奖45项；获国家发明专利、品种权、软件著作权505项；科研成果在生产上得到了大面积的推广应用，创造了显著的社会经济效益。科技竞争力名列全国农科院前列，其中， 2004、2005年名列全国省级农林科研单位首位，“十五”期间综合竞争力名列全国省级农林科研单位第三，“十一五”期间在全国农业科研机构综合科研能力评估中有6个研究所进入百强所行列，并有10个研究所科研综合能力列本专业排名前10位，全院整体科技竞争力继续走在全国省级农林科研机构前列。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;省级农业高科技园区坚持科技创新、科技强园，紧紧依托浙江省农业科学院作为技术支撑，浙江省农科院是我省最大的综合性农业科研机构，下设16个专业研究所和浙江农科实业集团有限公司等院属企业，学科门类齐全，科研力量雄厚。目前，全院拥有各类专业技术人员869人，其中高级职称368人，博士（后）268人，中国工程院院士、发展中国家科学院院士1人，省特级专家2人，享受政府特殊津贴的专家78人，获国家、省级突出贡献中青年科技专家称号18人次，首批“国家特支计划”青年拔尖人才1人，入选省海外高层次人才引进计划5人，省“新世纪151人才工程”第一层次9人，第二层次58人，第三层次94人。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“十五”以来，我院审定新品种275个；获省级以上成果奖励173项，其中国家科技进步二等奖8项，省科学技术一等奖17项，二等奖43项；获国家发明专利、品种权、软件著作权409项，有80%以上的成果在生产上得到了大面积的推广应用，创造了显著的社会经济效益。在“十一五”全国农业科研机构综合科研能力评估中有6个所进入百强所。目前已承担包括国家863、农业部948等各类省级以上科研项目200多项，并为5个国家、省的科技创新平台和12个国家农业产业体系试验站的科技创新和成果示范提供条件保障。这些都为园区今后的运行与发展提供强有力的科技支撑。
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>基地功能：</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杨渡基地以农业科学研究为主，示范转化为辅，主要进行科技创新田间试验、高新技术应用示范和国内外合作交流培训等。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>研究示范：</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基地承担包括国家863、农业部948等各类省级以上科研项目200多项，并为5个国家、省的科技创新平台和12个国家农业产业体系试验站的科技创新和成果示范提供条件保障。依托于杨渡科研基地开展的研究课题，取得了不少有实际应用价值的科研成果，产生巨大的经济、社会、环境效益。先后荣获省级以上科技成果  项，其中省科技进步奖一等奖  项。</p> 
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>合作交流培训：</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近年来，年接待参观、考察、培训人员2000余人次，定期举办市民“开放日”活动，为省农业新技术和新产品的示范推广作出了重要贡献。</p>				
				
				</div>

				<!--end testimonial-item-->
			</div>

			<div class="space"></div>
			<div class="separator"></div>

			<div class="clear"></div>
		</div>
		<!--end centered-wrapper-->

		<%@include file="foot.jsp"%>
		<!--end footer-->

		</div>
		<!--end wrapper-->
	</body>
</html>