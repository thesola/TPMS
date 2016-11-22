<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/sui-progress.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>teacher index</title>
<style type="text/css">


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
			    <li ><a href="th_creat.do">新建实训任务</a></li>
				<li><a href="th_distribute.do">项目分发</a></li>
				<li class="current"><a href="th_index.do">查看进度</a></li>
			    <li><a href="th_score.do">评分</a></li>
			   </ul>
			</div>
	    </div>
	    <div class="span8">
	        <!-- 右侧内容 -->
			<!-- <div class="content" style="margin-top:20px;">
			    <div class="progress">
		          <span style="font-size:14px;color:#666">软件1431项目进度</span>
		          搜索框
		          <div class="search" style="margin-top:20px;float:right;margin-bottom:20px;margin-right:5%">
		              <form class="sui-form form-search">
						  <div class="input-append">
						     <input type="text" id="auto-init-2" value="" data-toggle="autocomplete" data-lookup="[&quot;实训项目管理系统&quot;, 
						     &quot;echo回声&quot;]" class="input-large span2 search-query">
						    <input type="submit" class="sui-btn  btn-primary"" value="搜索">
						  </div>
					   </form>
		          </div>
		          <div>
		              <table class="sui-table">
						  <thead>
						    <tr>
						      <th>最新阶段</th>
						      <th>名称</th>
						      <th>进度</th>
						      <th>组别</th>
						      <th>操作</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td><a href="javascript:void(0);" class="sui-btn btn-primary">需求分析待审核</a></td>
						      <td><span style="font-size:13px;"><a href="#">实训项目监管系统</a></span>
						          <div style="font-size:11px;color:#BAABAB">创建于2016-10-30</div></td>
						      <td><span>当前进度20%</span>
                                   <div class="sui-progress progress-small">
									  <div style="width: 20%;" class="bar">20%</div>
								   </div></td>
						      <td>第一组</td>
						      <td><a href="th_review_full.do" class="sui-btn btn-small btn-primary">审核</a>
						          <a href="th_detail.do" class="sui-btn btn-small btn-primary">查看</a></td>
						    </tr>
						     <tr>
						      <td><a href="javascript:void(0);" class="sui-btn btn-primary">需求分析进行中</a></td>
						      <td><span style="font-size:13px;"><a href="#">echo回声</a></span>
						          <div style="font-size:11px;color:#BAABAB">创建于2016-10-30</div></td>
						      <td><span>当前进度20%</span>
                                   <div class="sui-progress progress-small">
									  <div style="width: 20%;" class="bar">20%</div>
								   </div></td>
						      <td>第一组</td>
						      <td><a href="javascript:void(0);" class="sui-btn btn-small disabled btn-primary">审核</a>
						          <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">查看</a></td>
						    </tr>
						  </tbody>
						</table>
		          </div>
		      </div>
			</div> -->
			<jsp:include page="class_progress.jsp"/>
	    </div>
	  </div>
	</div>
    
	
    
</body>
</html>