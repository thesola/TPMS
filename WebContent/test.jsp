<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
   .row {
	margin-right: -15px;
	margin-left: -15px;
}
.ibox {
	clear: both;
	margin-bottom: 25px;
	margin-top: 0;
	padding: 0;
}
.ibox-title {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background-color: #fff;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 4px 0 0;
	color: inherit;
	margin-bottom: 0;
	padding: 14px 15px 7px;
	min-height: 48px;
}
.ibox-title h5 {
	display: inline-block;
	font-size: 14px;
	margin: 0 0 7px;
	padding: 0;
	text-overflow: ellipsis;
	float: left;
}
.ibox-tools {
	display: inline-block;
	float: right;
	margin-top: 0;
	position: relative;
	padding: 0;
}
.ibox-tools a {
	cursor: pointer;
	margin-left: 5px;
	color: #c4c4c4;
}
.ibox-content {
	clear: both;
}
.dropzone.dz-clickable {
	cursor: pointer;
}
.float-e-margins .btn {
	margin-bottom: 5px;
}
.dropzone .dz-default.dz-message {
	opacity: 1;
	transition: opacity 0.3s ease-in-out;
	background-image: url("../images/spritemap.png");
	background-repeat: no-repeat;
	background-position: 0 0;
	position: absolute;
	width: 428px;
	height: 123px;
	margin-left: -214px;
	margin-top: -61.5px;
	top: 50%;
	left: 50%;
}
.dropzone .dz-default.dz-message span {
	display: none;
}

</style>
</head>
<body>
   
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>文件上传</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_file_upload.html#">选项1</a>
                                </li>
                                <li><a href="form_file_upload.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="my-awesome-dropzone" class="dropzone dz-clickable" action="form_file_upload.html#">
                            <div class="dropzone-previews"></div>
                            <button type="submit" class="btn btn-primary pull-right">提交</button>
                        <div class="dz-default dz-message"><span>拖拽文件上传</span></div></form>
                    </div>
                </div>
            </div>
        </div>
    
</body>
</html>