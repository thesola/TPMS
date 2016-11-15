<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>system manager</title>
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
</head>
<body>
      <!--导航栏  -->
    <jsp:include page="sm_head.jsp"/>
   
   <!-- 内容 -->
   <div class="container">
       <table class="sui-table table-bordered-simple">
		  <thead>
		    <tr>
		      <th>工号</th>
		      <th>姓名</th>
		      <th>性别</th>
		      <th>操作</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>1402753129</td>
		      <td>孟雪</td>
		      <td>女</td>
		      <td>
		         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">禁用</a>
		         <a href="javascript:void(0);" id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
		           data-target="#J_addsuppliersDialog" data-width="large"
		           class="sui-btn btn-primary  btn-bordered btn-info">详情</a>
		      </td>
		    </tr>
		     <tr>
		      <td>1402753129</td>
		      <td>孟雪</td>
		      <td>女</td>
		       <td>
		         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">禁用</a>
		         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">详情</a>
		      </td>
		    </tr>
		  </tbody>
		</table>
   </div>
   
   
   <!-- 模态框 -->
   <div id="J_addsuppliersDialog" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close">×</button>
	              <h4 id="myModalLabel" class="modal-title">教师详细信息</h4>
	          </div>
	          <div class="modal-body sui-form form-horizontal" style="overflow-y: auto;">
	          <!-- 模态框里的提示 -->
	              <div class="sui-msg msg-block msg-default msg-tips">
						<div class="msg-con">以下为管理教师/听课教师的权限设置</div>
						<s class="msg-icon"></s>
	              </div>
	              <!--卡片头部  -->
	              <ul class="sui-nav nav-tabs">
					  <li class="active"><a href="#index" data-toggle="tab">正在管理的班级</a></li>
					  <li><a href="#profile" data-toggle="tab">正在听课的班级</a></li>
				  </ul>
				  <div class="tab-content tab-wraped">
				  <!-- 第一个卡片里的内容 -->
				  <div id="index" class="tab-pane active">
				    <table class="sui-table table-bordered-simple">
					  <thead>
					    <tr>
					      <th>班级</th>
					      <th>人数</th>
					      <th>操作</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td>软件1431</td>
					      <td>36</td>
					      <td><a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">删除</a></td>
					    </tr>
					    <tr>
					      <td>软件1431</td>
					      <td>36</td>
					      <td><a href="javascript:void(0);" class="sui-btn btn-bordered btn-info">删除</a></td>
					    </tr>
					    <tr>
					      <td></td>
					      <td></td>
					      <td><a href="javascript:void(0);" class="sui-btn J_addOneSupplier btn-bordered btn-info">增加</a></td>
					    </tr>
					  </tbody>
					</table>
				  </div>
				  <div id="profile" class="tab-pane">
				  </div>
				</div>
	          </div>
	      </div>
	  </div>
	</div>
   
   <script>
  $supDialog = $('#J_addsuppliersDialog')
  $supDialog.on('click', '.J_addOneSupplier', function(e) {
    $supDialog.modal('shadeIn');
    return $.confirm({
      title: '班级',
      body: '<form class="sui-form form-search">'+
               '<input type="text" class="input-medium search-query">'+
               '<button type="submit" class="sui-btn btn-primary">Search</button>'+
            '</form>'+
    	  '<table class="sui-table table-bordered-simple">'+
		        '<thead>'+ 
	                '<tr>'+
	                   '<th>操作</th>'+
	                   '<th>班级</th>'+
	                   '<th>人数</th>'+
	                '</tr>'+
	            '</thead>'+
	            '<tbody>'+
	                '<tr>'+
	                    '<td><input type="checkbox" value="choice"/></td>'+
	                    '<td>软件1431</td>'+
	                    '<td>36</td>'+
	                '</tr>'+
	            '</tbody>'+
	        '</table>',
	      
      backdrop: false,
      okHide: function() {
         $.alert({
          hasfoot: false,
          backdrop: false,
          title: '添加成功',
          body: '恭喜添加成功！！！',
          timeout: 1000
        }); 
      },
      hide: function() {
        return $supDialog.modal('shadeOut');
      }
    });
  });
  
  
</script>
   
</body>
</html>