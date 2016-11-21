<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/menu.css" rel="stylesheet">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>teacher index</title>
<style type="text/css">

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