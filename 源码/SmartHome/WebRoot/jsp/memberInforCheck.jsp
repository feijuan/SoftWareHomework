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
	<%@include file="head.jsp" %>
    <script>
      function agree(idcard,_this) {
        $.ajax({
            url:"memberInforConfirm.action",
            type:"POST",
            data:{idcard:idcard},
            success:function(data){
              $(_this).parent().parent().remove();
            }
        });
    }  
    </script>
  </head>
  
  <body>
  
            <table id="contentTable" border="1" cellspacing="0"  class="table table-striped table-bordered table-hover operateCol tableFixedHead">
                <thead align="center">
                <tr >
                    <th style="width: 200px;">序列</th>
                    <th style="width: 200px;">成员名称</th>
                    <th style="width: 200px;">身份证号</th>
                    <th style="width: 200px;">手机号</th>
                    <th style="width: 200px;">操作</th>
                  <%--   <c:if test="${user1.isAdmin == '0'}"> --%>
                        
                  <%--   </c:if> --%>
                </tr>
                </thead>
                <tbody id='table'>
                <c:forEach items="${ValidateMemeberList}" var="list" varStatus="status">
                    <tr style="text-align:center">
                        <td style="width: 200px;">${ status.index + 1}</td>
                        <td style="width: 200px;">${list.name}</td>
                        <td style="width: 200px;">${list.idcard}</td>
                        <td style="width: 200px;">${list.telphone}</td>                 
                        <td style="width: 200px;">
                            <a href="javascript:"
                               onclick="agree('${list.idcard}',this)">同意</a>
                            </td>   
                    </tr>
                </c:forEach>
                </tbody>
            </table>
       
  </body>
</html>
