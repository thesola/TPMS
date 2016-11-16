<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>teacher index</title>
<style type="text/css">
.menu {
	float: left;
	position: relative;
	box-shadow: 0 2px 10px #5A4040;
	text-align: center;
	margin: 5% auto 0;
	margin-left: 10%;
	padding: 2px;
}
.menu ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.menu ul li {
	width: 100%;
	display: block;
	float: left;
	position: relative;
	line-height: 40px;
}
.menu ul li a {
	overflow: hidden;
	white-space: nowrap;
	width: 100%;
	font-size: 13px;
	text-decoration: none;
	color: #5e6469;
	
}
.menu > ul > li.current, .menu > ul > li:hover {
	background: #e2e2e2;
}
.current{
   background: #e2e2e2;
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
.timeline_a:hover {
	background:rgba(74,160,231,0.8);
	color:#fff;
	text-decoration:none;
}
</style>
<script>
   $(function(){
	   $("#demo-list li").click(function(){
		   $(this).addClass("current").siblings().removeClass("current");
	   });
   });
</script>
</head>
<body>
    <!--导航栏  -->
    <jsp:include page="th_head.jsp"/>
    <div class="grid-demo">
	  <div class="sui-row">
	    <div class="span1">
	    </div>
	    <div class="span3">
	         <!-- 左侧导航 -->
		    <div class="menu">
			   <ul id="demo-list">
			    <li><a href="th_creat.jsp">新建实训任务</a></li>
				<li><a href="th_distribute.jsp">项目分发</a></li>
				<li class="current"><a href="th_index.jsp">查看进度</a></li>
			    <li><a href="th_score.jsp">评分</a></li>
			   </ul>
			</div>
	    </div>
	    <div class="span8">
	        <!-- 右侧内容 -->
			<div class="content" style="margin-top:20px;">
			    <!-- 面包屑导航 -->
			    <ul class="sui-breadcrumb breadcrumb-dark">
				  <li><a href="th_index.jsp">查看进度</a></li>
				  <li class="active">详情</li>
				</ul>
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
				 </div>
				 <!-- 进度设置情况 -->
				 <div style="border:1px solid red;height:100px;width:80%;margin-left:12%">
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
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="th_review(full).jsp" class="timeline_a">查看</a></p>
								        <p style="float:right;margin-top:-40px;"><a href="th_review_full.jsp" class="timeline_a">审核</a></p>
								    </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>概要设计</p>
								      <p>2016.11.3</p>
								      <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="#" class="timeline_a_type3">查看</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">审核</a></p>
								  </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>详细设计</p>
								      <p>2016.11.11</p>
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="#" class="timeline_a_type3">查看</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">审核</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>编码实现</p>
								      <p>2016.11.19</p>
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="#" class="timeline_a_type3">查看</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">审核</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>测试</p>
								      <p>2016.11.21</p>
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="#" class="timeline_a_type3">查看</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">审核</a></p>
								   </div>
								</li>
								<li class="type3">
								   <span class="circle"></span>
								   <div class="txt">
								      <p>发布</p>
								      <p>2016.11.23</p>
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="#" class="timeline_a_type3">查看</a></p>
								      <p style="float:right;margin-top:-40px;"><a href="#" class="timeline_a_type3">审核</a></p>
								   </div>
								</li>
							</ul>
						</div>
				    </div>
				 </div>
			</div>
	    </div>
	  </div>
	</div>
    
	
    
</body>
</html>