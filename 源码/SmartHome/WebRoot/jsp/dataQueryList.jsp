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
    
    <title>My JSP 'dataQueryList.jsp' starting page</title>
    
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
    <div>
    <table id="datatable">
    <thead >
      <tr >
          <th style="width: 200px;">编号</th>
          <th style="width: 200px;">区域名称</th>
          <th style="width: 200px;">传感器类型</th>
          <th style="width: 200px;">数据</th>
          <th style="width: 200px;">采集时间</th>
      </tr> 
    </thead>
    <tbody>
        <c:forEach items="${dataQueryList}"  var="list">
           <tr style="text-align:center">
              <td style="width: 200px;">${list.sensorId}</td>
              <td style="width: 200px;">${list.areaNameString}</td>
              <td style="width: 200px;">${list.sensorTypeString}</td>
              <td style="width: 200px;">${list.data}</td>
              <td style="width: 200px;">${list.collecttime}</td>
           </tr>
        </c:forEach>
    </tbody>
    </table>
   </div>
   
  </body>
</html>
