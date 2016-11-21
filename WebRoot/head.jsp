<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="shortcut icon" href="images/ico/leaf.ico" >

<header id="header">

<div class="centered-wrapper">
	<div class="one-third">
		<div class="logo">
			<a href="index.jsp"></a>
		</div>
	</div>
	<!--end one-third-->

	<div class="two-third column-last">
		<nav id="navigation">
		<ul id="mainnav">
			<li>
				<a href="index.do" style="font-weight: 500;">首页 </a>
			</li>
			<li>
				<a href="#" style="font-weight: 500;">园区信息</a>
				<ul>
					<li>
						<a href="news.do?newsType=4" style="font-weight: 500;">领导关怀</a>
					</li>
					<li>
						<a href="news.do?newsType=1" style="font-weight: 500;">对外交流</a>
					</li>
					<li>
						<a href="news.do?newsType=3" style="font-weight: 500;">工作动态</a>
					</li>
					<li>
						<a href="news.do?newsType=5" style="font-weight: 500;">通知通告</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#" style="font-weight: 500;">科学研究 </a>
				<ul>
					<!--  
					<li>
						<a href="news.do?newsType=2" style="font-weight: 500;">科研进展</a>
					</li>
					-->
					<li>
						<a href="team!list.do" style="font-weight: 500;">科研团队</a>
					</li>
					<!-- 
					<li>
						<a href="project!list.do" style="font-weight: 500;">科研项目</a>
					</li>
					-->
					<li>
						<a href="achievement.do?achievementType=1" style="font-weight: 500;">科研成果</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="business.do" style="font-weight: 500;">功能区块</a>
			</li>
			<li>
				<a href="expert.do" style="font-weight: 500;">专家风采 </a>
			</li>
			<li>
				<a href="about.jsp" style="font-weight: 500;">关于我们 </a>
			</li>
		</ul>
		</nav>
		<!--end navigation-->
	</div>
	<!--end two-third-->
	<div class="clear"></div>
</div>
<!--end centered-wrapper-->
</header>
