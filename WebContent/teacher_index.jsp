<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teacher index</title>
<style>
   body{
   }
   .container{
   width:70%;
   margin: 2% auto 0;
   margin-top:8%;
   }
   .ibox-title {
	background-color: #fbfbfb;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 4px 0 0;
	color: inherit;
	padding: 5px 10px 7px;
	min-height: 20px;
}
.ibox-content {
	background-color: #fbfbfb;
	padding: 15px 20px 20px;
	border-color: #e7eaec;
	border-style: solid solid none;
	border-width: 1px 0;
	height:110px;
}
.dropzone .dz-default.dz-message {
	position: absolute;
	margin-left: -24px;
	margin-top: -23.5px;
	top: 50%;
	left: 50%;
}
.mytip{
   margin-left:20%;
   width:350px;
}
.msg-con {
	color: #555;
	cursor: pointer;
}
.start{
   margin-left:30%;
}
.mytable{
   width:60%;
   margin-left:20%;
}
.progress{
  margin-left: 10%;
  width:80%;
}
tbody tr td{
  width:20%;
}

/* 进度条 */
.sui-progress.progress-small {
	height: 14px;
	line-height: 14px;
	margin-bottom:5px;
}
.sui-progress {
	width: 75%;
}
.bar{
font-size: 10px !important;
}
/* 选组长 */
.choice{
   text-align:center;
}
.choice a{
  width:25%;
  margin:10px;
}
</style>
<script>
	
</script>
</head>
<body>
   <!--导航栏  -->
    <jsp:include page="th_head.jsp"/>
  <div class="container">
      <!--卡片头部  -->
      <ul class="sui-nav nav-tabs" style="font-size:13px;">
		  <li><a href="#index" data-toggle="tab">新建实训任务</a></li>
		  <li><a href="#profile" data-toggle="tab">项目分发</a></li>
		  <li class="active"><a href="#progress" data-toggle="tab">查看进度</a></li>
		  <li><a href="#score" data-toggle="tab">评分</a></li>
	  </ul>
	  <div class="tab-content tab-wraped">
		  <!-- 第一个卡片里的内容 -->
		  <div id="index" class="tab-pane">
		      <div class="grid-demo">
		          <div class="sui-row-fluid">
		               <div class="span4">
				           <form class="sui-form form-horizontal sui-validate">
							  <div class="control-group">
							    <label for="pj_name" class="control-label">实训项目名称：</label>
							    <div class="controls">
							      <input type="text" id="pj_name" name="pj_name">
							    </div>
							  </div>
							  <div class="control-group">
							    <label for="group_num" class="control-label">每组人数上限：</label>
							    <div class="controls">
							      <input type="text" id="group_num" name="group_num">
							    </div>
							  </div>
							   <div class="control-group">
							    <label for="time" class="control-label">实训周期：</label>
							    <div class="controls">
							      <input type="text" id="time" name="time">
							    </div>
							  </div>
							  <div class="control-group">
								    <label for="inputDes" class="control-label v-top">实训项目内容：</label>
								    <div class="controls">
								      <textarea id="inputDes" name="des"></textarea>
								    </div>
							   </div>
					     </form>
		               </div>
		               <div class="span5">
		               	   <div>
		               	      <div class="ibox-title">
		               	         <label>文件上传</label>
		               	      </div>
		               	      <div class="ibox-content">
		               	         <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="#">
		               	             <button type="submit" class="btn btn-primary pull-right">提交</button>
		               	             <div class="dz-default dz-message"><span>拖拽文件/点击  上传</span></div>
		               	         </form>
		               	      </div>
		               	   </div>
		       		   </div>
		           </div>
		      </div>     
		  </div>
		  <!--项目分发  -->
		  <div id="profile" class="tab-pane">
		       <div class="mytable">
		           <table class="sui-table table-bordered">
					  <thead>
					    <tr>
					      <th>项目名称</th>
					      <th>项目负责人</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
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
		  <!-- 进度查询-->
		  <div id="progress" class="tab-pane  active">
		      <div class="progress">
		          <span style="font-size:14px;color:#666">软件1431项目进度</span>
		          <!-- 搜索框 -->
		          <div class="search" style="margin-top:20px;float:right;margin-bottom:20px;margin-right:5%">
		              <form class="sui-form form-search">
						  <div class="input-append">
						     <input type="text" id="auto-init-2" value="" data-toggle="autocomplete" data-lookup="[&quot;实训项目管理系统&quot;, 
						     &quot;echo回声&quot;]" class="input-large span2 search-query">
						    <input type="submit" class="sui-btn  btn-primary"" value="搜索">
						  </div>
					   </form>
		          </div>
		          <div>
		              <table class="sui-table">
						  <thead>
						    <tr>
						      <th>最新阶段</th>
						      <th>名称</th>
						      <th>进度</th>
						      <th>组别</th>
						      <th>操作</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td><a href="javascript:void(0);" class="sui-btn btn-primary">需求分析待审核</a></td>
						      <td><span style="font-size:13px;"><a href="#">实训项目监管系统</a></span>
						          <div style="font-size:11px;color:#BAABAB">创建于2016-10-30</div></td>
						      <td><span>当前进度20%</span>
                                   <div class="sui-progress progress-small">
									  <div style="width: 20%;" class="bar">20%</div>
								   </div></td>
						      <td>第一组</td>
						      <td><a href="javascript:void(0);" class="sui-btn btn-small btn-primary">审核</a>
						          <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">查看</a></td>
						    </tr>
						     <tr>
						      <td><a href="javascript:void(0);" class="sui-btn btn-primary">需求分析进行中</a></td>
						      <td><span style="font-size:13px;"><a href="#">echo回声</a></span>
						          <div style="font-size:11px;color:#BAABAB">创建于2016-10-30</div></td>
						      <td><span>当前进度20%</span>
                                   <div class="sui-progress progress-small">
									  <div style="width: 20%;" class="bar">20%</div>
								   </div></td>
						      <td>第一组</td>
						      <td><a href="javascript:void(0);" class="sui-btn btn-small disabled btn-primary">审核</a>
						          <a href="javascript:void(0);" class="sui-btn btn-small btn-primary">查看</a></td>
						    </tr>
						  </tbody>
						</table>
		          </div>
		      </div>
		  </div>
		  <div id="score" class="tab-pane">
		      <div class="mytip sui-msg msg-block msg-default msg-tips">
					<div class="msg-con">教师还未开启互评功能，可点击下方“开启”按钮</div>
					<s class="msg-icon"></s>
              </div>
               <div class="start"><a href="javascript:void(0);" class="sui-btn btn-bordered btn-primary">开启</a></div>
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
	          <!-- 栅格，左2右6 -->
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
						               <a href="javascript:void(0);" class="sui-btn btn-primary">张三</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">李四</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">王五</a>
						               <a href="javascript:void(0);" class="sui-btn btn-primary">王小肖</a>
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