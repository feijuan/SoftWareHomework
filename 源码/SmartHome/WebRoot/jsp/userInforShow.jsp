<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '404.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>  <h1>个人信息显示界面</h1><br>
  <table border="1" cellspacing="0" align="center">
    <tr>
       <td style="width: 104px; " align="right">用户：</td>
       <td style="width: 146px; ">${user_info.idcard}</td>
    </tr>
    <tr>
       <td align="right">密码：</td>
       <td style="width: 109px; ">${user_info.password}</td>
    </tr>
    <tr>
       <td align="right">姓名：</td>
       <td style="width: 109px; ">${user_info.name}</td>
    </tr>
    <tr>
       <td align="right">家庭号：</td>
       <td style="width: 109px; ">${user_info.homeId}</td>
    </tr>
    <tr>
       <td align="right">电话号：</td>
       <td style="width: 109px; ">${user_info.telphone}</td>
    </tr>
  </table>
  </body>
</html>
