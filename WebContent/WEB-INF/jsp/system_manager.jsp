<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<script>
	var tID = -1;

	$(function(){
		
		var manaSelected = false;
		var moniSelected = false;
		
		$("#add").click(function(){
			
			var teacherID = $("#num").val();
			var teacherName = $("#name").val();
			var gender = $(":checked[name='radio1']").val();
			
			if( teacherID != "" && teacherName != "" && teacherID.length >= 6 ){
				
				$.post("addTeacher.do",{ "teacherID":teacherID,"teacherName":teacherName,"gender":gender },function(){
					// 添加完后做些什么
					location = location;
				});
			}
			
		});
		
		// 状态字符替换
		$(".teacherID").each(function(){
			var id = $(this).attr("userID"); // 获取用户id
			var status = $(this);
			$.post( "getUserStatus.do", { 'id':id }, function(data){
				//alert( "id:" + id + "\nstatus:" + data);
				status.text( data );
				if("还原" == data){
					status.removeClass('btn-info');
				}else{
					status.addClass('btn-info');
				}
				
			} );
			
			// 添加点击监听
			$(this).click(function(){
				// 这里最好弹出对对话框以提醒用户该操作为风险操作 是否确定明白自己在做什么
				$.post("modifyUserStatus.do",{'id':id,'nowST':status.text()},function(){
					// 刷新页面
					location = location;
				});
			});
			
		});
		
		// 性别字符替换
		$(".gen").each(function(){
			var val = $(this).text();
			$(this).text( val == "0" ? "男" : "女" );
		});
		
		// 获取教师详情
		$(".mdetail").each(function(){
			var id = $(this).attr("userID");
	
			$(this).click(function(){
				tID = id; // 更新被选中的教师id
				refreshRightInfo()
			});
			
		});
		
	});
	
	function refreshRightInfo(){
		$("#manasBody").empty(); // 清空历史记录
		$("#monisBody").empty();
		
		$.post("getClassInfoByTeacherID.do",{'id':tID},function(data){
			var mana = data.mana;
			var moni = data.moni;

			for( var o in mana ){ // 显示管理的班级
				var $tr = $("<tr></tr>");
				
				var $name = $("<td>"+ mana[o].className  +"</td>");
				var $number = $("<td>"+ mana[o].studentNumber +"</td>");
				var $start_time = $("<td><input type='text' data-toggle='datepicker' value='2016-11-22'/></td>");
				var $end_time = $("<td><input type='text' data-toggle='datepicker' value='2016-11-22'/></td>");
				var $del = $( '<td><a href="javascript:void(0);" class="sui-btn btn-bordered btn-info btn_delMana" rid="'+mana[o].rightID+'" >删除</a></td>' );
				
				// 删除教师管理权限
				$del.click(function(){

					var $par = $(this).parent();
					var $a = $(this).children();
					
					$.post("delMana.do",{'id':$a.attr("rid") },function(){
						// 刷新模态框
						alert( "删除了：" + $a.attr("rid") ); // 用户提示信息
						$par.remove();
					});
					
				});
				
				$tr.append( $name );
				$tr.append( $number );
				$tr.append( $start_time);
				$tr.append( $end_time );
				$tr.append( $del );
				$("#manasBody").append( $tr );
			}
			
			for( var o in moni ){ // 显示听课的班级
				var $tr = $("<tr></tr>");
				
				var $name = $("<td>"+ moni[o].className  +"</td>");
				var $number = $("<td>"+ moni[o].studentNumber +"</td>");
				var $start_time = $("<td><input type='text' data-toggle='datepicker' value='2016-11-22'/></td>");
				var $end_time = $("<td><input type='text' data-toggle='datepicker' value='2016-11-22'/></td>");
				var $del = $( '<td><a href="javascript:void(0);" class="sui-btn btn-bordered btn-info btn_delMana" rid="'+moni[o].rightID+'" >删除</a></td>' );
				
				// 删除教师管理权限
				$del.click(function(){

					var $par = $(this).parent();
					var $a = $(this).children();
					
					$.post("delMoni.do",{'id':$a.attr("rid") },function(){
						// 刷新模态框
						alert( "删除了：" + $a.attr("rid") ); // 用户提示信息
						$par.remove();
					});
					
				});
				
				$tr.append( $name );
				$tr.append( $number );
				$tr.append( $start_time);
				$tr.append( $end_time );
				$tr.append( $del );
				$("#monisBody").append( $tr );
			}
			
		},"json");
	}

