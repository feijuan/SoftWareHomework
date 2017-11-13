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
    
    <title>My JSP 'sensorManageList.jsp' starting page</title>
    
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
    <table id="sensorManageList" border="1" cellspacing="0" align="center">
     <thead align="center">
      <tr>
        <th width="200px">序号</th>
        <th width="200px">家庭区域</th>
        <th width="200px">传感器类型</th>
        <th width="200px">状态</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${sensorStatusList}" var="sensordata">
      <tr>
        <td width="200px">${sensordata.id}</td>
        <td width="200px">${sensordata.homeArea}</td>
        <td width="200px">${sensordata.sensorType}</td>
        <td width="200px">${sensordata.status}</td>
      </tr>
      </c:forEach>
      </tbody>
    </table>
  </body>
</html>
