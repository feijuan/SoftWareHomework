<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>(we love smart home.com)</title>
<%@include file="head.jsp" %>
<script>
$.validator.setDefaults({
    submitHandler: function(form) {
      form.submit();
    }
});
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#adminLoginForm").validate({
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
    position:absolute; 
    color:pink;
    height:10px;
    width:100px;
    right:-100px;
}
.am-form-group{
    position:relative;
    height:30px;
}
.form-input{
    position:absolute; 
    height:30px;
    width:100%;
    left:0; 
}


</style>
</head>
<body data-type="login">
<div class="am-g myapp-login">
<div class="myapp-login-logo-block  tpl-login-max">
   <div class="am-u-sm-10 login-am-center">
    <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                智能家居系统   <span> smart home</span> <i class="am-icon-skyatlas"></i>
                
            </div>
        </div>

        <div class="login-font">
            <i> 管理员登录</i>  
        </div>
    <form id="adminLoginForm" action="adminlogin.action" method="post" class="am-form">
                <fieldset>
                    <div class="am-form-group" >
                        <input type="text" class="form-input" name="username" id="doc-ipt-email-1" placeholder="主人，输个身份证号嘛~">
                    </div>                  
                    <div class="am-form-group">
                        <input type="password" class="form-input" name="password" id="doc-ipt-pwd-1" placeholder="还有密码咩(ง •_•)ง">
                    </div>
                    <p><button type="submit" class="am-btn am-btn-default">登录</button></p>
                </fieldset>
            </form>
          </div>  
</div>
</div>

  <script src="static/js/amazeui.min.js"></script>
  <script src="static/js/app.js"></script>
</body>
</html>
