<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>class info</title>
</head>
<style>
    /* 导航栏样式 */
   .mycontainer{
   width:80%;
   margin:0 auto ;
   }
   .container{
   width:60%;
   margin:0 auto ;
   margin-top:40px;
   }
   td{
     width:150px !important;
   }
   tbody tr:hover{
     background:rgba(133,208,231,0.1);
   }
   .inputDetail input{
     width:96px;
   }
   .sex{
   color: #A4A4A4;
   font-size:12px;
   }
</style>
<script type="text/javascript">
   $(function(){
	   $(".addStu").click(function(){
		    $(".inputDetail").append(
		    		'<div class="input" style="margin-right:8px;margin-top:3px;">'+
		    		    '<input type="text" id="class" value="软件1431" name="class" style="margin-right:4px;"/>'+
		    		    '<input type="text" id="num" placeholder="学号" name="num" style="margin-right:4px;"/>'+
		    		    '<input type="text" id="name" placeholder="姓名" name="name" style="margin-right:4px;"/>'+
		    		    '<span class="sui-dropdown dropdown-bordered select"><span class="dropdown-inner"><a id="select" role="button" href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">'+
		    		        '<input value="female" name="sex" type="hidden"><i class="caret"></i><span class="sex">选择性别</span></a>'+
		    		        '<ul role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">'+
		    		            '<li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="male">男</a></li>'+
		    		            '<li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="female">女</a></li>'+
		    		        '</ul></span></span>'+  
		    		     '<a href="javascript:void(0);" class="delStu sui-btn btn-bordered btn-primary" style="margin-left:4px;">-</a>'+
		    		  '</div> '
		    );
		    $(".delStu").click(function(){
		    	$(this).parent().remove();
		    });
	    });
   });
</script>				 
<body>
    <!--导航栏  -->
    <jsp:include page="sm_head.jsp"/>
    <!-- 内容 -->
   <div class="container">
       <div style="float:right;margin-bottom:10px;">
            <a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary"
            id="addSI"  data-toggle="modal" data-backdrop="static"
		           data-target="#StudentAdd">添加学生信息</a>
        </div>
   <!-- 分页器 -->
       <!-- <div class="sui-pagination" style="margin-top:10px;">
		  <ul>
		    <li class="prev disabled"><a href="#">«</a></li>
		    <li class="active"><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li class="next"><a href="#">»</a></li>
		  </ul>
		</div> -->
   <!-- 信息显示 -->
       <table class="sui-table table-bordered-simple">
		  <thead>
		    <tr>
		      <th>班级</th>
		      <th>学号</th>
		      <th>姓名</th>
		      <th>姓别</th>
		      <th>操作</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>软件1431</td>
		      <td>1402753129</td>
		      <td>孟雪</td>
		      <td>女</td>
		      <td>
		         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">禁用</a>
		      </td>
		    </tr>
		     <tr>
		      <td>软件1431</td>
		      <td>1402753129</td>
		      <td>孟雪</td>
		      <td>女</td>
		       <td>
		         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">禁用</a>
		      </td>
		    </tr>
		  </tbody>
		</table>
   </div>
   
   
    <!-- 学生信息添加模态框 -->
   <div id="StudentAdd" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" 
   data-getsuppliersurl="http://xxx" style="width:40%; top:30%;left:45%;">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">添加学生信息</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	              <form class="sui-form form-horizontal sui-validate">
	                  <!-- 标签 -->
	                  <div class="label">
	                      <span>
	                          <label for="class" class="control-label">班级</label>
	                      </span>
	                      <span>
	                          <label for="num" class="control-label">学号</label>
	                      </span>
	                      <span>
	                          <label for="num" class="control-label">姓名</label>
	                      </span>
	                      <span>
	                          <label for="num" class="control-label">性别</label>
	                      </span>
	                      <span>
	                          <label for="num" class="control-label">操作</label>
	                  </div>
	                  <!-- 填写 -->
	                  <div class="inputDetail" style="margin-left:6%;margin-right:7%;">
	                      <input type="text" id="class" value="软件1431" name="class">
	                      <input type="text" id="num" placeholder="学号" name="num">
	                      <input type="text" id="name" placeholder="姓名" name="name">
	                      <span class="sui-dropdown dropdown-bordered select"><span class="dropdown-inner"><a id="select" role="button" href="javascript:void(0);" data-toggle="dropdown" class="dropdown-toggle">
						      <input value="female" name="sex" type="hidden"><i class="caret"></i><span class="sex">选择性别</span></a>
							    <ul role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">
							      <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="male">男</a></li>
							      <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="female">女</a></li>
							    </ul></span></span>
	                      <a href="javascript:void(0);" class="addStu sui-btn btn-bordered btn-primary">+</a>
	                  </div>
	                  <div style="float:right;margin-right:7%;margin-top:10px;"><a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary">添加</a></div>
				   </form>
	          </div>
	      </div>
	  </div>
	</div>
</body>
</html>