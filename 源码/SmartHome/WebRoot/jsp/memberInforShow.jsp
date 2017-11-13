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
  
  <body>
    <h1>成员显示界面</h1> <br>
    <div>
      <table id="memberinforshow">
        <thead>
          <tr >
            <th style="text-align:center" width="200px">用户</th>
            <th style="text-align:center" width="200px">姓名</th>
            <th style="text-align:center" width="200px">电话</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${members_info}" var="members">
           <tr style="text-align:center">
             <td width="200px">${members.idcard}</td>
             <td width="200px">${members.name}</td>
             <td width="200px">${members.telphone}</td>
           </tr>  
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
