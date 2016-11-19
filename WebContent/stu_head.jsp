<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>student head</title>
<style>
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
</style>
</head>
<body>
     <div class="mycontainer"> 
       <div class="sui-navbar">
		  <div class="navbar-inner"><a href="#" class="sui-brand">实训项目管理系统</a>
		     <ul class="sui-nav">
		      <li><a href="stu_MyTeam.jsp">我的团队</a></li>
		      <li class=""><a href="stu_task_pro.jsp">本组任务进度</a></li>
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
</body>
</html>