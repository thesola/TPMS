<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>review full</title>
<style type="text/css">
  .container{
   width:80%;
   margin-top:2%;
   margin:0 auto;
   }
   .show{
      border:1px dashed red;
      width:80%;
      height:400px;
      margin-left:10%;
   }
   img{
     float:right;
     margin-top: -4%;
	 margin-right: 10%;
   }
   .result{
     float:right;
     margin-right: 10%;
     margin-top:20px;
   }
</style>
</head>
<body>
   <div class="container">
       <!--面包屑  -->
	   <ul class="sui-breadcrumb" style="margin-left: 9%;"> 
		  <li><a href="th_index.jsp">查看进度</a></li>
		  <li><a href="th_detail.jsp">详情</a></li>
		  <li class="active">审核</li>
		</ul>
		<a href="th_review_half.jsp"><img src="http://oeznmscij.bkt.clouddn.com//full.png"/></a>
		<!-- 文档显示处 -->
		<div class="show scroll-wrap" >
		</div>
		<div class="result">
		    <a href="javascript:void(0);" class="sui-btn btn-bordered btn-xlarge btn-primary">审核已通过</a>
		    <a href="javascript:void(0);" class="sui-btn btn-bordered btn-xlarge btn-primary">审核不通过</a>
		</div>
   </div>
</body>
</html>