<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
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
								       <p style="float:right;margin-right:35px;margin-top:-40px;"><a href="th_review_full.jsp" class="timeline_a">查看</a></p>
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
</body>
</html>