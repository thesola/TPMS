<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>student task progress</title>
</head>
<style>
/*  导航条样式*/
.mycontainer{
   width:100%;
   margin:0 auto ;
   }
   .sui-dropup .dropdown-toggle, .sui-dropdown .dropdown-toggle {
	*margin-bottom: -3px;
	font-size: 14px;
   }
   .sui-msg,.sui-form,.sui-nav {
	font-size: 13px;
   }
   .sui-navbar .navbar-inner {
	padding-left: 10%;
	padding-right: 10%;
}

   .container{
   width:60%;
   margin:0 auto ;
   margin-top:40px;
   }
   .none_creat{
     border:1px dashed #dedede;
     text-align:center;
     color:rgba(176, 162, 162, 1);
     height:200px;
     font-size:16px;
   }
   /* 进度样式 */
.timeline{
  width:90%;
}
   .timeline li {
position: relative;
height: 75px;
font-size: 0;
border-left: solid 1px #4aa0e7;
padding-left: 7px;
}
    ul, li {
list-style-type: none;
list-style: none;
}
.timeline .circle {
display: block;
box-sizing: content-box;
width: 15px;
height: 15px;
background: #4aa0e7;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
border: solid 4px #fff;
position: absolute;
top: 0;
left: -12px;
}
.timeline .txt {
    margin-top: 5px;
    background: rgba(210,210,210,0.2);
    margin-left: 10px;
    padding: 1px;
    height:68px;
}
.timeline .txt p {
width: 65px;
line-height: 16px;
}
.timeline .txt p {
font-size: 13px;
color: #56a1db;
}
.timeline .type3 .txt p {
font-size: 13px;
color: #d2d2d2;
}
.timeline .txt p:last-child {
font-size: 12px;
}
.timeline .type3 {
border-color: #d2d2d2;
}
.timeline .type3 .circle, .timeline .type3 .line {
background: #d2d2d2;
}
.timeline_a {
	text-decoration: none;
	border: 1px solid #5871a0;
	padding: 3px;
	font-size: 11px;
	color: #5456b0;
}
.timeline_a_type3{
  text-decoration: none;
	border: 1px solid #bababa;
	padding: 3px;
	font-size: 11px;
	color: #bababa;
}
.timeline_a_type3:hover{
text-decoration:none;
color:#bababa;
}
.timeline_a:hover {
	background:rgba(74,160,231,0.8);
	color:#fff;
	text-decoration:none;
}
</style>
<script>
   $(function(){
	   $(".none_creat").hide();
   });
</script>
<body>
<!-- 导航栏 -->
   <div class="mycontainer"> 
       <div class="sui-navbar">
		  <div class="navbar-inner"><a href="#" class="sui-brand">实训项目管理系统</a>
		     <ul class="sui-nav">
		      <li><a href="stu_MyTeam.jsp">我的团队</a></li>
		      <li class="active"><a href="stu_task_pro.jsp">本组任务进度</a></li>
		      <li><a href="stu_attend_pro.jsp">参与过的项目</a></li>
		      <li><a href="#">互评功能</a></li>
		    </ul>
		    <ul class="sui-nav pull-right">
		      <li>
		          <span class="sui-dropdown" style="margin-top:12px;">
		             <span class="dropdown-inner">
			             <a href="#"><img alt="head" src="http://oeznmscij.bkt.clouddn.com//image1475068204818004744.jpg"
			              width="22px" height="22px" style="border-radius: 50%;"/></a>
		                <a role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">name<i class="caret"></i></a>
	                      <ul role="menu" aria-labelledby="drop1" class="sui-dropdown-menu">
	                      <li role="presentation"><a role="menuitem" tabindex="-1" href="th_personInfo.jsp">个人中心</a></li>
	                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">退出</a></li>
	                      </ul>
	                 </span>
	             </span>
		      </li>
		      <li><a href="#"><i class="sui-icon icon-pc-question-circle"></i>&nbsp;帮助</a></li>
		    </ul>
		  </div>
		</div>
    </div> 
    
    
   <div class="container">
      <!-- 未创建-->
      <div class="none_creat">
         <span>请到“我的团队”创建项目或</span><a href="stu_MyTeam.jsp">单击这里</a>
      </div>
      <!-- 已创建 -->
      <div class="creat">
           <!-- 详细内容 -->
		 <div style="font-size:14px;margin-bottom:20px;"><span >实训项目监管系统</span></div>
		 <!-- 小组成员信息展示 -->
		 <div>
		    <table class="sui-table table-bordered table-sideheader" style="width:80%; margin-left:12%;">
				  <thead>
				    <tr>
				      <th style="width:20%;">第一组</th>
				      <th style="width:30%;">姓名</th>
				      <th>角色</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>组长</td>
				      <td>张三</td>
				      <td>UI</td>
				    </tr>
				    <tr>
				      <td>组员</td>
				      <td>张晓</td>
				      <td>UI</td>
				    </tr>
				  </tbody>
			</table>
			<!-- 进度设置情况 -->
			 <div style="border:1px solid red;height:100px;width:80%;margin-left:12%">
			 进度设置
			 </div>
			  <!-- 当前进度 -->
				 <div>
				    <div style="margin-top:10px;font-size:13px;margin-bottom:20px;margin-left:5%;">当前进度:</div>
				    <div class="tree" style="margin-left:12%;">
				       <div class="timeline fl">
							<ul><!-- Class type1 为激活样式 type3 为未激活样式 -->
								<li class="type1">
								   <span class="circle"></span>
								   <div class="txt">
								       <p>需求分析</p>
								       <p>2016.10.30</p>
								       <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a">上传</a></p>
								        <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a">下载</a></p>
								        <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a">预览</a></p>
								    </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>概要设计</p>
								      <p>2016.11.3</p>
								      <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a_type3">上传</a></p>
								      <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a_type3">下载</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">预览</a></p>
								  </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>详细设计</p>
								      <p>2016.11.11</p>
								       <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a_type3">上传</a></p>
								      <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a_type3">下载</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">预览</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>编码实现</p>
								      <p>2016.11.19</p>
								      <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a_type3">上传</a></p>
								      <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a_type3">下载</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">预览</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>测试</p>
								      <p>2016.11.21</p>
								      <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a_type3">上传</a></p>
								      <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a_type3">下载</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">预览</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>发布</p>
								      <p>2016.11.23</p>
								       <p style="float:right;margin-right:64px;margin-top:-40px;"><a href="#" class="timeline_a_type3">上传</a></p>
								      <p style="float:right;margin-right:32px;margin-top:-40px;"><a href="#" class="timeline_a_type3">下载</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">预览</a></p>
								   </div>
								</li>
							</ul>
						</div>
					</div>
		   </div>
         </div>
      </div>
   </div>
</body>
</html>