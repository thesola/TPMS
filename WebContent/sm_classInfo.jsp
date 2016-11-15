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
</style>
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
   data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">添加学生信息</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	              <form class="sui-form form-horizontal sui-validate">
	               <div class="control-group">
					    <label for="class" class="control-label">班级：</label>
					    <div class="controls">
					      <input type="text" id="class" value="软件1431" name="class">
					    </div>
					  </div>
			         <div class="control-group">
					    <label for="num" class="control-label">学号：</label>
					    <div class="controls">
					      <input type="text" id="num" placeholder="required" data-rules="required" name="num">
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
						    <input type="radio" checked="checked" name="radio1"><span>男</span>
						 </label>
					    <label data-toggle="radio" class="radio-pretty inline">
						    <input type="radio" name="radio1"><span>女</span>
						 </label>
					  </div>
					    <div  style="text-align:center">
					      <input type="submit" id="add" name="add" value="添加" class="sui-btn btn-bordered btn-primary">
					    </div>
				   </form>
	          </div>
	      </div>
	  </div>
	</div>
</body>
</html>