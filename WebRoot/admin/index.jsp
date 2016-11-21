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


</head>

<body>
	

<div id="header" class="png_bg">

    <div id="head_wrap" class="container_12">
    
        <!-- start of logo - you could replace this with an image of your logo -->
        <div id="logo" class="grid_4">
          <h1>Zaasbase<span>Admin</span></h1>
        </div>
        <!-- end logo -->
        
        <!-- start control panel -->
    	<div id="controlpanel" class="grid_8">
        
            <ul>
            
    			<li><p><strong>你好，Johnathan Doe</strong></p></li>
                <li><a href="#" class="first">设置</a></li>
                <li><a href="#" class="last">退出登录</a></li>
                
            </ul>
            
        </div>
        <!-- end control panel -->
    
        <!-- start navigation -->
      	<div id="navigation" class=" grid_12">
           
            <ul>
            
                <li><a href="#" class="active">主页</a></li>
                <li><a href="#">用户</a></li>
                <li><a href="#">内容</a></li>
                <li><a href="#">产品</a></li>
                <li><a href="#">文字</a></li>
                <li><a href="#">很长的导航链接</a></li>
                <li><a href="#">随机链接</a></li>
                <li><a href="#">最后的链接</a></li>
                
    
            </ul>
          
        </div>
        <!-- end navigation -->
     
    </div><!-- end headwarp  -->
</div><!-- end header -->


<!-- staqrt subnav -->
<div id="sub_nav">

<div id="subnav_wrap" class="container_12">
	
	
	
    <!-- start sub nav list -->
	<div id="subnav" class=" grid_12">
    
        <ul>
        
            <li><a href="#" class="active">子菜单</a></li>
            <li><a href="#" class="sub_nav_active">选中的菜单</a></li>
            <li><a href="#">其他链接</a></li>
            <li><a href="#">一些链接</a></li>
            <li><a href="#">最后的</a></li>
            <li><a href="#">列子</a></li>
            <li><a href="#">其他的</a></li>
          	<li><a href="#" class="sub_nav_last">最后链接</a></li>
            
        </ul>
    
    </div>
    <!-- end subnavigation list -->	

</div>


</div>
<!-- end sub_nav -->

<!-- EVERYTING BELOW IS THE MAIN CONTENT -->

