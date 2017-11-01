<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>adminLogin</title>
	<link rel="icon" type="image/png" href="static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="static/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/css/admin.css">
    <link rel="stylesheet" href="static/css/app.css">
    <%@include file="/jsp/include/head.jsp" %>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript">
    /*  $().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#loginform").validate({
        rules: {
          username: "required",
          password: "required",
        },
        messages: {
          username: "请输入您的名字",
          password: "请输入您的姓氏",
        }
    });
}); */
  </script>
  </head>
  
  <body data-type="login">

  <div class="am-g myapp-login">
    <div class="myapp-login-logo-block  tpl-login-max">
        <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                Amaze UI<span> Login</span> <i class="am-icon-skyatlas"></i>
                
            </div>
        </div>

        <div class="login-font">
            <i>Log In </i> or <span> Sign Up</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
            <form action="login.action" id="loginform" method="post" class="am-form">
                <fieldset>
                    <div class="am-form-group">
                        <input  type="password" class="" name="username" id="username" placeholder="输入身份证号">
                    </div>                  
                    <div class="am-form-group">
                        <input type="password" class="" name="password" id="password" placeholder="设置个密码吧">
                    </div>
                    <p><button type="submit"  class="am-btn am-btn-default">登录</button></p>
                    
                </fieldset>
            </form>
        </div>
    </div>
</div>

  <script src="static/js/jquery.min.js"></script>
  <script src="static/js/amazeui.min.js"></script>
  <script src="static/js/app.js"></script>
</body>
</html>
