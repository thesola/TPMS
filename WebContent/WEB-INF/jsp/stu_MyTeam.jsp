<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
<title>student my team</title>
<style>

/* 导航条 */
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

  .container{
	   width:60%;
	   margin:0 auto ;
	   margin-top:40px;
   }
    .dropdown-toggle {
	font-size: 12px !important;
}
.sui-dropdown.dropdown-bordered {
	line-height: 14px !important;
}
/* 选组长 */
.choice{
   text-align:center;
}
.choice a{
  width:25%;
  margin:10px;
}
.leader a{
  width:80%;
  margin:10px;
}

</style>
<script type="text/javascript">
   $(function(){
	   $(".add_role").click(function(){
		   $(".add_append").append(
				 '<span>'+
				   '<span class="sui-dropdown dropdown-bordered select">'+
				      '<span class="dropdown-inner">'+
				         '<a id="select" role="button" href="javascript:void(0);"data-toggle="dropdown" class="dropdown-toggle"> '+
				              '<input value="DMY" name="role" type="hidden">'+
				              '<i class="caret"></i>'+
				              '<span>选择角色</span>'+
				         '</a>'+
				         '<ul role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">'+
				           '<li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="UI">UI</a></li>'+
				            '<li role="presentation" class="active"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="DMY">代码员</a></li>'+
				          '</ul>'+
					   '</span>' +
					'</span>' +
					'<span><a href="javascript:void(0);" class="delete_role sui-btn btn-bordered btn-small btn-primary">-</a></span>'+
				 '</span>'  
		   );
		   $(".delete_role").click(function(){
			   $(this).parent().parent().remove();
		   });
	   });
	 
	   /*选组长*/
	   $(".choice a").click(function(){
			var $remove = $(this).remove();
			$remove.appendTo(".leader");
			
			$(".leader a").click(function(){
				var $reback = $(this).remove();
				$reback.appendTo(".choice");
			});
	   });
	   
   });
</script>
</head>
<body>
   <!-- 导航栏 -->
   <div class="mycontainer"> 
       <div class="sui-navbar">
		  <div class="navbar-inner"><a href="#" class="sui-brand">实训项目管理系统</a>
		     <ul class="sui-nav">
		      <li class="active"><a href="stu_MyTeam.jsp">我的团队</a></li>
		      <li><a href="stu_task_pro.jsp">本组任务进度</a></li>
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
    
    
   <div class="container">
      <!-- 项目名称 -->
      <div class="name_pro">
         <label style="font-size:14px;margin-bottom:20px;">实训项目监管系统</label>
      </div>
      <div class="con" style="width:90%;height:500px;border:1px dashed #dedede;margin-top:20px;margin-left:5%;">
          <label style="color:rgba(200, 196, 196, 1);font-size:14px;">我的团队</label>
          <!-- 左6右4 -->
          <div class="grid-demo" style="margin-top:10px;">
			  <div class="sui-row-fluid">
			    <!--我的团队  -->
			    <div class="span7" style="border-right:1px solid #dedede">
			       <table class="sui-table">
					  <thead>
					    <tr>
					      <th style="width:35%;">姓名</th>
					      <th>角色</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr class="add_after">
					      <td>刘涛</td>
					      <td class="add_append">
					        <span class="sui-dropdown dropdown-bordered select">
					           <span class="dropdown-inner">
					              <a id="select" role="button" href="javascript:void(0);" 
					                 data-toggle="dropdown" class="dropdown-toggle">
                                     <input value="DMY" name="role" type="hidden">
                                     <i class="caret"></i>
                                     <span>选择角色</span>
                                   </a>
							     <ul role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">
							      <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="UI">UI</a></li>
							      <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="JGS">架构师</a></li>
							      <li role="presentation" class="active"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="DMY">代码员</a></li>
							    </ul>
							  </span>
							</span>
							<span><a href="javascript:void(0);" class="add_role sui-btn btn-bordered btn-small btn-primary">+</a></span>
						   </td>
					    </tr>
					    <!--增加一行数据  -->
					    <tr>
					       <td></td>
					       <td>
					          <a id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
		                        data-target="#J_addsuppliersDialog" data-width="large">
					           <img class="add_byImg" src="http://oeznmscij.bkt.clouddn.com//add.png" 
					               style="width:100px;height:35px;">
					          </a></td>
					    </tr>
					  </tbody>
				    </table>
			    </div>
			    <!--是否答应邀请  -->
			    <div class="span4" >
			         <div class="grid-demo">
						 <div class="sui-row-fluid">
						    <div class="span1"></div>
						    <div class="span5" style="border:1px dashed #777;text-align:center">
						        <h4>王五</h4>
						        <div>申请加入</div>
						        <span>是否接受</span>
						        <p>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">是</a>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">否</a>
						        </p>
						    </div>
						    <div class="span1"></div>
						    <div class="span5" style="border:1px dashed #777;text-align:center">
						        <h4>王五</h4>
						        <div>申请加入</div>
						        <span>是否接受</span>
						        <p>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">是</a>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">否</a>
						        </p>
						    </div>
						 </div>
					  </div>
			    </div>
			  </div>
		   </div>
      </div>
   </div>
   
   
   	  <!-- 选组长模态框 -->
   <div id="J_addsuppliersDialog" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">选定组长</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	          <!-- 模态框里的提示 -->
	              <div class="sui-msg msg-block msg-default msg-tips">
						<div class="msg-con">点击你要选择的组长按钮,点击确定即可</div>
						<s class="msg-icon"></s>
	              </div>
	          <!-- 栅格，左3右8-->
                   <div class="grid-demo">
                        <div class="sui-row-fluid">
						    <div class="span3" style="margin-left:2%; margin-right:3%;">
						        <label>组长</label>
						        <div class="leader" style="border:1px dashed #ccc">
						        </div>
						    </div>
						    <div class="span8">
						        <label>班级中可选名单</label>
						         <div  class="choice" style="border:1px dashed #ccc">
						               <a href="javascript:void(0);" class="sui-btn btn-primary">何炅</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">汪涵</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">刘涛</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">杨幂</a>
						         </div>
						    </div>
						</div>
						<div style="float:right;margin-right:4%;margin-top:2%;">
						  <a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary">确定</a>
						</div>
                   </div>				
	          </div>
	      </div>
	  </div>
	</div>
   
   
   
   
</body>
</html>