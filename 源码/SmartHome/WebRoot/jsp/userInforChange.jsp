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
	<%-- <%@include file="head.jsp" %> --%>
	<script src="static/js/jquery.min.js"></script>
    <script src="static/js/jquery.validate.min.js"></script>
	<script>

$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#passwordForm").validate({
        rules: {
         oldpassword: {
            required: true,
           /*  remote:{
             type:"POST",
             url:"passwordCheck.action",
             data:{
             idcard:function(){return $("#oldpassword").val();}
             }
            }, */
            minlength: 5  
         }, 
          newpassword: {
            required: true,
            minlength: 5  
         },
          newpassword1:{
            required: true,
            equalTo:"#newpassword"
          }
          },
        messages: {  
          oldpassword: {
            required: "请输入旧密码",
            //remote:"旧密码错误",
            minlength: "密码长度不能小于 5位" 
          },
           newpassword: {
            required: "请输入密码",
            minlength: "密码长度不能小于 5位" 
          },
          newpassword1:{
            required:"请确认密码",
            equalTo: "请再次输入相同的密码"
          }
          }
    });
});
</script>

  </head>
  
  <body>
    <h1>个人信息修改界面</h1> <br>
    <form  id="passwordForm" action="userInforChange.action" method="post" >
         旧密码： <input type="password"  name="oldpassword" id="oldpassword"/> 
        <p> </p>
        新密码： <input type="password"  name="newpassword" id="newpassword" />
        <p></p>
        确认密码：<input type="password"  name="newpassword1" id="newpassword1" />
        <p></p>
        <button type="submit" >tijiao</button>
    </form>

  </body>
</html>