</script>

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
		    
		   	<c:forEach var="teacher" items="${teachers}" >
			    <tr>
			      <td>${teacher.teacherID}</td>
			      <td>${teacher.teacherName}</td>
			      <td class="gen">${teacher.gender}</td>
			      <td>
			         <a href="javascript:void(0);" class="sui-btn btn-bordered btn-info teacherID" userID="${teacher.teacherID}">null</a>
			         <a href="javascript:void(0);" id="J_addsuppliers"  data-toggle="modal" data-backdrop="static"
			           data-target="#J_addsuppliersDialog" data-width="large"
			           class="sui-btn btn-primary  btn-bordered btn-info mdetail " userID="${teacher.teacherID}" >详情</a>
			      </td>
			    </tr>
		     </c:forEach>
		     
		  </tbody>
		</table>
   </div>
   
   
   <!-- 模态框 -->
   <div id="J_addsuppliersDialog" tabindex="-1" role="dialog" class="sui-modal hide fade" data-addsupplierurl="http://" data-getsuppliersurl="http://xxx">
	  <div class="modal-dialog">
	      <div class="modal-content">
	          <div class="modal-header">
	              <button type="button" data-dismiss="modal" aria-hidden="true" class="sui-close" id="btn_close">×</button>
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
					      <th>开始时间</th>
					      <th>结束时间</th>
					      <th>操作</th>
					    </tr>
					  </thead>
					  <tbody id="manasBody">
					  </tbody>
					  <tfoot>
						  <tr >
						      <td></td>
						      <td></td>
						      <td><a href="javascript:void(0);" class="sui-btn J_addOneSupplier btn-bordered btn-info " id="addMana" >增加</a></td>
						   </tr>
					  </tfoot>
					</table>
				  </div>
				  <!-- 第二个卡片的内容 -->
				  <div id="profile" class="tab-pane">
				  	<table class="sui-table table-bordered-simple">
					  <thead>
					    <tr>
					      <th>班级</th>
					      <th>人数</th>
					      <th>开始时间</th>
					      <th>结束时间</th>
					      <th>操作</th>
					    </tr>
					  </thead>
					  <tbody id="monisBody">
					  </tbody>
					  <tfoot>
						  <tr >
						      <td></td>
						      <td></td>
						      <td><a href="javascript:void(0);" class="sui-btn J_addOneSupplier btn-bordered btn-info " id="addMoni" >增加</a></td>
						   </tr>
					  </tfoot>
					</table>
				  </div>
				</div>
	          </div>
	      </div>
	  </div>
	</div>
   
   <script>
  $supDialog = $('#J_addsuppliersDialog')
  $supDialog.on('click', '.J_addOneSupplier', function(e) {
  	  
	  var btn_id = $(this).attr("id");
	  if( btn_id == "addMana" ){
		  manaSelected = true;
		  moniSelected = false;
	  }else {
		  moniSelected = true;
		  manaSelected = false;
	  }
	  
	  // 获取可用的班级信息列表
	  $.post("getUsableClasses.do",{}, function(data){
		  
		  var content = "";
		  
		  for( var o in data ){
			 content += 
				'<tr>'+
	          '<td><input name="checkClass" type="checkbox" value="'+data[o].classID+'"/></td>'+
	          '<td>'+ data[o].className +'</td>'+
	          '<td>'+ data[o].studentNumber+'</td>'+
	      	  '</tr>';
		  }
		  
	
		  
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
			                content +
			            '</tbody>'+
			        '</table>',
			      
		      backdrop: false,
		      okHide: function() {
		    	  
		    	  // 获取选中的元素
		    	  $(":checkbox[name='checkClass']").each(function(){
		    		  
		    		  if( $(this).is(":checked") ){ // 添加权限
		    			  
		    			  var cID = $(this).attr("value");
		    		  	  /* var startTime = $(this).next().value();
		    		  	  var endTime = $(this).next().next().value(); */
		    		  	  
		    			  if( manaSelected ){ // 添加管理权限
		    				  
		    				  $.post("addManaRight.do",{'cID':cID,'tID':tID},function(){
		    				  });
		    				  
		    			  }else{ // 添加听课权限
		    				  
		    				  $.post("addMoniRight.do",{'cID':cID,'tID':tID},function(){
		    				  });
		    				  
		    			  }
		    			  
		    		  }
		    	  });
		    	  
		         $.alert({
		          hasfoot: false,
		          backdrop: false,
		          title: '添加成功',
		          body: '恭喜添加成功！！！',
		          timeout: 1000
		        }); 
		         
		         // 刷新权限面板
		         refreshRightInfo();

		      },
		      hide: function() {
		        return $supDialog.modal('shadeOut');
		      }
		    });
		  
	  });
	  
	
  });
  
  
</script>
   
</body>
</html>