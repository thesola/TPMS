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
   #MyTeacherAdd{
       width: 450px !important;
		margin-left: -200px !important;
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
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">教师信息<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="system_manager.do">查看</a></li>
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="batch"
		           id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
		           data-target="#MyTeacherAdd">添加</a></li>
		        </ul>
		      </li>
		      <li class="sui-dropdown"><a href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">班级信息<i class="caret"></i></a>
		        <ul role="menu" class="sui-dropdown-menu">
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="batch"
		           id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
		           data-target="#MyClassAdd">添加</a></li>
		          <li role="presentation" class="divider"></li>
		          <li role="presentation"><a role="menuitem" tabindex="-1" href="sm_classInfo.do">软件1431</a></li>
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
			             <a href="#"><img alt="head" src="${userInfo.head}"
			              width="22px" height="22px" style="border-radius: 50%;"/></a>
		                <a role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">${userInfo.name} <i class="caret"></i></a>
	                      <ul role="menu" aria-labelledby="drop1" class="sui-dropdown-menu">
	                      <li role="presentation"><a role="menuitem" tabindex="-1" href="sm_personInfo.do">个人中心</a></li>
	                        <li role="presentation"><a role="menuitem" tabindex="-1" href="exit.do" >退出</a></li>
	                      </ul>
	                 </span>
	             </span>
		      </li>
		      <li><a href="#"><i class="sui-icon icon-pc-question-circle"></i>&nbsp;帮助</a></li>
		    </ul>
		  </div>
		</div>
    </div> 
    
    
    
    
    <!-- 教师信息添加模态框 -->
   <div id="MyTeacherAdd" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" 
   data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">添加教师信息</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	              <form class="sui-form form-horizontal sui-validate" action="addTeacher.do" method="post" >
			         <div class="control-group">
					    <label for="num" class="control-label">工号：</label>
					    <div class="controls">
					      <input type="text" id="num" placeholder="required" data-rules="required|minlength=6|maxlength=16"
 name="num">
					    </div>
					  </div>
					  <div class="control-group">
					    <label for="name" class="control-label">姓名：</label>
					    <div class="controls">
					      <input type="text" id="name" placeholder="required" data-rules="required" name="name">
					    </div>
					  </div>
					  <div class="control-group">
					    <label for="sex" class="control-label">性别：</label>
					    <label data-toggle="radio" class="radio-pretty inline checked">
						    <input type="radio" checked="checked" name="radio1" value="0"><span>男</span>
						 </label>
					    <label data-toggle="radio" class="radio-pretty inline">
						    <input type="radio" name="radio1" value="1"><span>女</span>
						 </label>
					  </div>
					    <div  style="text-align:center">
					      <input type="button" id="add" name="add" value="添加" class="sui-btn btn-bordered btn-primary">
					    </div>
			     </form>
	          </div>
	      </div>
	  </div>
	</div>
	
	
	
	 <!-- 班级信息添加模态框 -->
   <div id="MyClassAdd" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" 
   data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">添加班级信息</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	              <form class="sui-form form-horizontal sui-validate">
			         <div class="sui-dropdown-like">
					    <input type="text" value="" data-toggle="autocomplete" 
					    data-lookup="[&quot;软件1431&quot;, &quot;软件1421&quot;,&quot;软件1411&quot;]" 
					    data-minchars="0" class="input-large"><i class="sui-icon icon-pc-chevron-bottom"></i>
					  </div>
					  <input type="submit" id="add" name="add" value="添加" class="sui-btn btn-bordered btn-primary">
			     </form>
	          </div>
	      </div>
	  </div>
	</div>
	
</body>
</html>