<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>review half</title>
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
.mytip{
   width:350px;
}
.msg-con {
	color: #555;
	cursor: pointer;
}
.start{
   margin-left:15%;
}
/* 半屏 */
.show{
      border:1px dashed red;
      height:400px;
   }
   img{
    float: right;
    margin-top: -5%;
    height:20px !important;
   }
   .result{
     float:right;
     margin-top:20px;
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
				<li><a href="th_index.jsp">查看进度</a></li>
			    <li class="current"><a href="th_score.jsp">评分</a></li>
			   </ul>
			</div>
	    </div>
	    <div class="span8">
	        <!-- 右侧内容 -->
			<div class="content" style="margin-top:20px;">
			       <!--面包屑  -->
				   <ul class="sui-breadcrumb"> 
					  <li><a href="th_index.jsp">查看进度</a></li>
					  <li><a href="th_detail.jsp">详情</a></li>
					  <li class="active">审核</li>
					</ul>
					<a href="th_review(full).jsp"><img src="http://oeznmscij.bkt.clouddn.com//half.png"/></a>
					<!-- 文档显示处 -->
					<div class="show scroll-wrap" >
					</div>
					<div class="result">
					    <a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary">审核已通过</a>
					    <a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary">审核不通过</a>
					</div>
			 </div>
	    </div>
	  </div>
	</div>
    
	
    
</body>
</html>