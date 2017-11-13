<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'devicestatus.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <table border="1" cellspacing="0" align="center">
     <thead align="center">
       <tr>
         <th width="200px">序号</th>
         <th width="200px">家庭区域</th>
         <th width="200px">设备名称</th>
         <th width="200px">设备状态</th>
       </tr>
       </thead>
       <tbody align="center">
       <c:forEach items="${deviceStatusList}" var="devicestatus">
       <tr>
         <td width="200px">${devicestatus.id}</td>
         <td width="200px">${devicestatus.homeArea}</td>
         <td width="200px">${devicestatus.deviceName}</td>
         <td width="200px">${devicestatus.deviceStatue}</td>
       </tr>
       </c:forEach>
       </tbody>
     </table>
  </body>
</html>
