<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>system manager head</title>
<style>
   .mycontainer{
   width:80%;
   margin:0 auto ;
   }
   .sui-dropup .dropdown-toggle, .sui-dropdown .dropdown-toggle {
	*margin-bottom: -3px;
	font-size: 14px;
   }
   .sui-msg,.sui-form {
	font-size: 13px;
   }
</style>
<script>
	$(function(){
		$(".batch").click(function(){
			$("#btn_file").click();
			$("#btn_file").on("change",function(){
				var objUrl = getObjectURL(this.files[0]);
				if(objUrl){
					$(".batch").attr("src",objUrl);
				}
			});
		});
	});
	function getObjectURL(file){
		var url = null;
		if(window.createObjectURL != undefined){
			url=window.createObjectURL(file);
		}else if(window.URL != undefined){
			url=window.URL.createObjectURL(file);
		}else if(window.webkitURL != undefined){
			url=window.webkitURL.createObjectURL(file);
		}
		return url;
	}
</script>
</head>
<body>
   <div class="mycontainer"> 
       <div class="sui-navbar">
		  <div class="navbar-inner"><a href="#" class="sui-brand">实训项目管理系统</a>
		    <ul class="sui-nav">
		      <!-- <li class="active"><a href="#">首页</a></li> -->
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">教师信息<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		          <input type="file" name="file" id="btn_file" style="display:none"/>
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="system_manager.jsp">查看</a></li>
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="batch">批量导入</a></li>
		        </ul>
		      </li>
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">班级信息<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="batch">批量导入</a></li>
		          <li role="presentation" class="divider"></li>
		          <!-- <li role="presentation">
		             <form class="sui-form form-dark">
  						<div class="input-control control-right">
    						<input type="text" class="input-thin">
    					</div>
				     </form>
		          </li> -->
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">软件1431</a></li>
		        </ul>
		      </li>
		    </ul>
		    <form class="sui-form sui-form pull-left">
		      <input type="text" placeholder="...">
		      <button class="sui-btn">搜索</button>
		    </form>
		    <ul class="sui-nav pull-right">
		      <!-- <li>
		         <a href="#"><img alt="head" src="http://oeznmscij.bkt.clouddn.com//image1475068204818004744.jpg"
		          width="22px" height="22px" style="border-radius: 50%;"/>name</a>
		      </li> -->
		      <li>
		          <span class="sui-dropdown" style="margin-top:12px;">
		             <span class="dropdown-inner">
			             <a href="#"><img alt="head" src="http://oeznmscij.bkt.clouddn.com//image1475068204818004744.jpg"
			              width="22px" height="22px" style="border-radius: 50%;"/></a>
		                <a role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">name<i class="caret"></i></a>
	                      <ul role="menu" aria-labelledby="drop1" class="sui-dropdown-menu">
	                      <li role="presentation"><a role="menuitem" tabindex="-1" href="sm_personInfo.jsp">个人中心</a></li>
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