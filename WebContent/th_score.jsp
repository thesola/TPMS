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
.selected{
  background:rgba(244,244,244,0.3);
}
</style>
<script>
   $(function(){
	   $("#demo-list li").click(function(){
		   $(this).addClass("current").siblings().removeClass("current");
	   });
	   /* 按钮开启 */
	   $(".after_content").hide();
	   $(".kaiqi").click(function(){
		   $(".mytip").hide();
		   $(".start").hide();
		   $(".after_content").show();
	   });
	   /* 展开、折叠 */
	   $("tr.parent").click(function(){
		   //"child_"+this.id
		   $(this).toggleClass("selected").siblings(".child_row_01").toggle();
	   }).click();
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
	        <!-- 右侧内容，开启前 -->
			<div class="content" style="margin-top:20px;">
			    <div class="mytip sui-msg msg-block msg-default msg-tips">
					<div class="msg-con">教师还未开启互评功能，可点击下方“开启”按钮</div>
					<s class="msg-icon"></s>
                </div>
                <div class="start">
                    <a href="javascript:void(0);" class="kaiqi sui-btn btn-bordered btn-primary">开启</a>
                 </div>
			 </div> 
			 <!--开启后，显示的内容  -->
			 <div class="after_content" style="margin-top:20px;">
			     <ul class="sui-nav nav-tabs">
					  <li class="active"><a href="#one" data-toggle="tab">第一组</a></li>
					  <li><a href="#two" data-toggle="tab">第二组</a></li>
					  <li><a href="#three" data-toggle="tab">第三组</a></li>
					  <li><a href="#four" data-toggle="tab">第四组</a></li>
					  <li><a href="#five" data-toggle="tab">...</a></li>
					  <li><a href="#score" data-toggle="tab">成绩单</a></li>
			     </ul>
			     <div class="tab-content tab-wraped">
				  <div id="one" class="tab-pane active">
				      <div class="sui-msg msg-block msg-default msg-tips">
						<div class="msg-con">点击“汇总计算”一栏可以看到汇总结果的详细信息</div>
						<s class="msg-icon"></s>
	                  </div>
				      <table class="sui-table table-bordered table-sideheader" style="width:80%; margin-left:12%;">
						  <thead>
						    <tr>
						      <th style="width:20%">评分来源/评分项目</th>
						      <th style="width:27%">UI</th>
						      <th>健壮性</th>
						      <th>扩展性</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr class="parent" id="row_01" style="cursor:pointer">
						      <td>汇总计算</td>
						      <td>50</td>
						      <td>60</td>
						      <td>70</td>
						    </tr>
						     <!-- 数据详情 -->
						    <tr class="child_row_01">
						      <td style="width:20%">何炅</td>
						      <td>50</td>
						      <td>60</td>
						      <td>70</td>
						    </tr>
						    <tr class="child_row_01">
						      <td style="width:20%">汪涵</td>
						      <td>50</td>
						      <td>60</td>
						      <td>70</td>
						    </tr>
						</tbody>
					</table>
				  </div>
				  <div id="two" class="tab-pane">
				  </div>
				  <div id="three" class="tab-pane">
				  </div>
				  <div id="four" class="tab-pane">
				  </div>
				  <div id="five" class="tab-pane">
				  </div>
				  <div id="score" class="tab-pane">
				      <table class="sui-table table-zebra" style="width:80%; margin-left:12%;">
						  <thead>
						    <tr>
						      <th>姓名</th>
						      <th>分数</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td>何炅</td>
						      <td>99</td>
						    </tr>
						    <tr>
						      <td>谢娜</td>
						      <td>99</td>
						    </tr>
						    <tr>
						      <td>何炅</td>
						      <td>99</td>
						    </tr>
						  </tbody>
					   </table>
				  </div>
				</div>
			 </div>
	    </div>
	  </div>
	</div>
    
	
    
</body>
</html>