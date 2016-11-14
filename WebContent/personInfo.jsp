<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>person info</title>
<style>
   .container{
   width:80%;
  margin: 10% auto 0;
   }
</style>
</head>
<script>
	$(function(){
		$("#head").click(function(){
			$("#btn_file").click();
			$("#btn_file").on("change",function(){
				var objUrl = getObjectURL(this.files[0]);
				if(objUrl){
					$("#head").attr("src",objUrl);
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
<body>
    <div class="container">
       <div class="sui-msg msg-block msg-default msg-tips">
	        <ul class="sui-nav nav-tabs nav-large">
			  <li class="active"><a href="#index" data-toggle="tab">个人信息</a></li>
			  <li><a href="#modify_pw" data-toggle="tab">修改密码</a></li>
			  <!-- <li><a href="#third" data-toggle="tab">修改头像</a></li> -->
		    </ul>
		   <div class="tab-content tab-wraped">
		      <div id="index" class="tab-pane active">
		           <div class="grid-demo">
		               <div class="sui-row-fluid">
						    <div class="span2">
						        <div>
						           <input type="file" name="file" id="btn_file" style="display:none"/>
						           <img alt="head" id="head" src="http://oeznmscij.bkt.clouddn.com//image1475068204818004744.jpg"
			                       width="100px" height="100px" style="border-radius: 50%;"/>
						        </div>
			                    <div class="control-group" style="padding-left:20px; margin-top:20px;">
								  <button type="button" class="sui-btn btn-bordered btn-primary">确定</button>
							  </div>
						    </div>
						    <div class="span3">
						        <form class="sui-form form-horizontal sui-validate">
									  <div class="control-group">
									    <label for="name" class="control-label">姓名：</label>
									    <div class="controls">
									      <input type="text" id="name" name="name">
									    </div>
									  </div>
									  <div class="control-group">
									    <label for="email" class="control-label">邮箱：</label>
									    <div class="controls">
									      <input type="text" id="email" name="email">
									    </div>
									  </div>
									   <div class="control-group">
									    <label for="school" class="control-label">学院：</label>
									    <div class="controls">
									      <input type="text" id="school" name="school">
									    </div>
									  </div>
									  <div class="control-group">
									    <label for="mobile" class="control-label">手机号码：</label>
									    <div class="controls">
									      <input type="text" id="mobile" name="mobile">
									    </div>
									  </div>
							     </form>
						    </div>
						    <div class="span3">
						        <form class="sui-form form-horizontal sui-validate">
						         <div class="control-group">
									    <label for="num" class="control-label">工号：</label>
									    <div class="controls">
									      <input type="text" id="num" name="num">
									    </div>
									  </div>
						            <div class="control-group">
									    <label for="inputDes" class="control-label v-top">自我介绍：</label>
									    <div class="controls">
									      <textarea id="inputDes" name="des" placeholder="自我介绍" ></textarea>
									    </div>
									</div>
						        </form>
						    </div>
					   </div>
		           </div>
		      </div>
		   <div id="modify_pw" class="tab-pane">
			     <form class="sui-form form-horizontal sui-validate">
			        <div class="control-group">
					    <label for="password" class="control-label">密码：</label>
					    <div class="controls">
					      <input type="password" id="password" placeholder="required" data-rules="required|minlength=8|maxlength=16" name="password">
					    </div>
					</div>
					<div class="control-group">
					    <label for="repassword" class="control-label">重复密码：</label>
					    <div class="controls">
					      <input type="password" id="repassword" placeholder="match" data-rules="required|match=password" name="repassword">
					    </div>
				     </div>
				      <div class="control-group" style="padding-left:100px;">
						  <button type="submit" class="sui-btn btn-bordered btn-primary">确定</button>
					  </div>
				 </form>
		     </div>
		     
		   <div id="third" class="tab-pane">
		   </div>
		 </div>
	   </div> 
    </div>
</body>
</html>