<div id="main_content_wrap" class="container_12">

    <div class="clearfix">&nbsp;</div>
    	
    	<div class="container_12">
    		<h2>基地展示</h2>
    		<div id="icondock" class="grid_12">
    		  <ul>
    		    <s:iterator value="baseList">
    		      <li><a href="base!doView.do?id=<s:property value="id"/>" rel="" title="查看<s:property value="baseTitle"/>详情"><img width="190" src="../images/background/<s:property value="baseImg"/>" alt="Contacts" /><s:property value="baseTitle"/></a></li>
    		    </s:iterator>  
    		  </ul>
    		</div>
    		
    	</div>
    	
    	<div class="container_12">
    	<div class="acc_container">
            <div class="block">
            	111111111111
            </div>
        </div>
    	</div>
    	
        <div class="container_12">
        
        <div id="notices" class="grid_4">
        
        <h2>基地展示</h2>
            <ul>
            	<s:iterator value="baseList">
            		<li>
            			<a title="预览" rel="facebox" href="base!doView.do?id=<s:property value="id"/>" class="notice-icon4"><s:property value="baseTitle"/></a>
            		</li>
            	</s:iterator>
            </ul>   
        
        </div>
		
        <!--  PLACEHOLDER FOR FLOT - REMOVE IF NOT REQUIRED -->
        <div class="grid_8">
        
            <h2>访问统计</h2>
            
             <div id="placeholder"></div> 
        
        </div>
        
        </div>
        
        <div class="clearfix">&nbsp;</div>
        
        <div class="container_12">
		
        <h2>TAB选项卡列子</h2>		
        <ul class="tabs">
            <li><a href="#tab1">相册</a></li>
            <li><a href="#tab2">表单元件</a></li>
        </ul>
    
    <div class="tab_container">
        <div id="tab1" class="tab_content">
            <!-- START IMAGE GALLERY -->
      
    <h2>图片相册</h2>
	
    <ul class="imglist">
        
            <li>
            
            	<img src="images/thumb1.jpg" width="100" height="100" alt="Image1" />
            	<div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb1_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
            
            </li>
            
            <li>
            
            	<img src="images/thumb2.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb2_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
            
            </li>
            
            <li>
            
            	<img src="images/thumb3.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb3_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
               
            </li>
            
            <li>
            
            	<img src="images/thumb4.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb4_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
            
            </li>
            
            <li>
            
            	<img src="images/thumb5.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb5_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
                
            </li>
            
            <li>
            
            	<img src="images/thumb6.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb6_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>             
               
                
            </li>
            
            <li>
            
            	<img src="images/thumb7.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb7_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div> 
                
            </li>
            
            <li>
            
            	<img src="images/thumb8.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb8_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
               
                
            </li>
            
            <li>
            
            	<img src="images/thumb7.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb7_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
               
                
            </li>
            
            <li>
            
            	<img src="images/thumb5.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb5_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
               
                
            </li>
            
            <li>
            
            	<img src="images/thumb6.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb6?_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
               
            </li>
            
            <li>
            
            	<img src="images/thumb1.jpg" width="100" height="100" alt="Image1" />
                <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb1_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>

            </li>
            
            <li>
            
            	<img src="images/thumb4.jpg" width="100" height="100" alt="Image1" />
			    <div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb4_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
                
            </li>
            
            <li>
            
            	<img src="images/thumb3.jpg" width="100" height="100" alt="Image1" />
            	<div class="actions">	
					<a class="imglistbutton" rel="facebox" href="images/thumb3_big.jpg"><img src="images/magnifier.png" width="16" height="16" alt="View" /></a>
					<a href="#" class="imglistbutton"><img src="images/cancel.png" width="16" height="16" alt="Delete" /></a>
				</div>
            
            </li>
        
    </ul>
    
    <!-- END IMAGE GALLERY -->
        </div>
        <div id="tab2" class="tab_content">
           <h2>表单</h2>
              </form>
        </div>
</div>    
           	<p>
                 Forms are great for collecting informatoin or simply for use in your web application. 
                 With RealAdmin, you get stylish form elements ready to use straight out the box. 
                 They're already skinned, pre-sized adn formatted for you so you can simply get on and use them as you choose.
         	</p>
           
           <form action="" method="post">
              <!-- RADIO GROUPS -->
              <p>	
                  <input type="radio" name="radio" id="RADIO1" value="RADIO1" />
                  <label for="RADIO1">RADIO ONE</label>
                  <input type="radio" name="radio" id="RADIO2" value="RADIO2" />
                  <label for="RADIO2">RADIO TWO</label>
                  <input type="radio" name="radio" id="RADIO3" value="RADIO3" />
                  <label for="RADIO3">RADIO THREE</label>
              </p>
           
           
              <p>
                  <label>Small Input Box:</label><br />
                  <input type="text" class="text small" /> 
                  <span class="valid">This is a validation message</span>
              </p>
              
              
              
              <p>
             	 <label>Medium Input Box:</label><br />
                 <input type="text" class="text medium" /> 
                 <span class="error">This is an error message</span>
              </p>
              
              <p>
                  <label>Large Input Box</label><br />
                  <input type="text" class="text large" />
              </p>
              
      
            <!-- CHECKBOXES -->
            <p>
                <input type="checkbox" class="checkbox" checked="checked" id="cbdemo1" /> 
                <label for="cbdemo1">Checkbox label</label> 
                <input type="checkbox" class="checkbox" id="cbdemo2" />
                <label for="cbdemo2">Checkbox label</label>
            
            <!-- COMBO SELECT BOX -->

            <label for="cbo">Dropdown/Combo Box:</label>
            
            <select name="cbo" id="cbo" class="select">
            
                <option value="One">One</option>
                <option value="Two">Two</option>
                <option value="Three">Three</option>
                <option value="Four">Four</option>
                <option value="Five">Five</option>
            
            </select>   
 
            </p>

			<p>
                  <label>Text Area Without Editor:</label><br />
                  <textarea cols="8" rows="5"></textarea>
            </p>
            <p>
                <label>Text Area with Editor:</label><br />
                <textarea cols="8" rows="6" class="wysiwyg"></textarea>
            </p>
			<p>
          		<input type="submit" class="submit" value="按钮1" />
                <input name="Submit2" type="submit" class="submit" value="按钮2" />
                <input name="Reset2" type="submit" class="submit special" value="按钮3" />
       		</p>
    
