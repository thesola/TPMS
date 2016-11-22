<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.timeline{
  width:50%;
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
	background:rgba(74,160,231,0.6);
}

</style>
<script>
 
</script>
</head>
<body>
	<div class="timeline fl">
		<ul><!-- Class type1 为激活样式 type3 为未激活样式 -->
			<li class="type1">
			   <span class="circle"></span>
			   <div class="txt">
			       <p>需求分析</p>
			       <p>2016.10.30</p>
			       <p style="float:right;margin-right:65px;margin-top:-30px;"><a href="#" class="timeline_a">审核</a></p>
			        <p style="float:right;margin-top:-30px;"><a href="#" class="timeline_a">查看</a></p>
			    </div>
			</li>
			<li class="type3">
			   <span class="circle"></span>
			   <div class="txt">
			      <p>概要设计</p>
			      <p>2016.11.3</p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">查看</a></p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">审核</a></p>
			  </div>
			</li>
			<li class="type3">
			   <span class="circle"></span>
			   <div class="txt">
			      <p>详细设计</p>
			      <p>2016.11.11</p>
			       <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">查看</a></p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">审核</a></p>
			   </div>
			</li>
			<li class="type3">
			   <span class="circle"></span>
			   <div class="txt">
			      <p>编码实现</p>
			      <p>2016.11.19</p>
			       <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">查看</a></p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">审核</a></p>
			   </div>
			</li>
			<li class="type3">
			   <span class="circle"></span>
			   <div class="txt">
			      <p>测试</p>
			      <p>2016.11.21</p>
			       <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">查看</a></p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">审核</a></p>
			   </div>
			</li>
			<li class="type3">
			   <span class="circle"></span>
			   <div class="txt">
			      <p>发布</p>
			      <p>2016.11.23</p>
			       <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">查看</a></p>
			      <p style="float:right;margin-top:-25px;"><a href="#" class="timeline_a_type3">审核</a></p>
			   </div>
			</li>
		</ul>
	</div>
			
</body>
</html>