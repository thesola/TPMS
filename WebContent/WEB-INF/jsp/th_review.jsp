<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/timeline.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
  .container{
	   width:60%;
	   margin:0 auto ;
	   margin-top:40px;
   }
</style>
</head>
<body>
 <jsp:include page="th_head.jsp"/>
    <div class="container">
        <!-- 面包屑导航 -->
        <ul class="sui-breadcrumb breadcrumb-dark">
			  <li><a href="history_pro.jsp">查看</a></li>
			  <li class="active">详情</li>
		</ul>
         <jsp:include page="one_class_progress.jsp"/>
    </div>
</body>
</html>