</div>

        <div class="clearfix">&nbsp;</div>
        
        
         <!-- NOTIFICATION - USES CLASS OF "WARNING" and the CANHIDE ENABLES CICK TO FADE AWAY-->
                <div class="notification lightbulb canhide">
                    
                    <p><strong>NOTIFICATION: </strong>
                    This is a notification message. You can use this to provide site feedback 
                    or provide hints and tips. Click me and I go away.</p>
                    
                </div>
                
        
        
        <div class="container_12">
        <h2>手风琴插件</h2>
        <p>Somtimes it's easier to compartmentalise data or visualisations. In the example below we have different types of content that we have grouped up - making it easier for the user to choose which part they want to look at, and also focusing the user on what is important.</p>
        
        
        <div class="clearfix">&nbsp;</div>
        <h3 class="acc_trigger"><a href="#">Something Important</a></h3>
            <div class="acc_container">
            <div class="block">
            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus   sem sed libero vehicula at mattis magna semper. Nulla augue metus,   euismod non fermentum et, auctor quis dolor. Mauris a nisi quam, aliquam   placerat felis. Nam vestibulum facilisis eros, vitae tempus est feugiat   commodo. Pellentesque quis mi eu arcu tristique ullamcorper vel ornare   lorem. Sed euismod quam ac orci bibendum fringilla. Suspendisse dolor   lectus, dapibus vitae cursus nec, auctor id ante. Etiam consectetur,   turpis id rhoncus tincidunt, justo ligula fringilla enim, sed blandit   tortor mi ac nisl. Praesent non nisi risus. Duis hendrerit elit ut   turpis pretium suscipit. Vestibulum ante ipsum primis in faucibus orci   luctus et ultrices posuere cubilia Curae; Sed sed dui velit, accumsan   malesuada orci. Suspendisse interdum turpis ut nisi dictum laoreet. In   hac habitasse platea dictumst. Vivamus luctus dignissim quam eget   adipiscing. Vestibulum ac mauris eros. Etiam diam metus, molestie in   tincidunt vel, dignissim ac magna. </p>
            </div>
        </div>
        <h3 class="acc_trigger"><a href="#">Another Content Area</a></h3>
            <div class="acc_container">
            <div class="block">
            	<p>Maecenas in metus magna, id faucibus nulla. Vestibulum pellentesque   ligula vitae odio tristique tempus. Integer vehicula, ligula in varius   tempus, lorem ante dictum sem, a venenatis diam tortor a enim. Aliquam   erat volutpat. Integer ac ipsum metus. Pellentesque vulputate, quam et   congue tristique, elit elit faucibus metus, condimentum porta velit   lectus et sapien. Maecenas rutrum bibendum massa nec convallis. Aliquam   varius imperdiet augue a ultricies. Donec sit amet est vitae mi   porttitor iaculis. Maecenas scelerisque pellentesque nisl non tempor.</p>
            </div>
        </div>
         <h3 class="acc_trigger"><a href="#">Example of Accordion Menu Item</a></h3>
            <div class="acc_container">
            <div class="block">
            	<p>Fusce a ligula in quam vehicula venenatis. Sed nec nunc sed lorem   fermentum commodo a nec erat. Sed urna erat, scelerisque tincidunt   fringilla ut, mollis quis velit. Pellentesque habitant morbi tristique   senectus et netus et malesuada fames ac turpis egestas. Aliquam purus   libero, cursus at euismod eget, adipiscing vel purus. Sed porta nibh   quis dolor euismod tincidunt. Vestibulum tellus nisi, scelerisque at   volutpat ac, eleifend ac ipsum. Maecenas eget est sit amet eros   hendrerit aliquet. Sed vitae lacus dolor. Cras fermentum lacinia   faucibus. </p>
            </div>
        </div>

    
    </div>      
        
        <div class="clearfix">&nbsp;</div>
        <div class="container_12">
        
        <!--START NOTIFICATIONS  -->
        <h2>提示信息</h2>
            
            <p>
            RealAdmin includes 5 notifications, and you can always make your own easily by 
            using one of the icons provided. Click to watch them fade away!
            </p>
            

            <!-- INFORMATION - USES CLASS OF "IN2FORMATION" and the CANHIDE ENABLES CICK TO FADE AWAY-->
            <div class="notification information canhide">
            
              <p><strong>INFORMATION: </strong>
                This is an information message. You can use this to give the user 
                information about actions or their account etc. Click me and I go away..</p>
  			</div>   
            
            <!-- WARNING - USES CLASS OF "WARNING" and the CANHIDE ENABLES CICK TO FADE AWAY-->
            <div class="notification warning canhide">
            	
                <p><strong>WARNING: </strong>
                This is a warning message. You can use this to provide warning messages 
                or confirmation to users. Click me and I go away.</p>
            </div> 
            
            <!-- SUCCESS - USES CLASS OF "SUCCESS" and the CANHIDE ENABLES CICK TO FADE AWAY-->
            <div class="notification success canhide">
            
                <p><strong>SUCCESS: </strong>
                This is a success message, used to provide feedback to the user 
                that something worked. Click me and I go away</p>
            </div>  
            
            
            <!-- FAILURE - USES CLASS OF "FAILURE" and the CANHIDE ENABLES CICK TO FADE AWAY-->
            <div class="notification failure canhide">
            
                <p><strong>FAILURE: </strong>
                This is a failure message, but hey it's not all doom and gloom you c
                an click me and I'll go away and hide again.</p>                
            </div>
            
     </div>   
  	<!--END NOTIFICATIONS  -->
        
        
	<div class="clearfix">&nbsp;</div>
    
    
    
    
    </div>
    
    <div class="clearfix">&nbsp;</div>
        
  <!-- START TABULAR DATA EXAMPLE -->
  <div class="container_12">
  
	<h2>表格</h2>
            
            <p>
                Tables are a great way of displaying lots of data, and logically. 
                The default styling on the tables is unobtrusive and enables both text 
                and images as show in the example below.
            </p>
            
    <div class="clearfix">&nbsp;</div>
            	
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
    
        <tr>
        
            <th width="5%" scope="col">
            <input type="checkbox" name="checkbox" id="checkbox" class="checkall" /><label for="checkbox"></label></th>
            
            <th width="18%" scope="col">名</th>
            <th width="16%" scope="col">姓</th>
            <th width="29%" scope="col">邮箱</th>
            <th width="13%" scope="col">开始日期</th>
            <th width="11%" scope="col">结束日期</th>
            <th width="8%" scope="col">状态</th>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox2" id="checkbox2" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">24/02/2010</td>
            <td scope="col">12/12/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Online" /><img src="images/shield.png" alt="Shield" width="16" height="16" /></td>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox3" id="checkbox3" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">12/09/2009</td>
            <td scope="col">21/12/2011</td>
            <td scope="col"><img src="images/status_online.png" alt="Online" /><img src="images/medal_gold_3.png" alt="Gold" width="16" height="16" /></td>
        </tr>
        
        <tr>
            <td scope="col"><input type="checkbox" name="checkbox4" id="checkbox4" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">05/09/2009</td>
            <td scope="col">12/11/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Offline" border="0" usemap="#O" /></td>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox5" id="checkbox5" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">12/06/2009</td>
            <td scope="col">13/08/2011</td>
            <td scope="col"><img src="images/status_online.png" alt="Online" /><img src="images/shield.png" alt="Shield" width="16" height="16" /></td>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox6" id="checkbox6" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">05/06/2009</td>
            <td scope="col">14/7/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Offline" border="0" usemap="#O" /><img src="images/medal_silver_1.png" alt="Silver" /></td>
        </tr>


        
        <tr>
            <td scope="col"><input type="checkbox" name="checkbox7" id="checkbox7" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>                   
            <td scope="col">12/09/2009</td>
            <td scope="col">21/08/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Offline" border="0" usemap="#O" /><img src="images/shield.png" alt="Shield" /></td>
        </tr>
        
        <tr>
            <td scope="col"><input type="checkbox" name="checkbox8" id="checkbox8" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">08/12/2009</td>
            <td scope="col">22/10/2011</td>
            <td scope="col"><img src="images/status_online.png" alt="Online" /><img src="images/medal_gold_3.png" alt="Shield" width="16" height="16" /></td>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox9" id="checkbox9" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">12/09/2009</td>
            <td scope="col">28/09/2011</td>
            <td scope="col"><img src="images/status_online.png" alt="Online" /></td>
        </tr>
        
        <tr>
        
            <td scope="col"><input type="checkbox" name="checkbox10" id="checkbox10" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>                
            <td scope="col">05/04/2009</td>
            <td scope="col">21/12/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Offline" border="0" usemap="#O" /></td>
        </tr>
        
        <tr>
            <td scope="col"><input type="checkbox" name="checkbox11" id="checkbox11" /></td>
            <td scope="col">Johnathan</td>
            <td scope="col">Doe</td>
            <td scope="col"><a href="#">john.doe@myinternet.com</a></td>
            <td scope="col">12/7/2009</td>
            <td scope="col">21/12/2011</td>
            <td scope="col"><img src="images/status_offline.png" alt="Offline" border="0" usemap="#O" /><img src="images/medal_bronze_1.png" alt="Bronze" /></td>
        </tr>
    </table>
    
    <!-- END TABULAR DATA EXAMPLE -->
      
           
           
           <div class="grid_12">
           
           <div class="clearfix">&nbsp;</div>
           
            <ul id="pagination">
            
                <li class="previous-off">上一页</li>
                <s:iterator status="pageNumber" value="{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18}">
                	<!--<s:if test="#pageNumber.index+1==5">
                		<li class="active"><s:property value="#pageNumber.index+1"/></li>
                	</s:if>
                	<s:else>
	                	<li><a href="#"><s:property value="#pageNumber.index+1"/></a></li>
                	</s:else>
                -->
                	<s:if test="#pageNumber.index+1<5">
                		<li><a href="#"><s:property value="#pageNumber.index+1"/></a></li>
                	</s:if>
                </s:iterator>
                <li class="next"><a href="#">下一页</a></li>
                
            </ul>
           
           </div>           

           
           <div class="clearfix">&nbsp;</div>
           
           
              
          
</div>

<div class="clearfix">&nbsp;</div>
<div class="container_12">
     


   <!-- START FOOTER -->
    
    <div id="footer" class="grid_12">
    
        <p>&copy; Copyright 2010 JS代码网 | Powered by <a href="#">RealAdmin</a> | <a href="#">Top</a></p>
        
	</div>
    <!-- END FOOTER -->       
  </div><!-- end content wrap -->


</body>
</html>
