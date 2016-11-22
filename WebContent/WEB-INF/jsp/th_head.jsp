<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>teacher_head</title>
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

<script>
	$(function(){ // 登录验证
		
		if( "" == '${userInfo}' ){
			location.href = "login.do";
		}
		
	});
</script>

</head>
<body>
     <div class="mycontainer"> 
       <div class="sui-navbar">
		  <div class="navbar-inner"><a href="#" class="sui-brand">实训项目管理系统</a>
		    <ul class="sui-nav">
		      <!-- <li class="active"><a href="#">首页</a></li> -->
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">正在管理<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		         <!--  <li role="presentation"><a role="menuitem" tabindex="-1" href="system_manager.do">软件1431</a></li> -->
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="th_index.jsp">软件1431</a></li>
		        </ul>
		      </li>
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">历史管理<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="history_pro.jsp" class="batch">图书管理系统</a></li>
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="history_pro.jsp" class="batch">c++实训管理系统</a></li>
		        </ul>
		      </li>
		    </ul>
		    <form class="sui-form sui-form pull-left">
		      <input type="text" placeholder="...">
		      <button class="sui-btn">搜索</button>
		    </form>
		    <ul class="sui-nav pull-right">
		      <li>
		          <span class="sui-dropdown" style="margin-top:12px;">
		             <span class="dropdown-inner">
			             <a href="#"><img alt="head" src="http://oeznmscij.bkt.clouddn.com//image1475068204818004744.jpg"
			              width="22px" height="22px" style="border-radius: 50%;"/></a>
		                <a role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">name<i class="caret"></i></a>
	                      <ul role="menu" aria-labelledby="drop1" class="sui-dropdown-menu">
	                      <li role="presentation"><a role="menuitem" tabindex="-1" href="th_personInfo.do">个人中心</a></li>
	                        <li role="presentation"><a role="menuitem" tabindex="-1" href="exit.do">退出</a></li>
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