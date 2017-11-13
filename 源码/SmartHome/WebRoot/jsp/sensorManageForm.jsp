<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sensorManageForm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="static/bootstrap/3.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap/3.3.0/css/bootstrap-theme.min.css">
    
  </head>
  
  <body>
<div class="container">
    <div class="row">
        <div class="span8">
            <ul class="nav nav-pills">
        <li class="active"><a href="sensorsList.action"><i class="fa fa-user"></i>传感器列表</a></li>
        <li ><a href="sensorsForm"><i class="fa fa-lock"></i>传感器${not empty chickhomemanage.id?'修改':'添加'}</a></li>
           </ul>
        </div>
    </div>
</div>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  </body>
</html>
