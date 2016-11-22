<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>Login</title>
<style type="text/css">
  body{
    background: url(http://oeznmscij.bkt.clouddn.com//login-background.jpg) no-repeat center fixed;
  }
  .login-form {
	width: 300px;
	margin: 10% auto 0;
   } 
  form {
	color: rgba(255,255,255,.98);
    background: rgba(255,255,255,.2);
    border: 1px solid rgba(255,255,255,.3);
    box-shadow: 0px 3px 0px rgba(12,12,12,0.03);
    border-radius: 3px;
    padding: 30px;
  }
  .form-control{
     display: block;
	 margin-top: 15px;
  }
 /*  span{
    font-size:13px;
    color:#fff;
  } */
   .href{
   margin-top: 15px;
  }
  a {
	color: #337ab7;
	text-decoration: none;
	cursor: pointer;
   }
   a:hover{
      text-decoration: none;
      color:#355c7e;
   }
   .btn{
    margin-top: 15px;
	background-color: #1c84c6;
	border-color: #1c84c6;
	color: #FFF;
	width:240px;
  }
  .error{
  	color:red;
  	font-size:13px;
  }
 
</style>
<script type="text/javascript">
      $(function(){
    	  
    	  // 登录结果验证
    	  var logInfo = '${logInfo}';
    	  if(logInfo) {
    		  $("#account").val( '${account}' );
    		  $("#passwd").val( '${passwd}' );
    		  if( logInfo != "exit" ){ // 不是退出
    			  $("#no_such_user").html( logInfo );
    		  }
    	  }
    	  
    	  // 账号输入验证
    	  $("#account").blur(function(){
    		  if( $("#account").val() == "" ){
    			  $("#account_text").html( "用户名不能为空");
    		  }else{
    			  $("#account_text").html("");
    		  }
    	  });
    	  
    	  // 密码输入验证
    	  $("#passwd").blur(function(){
    		  if( $("#passwd").val() == "" ){
    			  $("#passwd_text").html( "密码不能为空");
    		  }else{
    			  $("#passwd_text").html("");
    		  }
    	  });
    	  
    	  // 表单提交验证
    	  $("#sub").click(function(){
    		  if( $("#passwd").val() == "" ||  $("#account").val() == "" || $("#account_text").val() != "" || $("#passwd_text").val() != "" ){
    			  return false;
    		  }
    		  return true;
    	  });
    	  
      });
</script>
</head>
<body>
    <div  class="login">
       <div class="login-form">
             
             <form action="login.do" method="post">
		        <h4 class="no-margins">登录：</h4>
		        <p class="m-t-md">欢迎登录到实训项目管理系统</p>
		        <div class="error" id="no_such_user" ></div>
		        <input class="form-control username" type="text" placeholder="用户名" name="account" id="account"  />
		        <span class="error" id="account_text"></span>
		        <input class="form-control password" type="password" placeholder="密码" name="passwd" id="passwd" /><!-- <span>初始密码为123456</span> -->
		        <span class="error" id="passwd_text" ></span>
		        <div class="href"><a href="">忘记密码了？</a></div>
		        <input type="submit" class="btn" value="登录" id="sub" />
        	</form>
          
       </div>
    </div>
</body>
</html>