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
   .ibox-title {
	background-color: #fbfbfb;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 4px 0 0;
	color: inherit;
	padding: 5px 10px 7px;
	min-height: 20px;
}
.ibox-content {
	background-color: #fbfbfb;
	padding: 15px 20px 20px;
	border-color: #e7eaec;
	border-style: solid solid none;
	border-width: 1px 0;
	height:110px;
}
.dropzone .dz-default.dz-message {
	position: absolute;
	margin-left: 20px;
	margin-top: -160px;
	top: 50%;
	left: 50%;
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
			    <li class="current"><a href="th_creat.jsp">新建实训任务</a></li>
				<li><a href="th_distribute.jsp">项目分发</a></li>
				<li><a href="th_index.jsp">查看进度</a></li>
			    <li><a href="th_score.jsp">评分</a></li>
			   </ul>
			</div>
	    </div>
	    <div class="span8">
	        <!-- 右侧内容 -->
			<div class="content" style="margin-top:20px;">
			     <div class="grid-demo">
		          <div class="sui-row-fluid">
		               <div class="span4">
				           <form class="sui-form form-horizontal sui-validate">
							  <div class="control-group">
							    <label for="pj_name" class="control-label">实训项目名称：</label>
							    <div class="controls">
							      <input type="text" id="pj_name" name="pj_name">
							    </div>
							  </div>
							  <div class="control-group">
							    <label for="group_num" class="control-label">每组人数上限：</label>
							    <div class="controls">
							      <input type="text" id="group_num" name="group_num">
							    </div>
							  </div>
							   <div class="control-group">
							    <label for="time" class="control-label">实训周期：</label>
							    <div class="controls">
							      <input type="text" id="time" name="time">
							    </div>
							  </div>
							  <div class="control-group">
								    <label for="inputDes" class="control-label v-top">实训项目内容：</label>
								    <div class="controls">
								      <textarea id="inputDes" name="des"></textarea>
								    </div>
							   </div>
					     </form>
		               </div>
		               <div class="span5">
		               	   <div>
		               	      <div class="ibox-title">
		               	         <label>文件上传</label>
		               	      </div>
		               	      <div class="ibox-content">
		               	         <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="#">
		               	             <button type="submit" class="btn btn-primary pull-right">提交</button>
		               	             <div class="dz-default dz-message"><span>拖拽文件/点击  上传</span></div>
		               	         </form>
		               	      </div>
		               	   </div>
		       		   </div>
		           </div>
		      </div>     
		  </div>
			</div>
	    </div>
	  </div>
    
	
    
</body>
</html>