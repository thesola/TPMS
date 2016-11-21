<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/menu.css" rel="stylesheet">
<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<title>teacher index</title>
<style type="text/css">
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
<script>
   $(function(){
	   $("#demo-list li").click(function(){
		   $(this).addClass("current").siblings().removeClass("current");
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
	   /*增加一行组长，项目信息*/
	   $(".mySubmit").click(function(){
		   
	   });
   });
</script>
</head>
<body>
    <!--导航栏  -->
    <jsp:include page="th_head.jsp"/>
    <div class="grid-demo">
	  <div class="sui-row">
	    <div class="span1">
	    </div>
	    <div class="span3">
	         <!-- 左侧导航 -->
		    <div class="menu">
			   <ul id="demo-list">
			    <li><a href="th_creat.jsp">新建实训任务</a></li>
				<li  class="current"><a href="th_distribute.jsp">项目分发</a></li>
				<li><a href="th_index.jsp">查看进度</a></li>
			    <li><a href="th_score.jsp">评分</a></li>
			   </ul>
			</div>
	    </div>
	    <div class="span8">
	        <!-- 右侧内容 -->
			<div class="content" style="margin-top:20px;">
			      <div class="mytable">
		           <table class="sui-table table-bordered">
					  <thead>
					    <tr>
					      <th>项目名称</th>
					      <th>项目名称</th>
					      <th>项目负责人</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td><input type="text" style="border:0px;border-radius:3px;padding:4px;font-size:13px;" value="第一组"></td>
					      <td><input type="text" style="border:0px;border-radius:3px;padding:4px;font-size:13px;" value="实训项目管理系统"></td> 
					      <td><a href="#" id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
		                        data-target="#J_addsuppliersDialog" data-width="large">
						      <img src="http://oeznmscij.bkt.clouddn.com/add.png" width="100px" height="40px"/>
						      </a></td>
					    </tr>
					  </tbody>
				   </table>
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
						  <a href="javascript:void(0);" class="mySubmit sui-btn btn-bordered btn-primary">确定</a>
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