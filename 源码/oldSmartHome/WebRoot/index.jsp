<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<%@include file="/jsp/include/head.jsp" %>
<script>
$.validator.setDefaults({
    submitHandler: function() {
      alert("提交事件!");
    }
});
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#signupForm").validate({
        rules: {
          username: {
            required: true,
            minlength: 2
          },
          password: {
            required: true,
            minlength: 5
          }
        },
        messages: {  
          username: {
            required: "请输入用户名",
            minlength: "用户名必需由两个字母组成"
          },
          password: {
            required: "请输入密码",
            minlength: "密码长度不能小于 5 个字母"
          } 
        }
    });
});
</script>
<style>
.error{
    color:red;
}
</style>
</head>
<body>
<form class="cmxform" id="signupForm" method="get" action="">
  <fieldset>
    <legend>验证完整的表单</legend>
    <p>
      <label for="username">用户名</label>
      <input id="username" name="username" type="text">
    </p>
    <p>
      <label for="password">密码</label>
      <input id="password" name="password" type="password">
    </p>
    <p>
      <button type="submit"  >登录</button>
    </p>
  </fieldset>
</form>
</body>
</html>
