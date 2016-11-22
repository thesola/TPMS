<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>mumber</title>
<style>
    .container{
	   width:60%;
	   margin:0 auto ;
	   margin-top:40px;
   }
   /* 选组长 */

.choice a{
  width:50%;
  margin:10px;
}
.team a{
  width:60%;
}
</style>
<script type="text/javascript">
    $(function(){
    	 /*选组长*/
 	   $(".choice a").click(function(){
 			var $remove = $(this).remove();
 			$remove.appendTo(".team");
 			
 			$(".team a").click(function(){
 				var $reback = $(this).remove();
 				$reback.appendTo(".choice");
 			});
 	   });
    });
</script>
</head>
<body>
    <!-- 导航栏 -->
   <jsp:include page="stu_head.jsp"/>    
    
   <div class="container">
      <!-- 项目名称 -->
      <div class="name_pro">
         <label style="font-size:14px;margin-bottom:20px;">实训项目监管系统</label>
      </div>
      <div class="con" style="width:90%;height:500px;border:1px dashed #333;margin-top:20px;margin-left:5%;">
          <label style="color:rgba(200, 196, 196, 1);font-size:14px;">申请加入团队</label>
          <!-- 左6右4 -->
          <div class="grid-demo" style="margin-top:10px;">
			  <div class="sui-row-fluid">
			    <!--我的团队  -->
			    <div class="span7" style="border-right:1px solid #dedede;">
			         <!-- 提示 -->
	              <div class="sui-msg msg-block msg-default msg-tips">
						<div class="msg-con">选择你的团队(不可多选),点击发送/接受团队的邀请</div>
						<s class="msg-icon"></s>
	              </div>
			       <table class="sui-table" style="border-bottom:1px solid #dedede">
					  <thead>
					    <tr>
					      <th style="width:45%;">申请的团队</th>
					      <th>组长名</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td class="team"></td>
					      <td class="leaders">
					          <div class="choice">
					               <a href="javascript:void(0);" class="sui-btn btn-primary">何炅</a>
					               <a href="javascript:void(0);" class="sui-btn btn-primary">汪涵</a>
					               <a href="javascript:void(0);" class="sui-btn btn-primary">刘涛</a>
					               <a href="javascript:void(0);" class="sui-btn btn-primary">杨幂</a>
						      </div>
					      </td>
					    </tr>
				    </table>
				    <div style="margin-left:10%;">
				       <a href="javascript:void(0);" class="sui-btn btn-primary" >发送</a>
				    </div>
			    </div>
			    <!--是否答应邀请  -->
			    <div class="span4" >
			         <div class="grid-demo">
						 <div class="sui-row-fluid">
						    <div class="span1"></div>
						    <div class="span5" style="border:1px dashed #777;text-align:center">
						        <h4>王五</h4>
						        <div>邀请你加入</div>
						        <span>是否接受</span>
						        <p>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">是</a>
						           <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">否</a>
						        </p>
						    </div>
						    <div class="span1"></div>
						    <div class="span5" style="border:1px dashed #777;text-align:center">
						        <h4>王五</h4>
						        <div>邀请你加入</div>
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
   
</body>
</html>