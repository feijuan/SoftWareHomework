<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>SmartHome用户注册</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
     <script src="static/js/jquery.min.js"></script>
     <script src="static/js/jquery.validate.min.js"></script>
    <link rel="icon" type="image/png" href="static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="static/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/css/admin.css">
    <link rel="stylesheet" href="static/css/app.css">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

  </head>
<script>
$.validator.setDefaults({
    submitHandler: function() {
      $("#userRegisterForm").submit();
    }
});
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#userRegisterForm").validate({
        rules: {
   
           username: {
            required: true,
            minlength: 2
            
          },
          password: {
            required: true,
            minlength: 5  
        },
          id_card: {
            required: true,
            number:true,
            minlength:18,
            maxlength:18
          
          },
           telephone: {
            required: true,
            number:true,
            minlength:11,
              maxlength:11
            
          },
           home_id: {
            required: true,
           number:true,
         minlength:4,
           maxlength:4
            
            }
          },
        messages: {  
          username: {
            required: "请输入用户名",
            minlength: "用户名必需由两个字母组成"
            
          },
          password: {
            required: "请输入密码",
            minlength: "密码长度不能小于 5位"
           
        },
          id_card: {
            required: "请输入身份证号",
             number:"输入必须为数字",
            minlength:"身份证号应为18位",
          maxlength:"身份证号应为18位"
            
          },
            telephone: {
            required: "请输入手机号",
            number:"输入必须为数字",
            maxlength: "需11位",
           minlength: "需11位"
            
          },
            home_id: {
            required: "请输入家庭编号",
            number:"输入必须为数字",
           maxlength: "必须4位",
            minlength: "必须4位"
            }
          },
    });
});
</script>
<style>
.error{
    position:absolute; 
    color:pink;
    height:5px;
    width:100px;
    right:-100px;
    font-size:10px;
}
.am-form-group{
    position:relative;
    height:40px;
}
.form-input{
    position:absolute; 
    height:40px;
    width:100%;
    left:0; 
}
</style>
  
  <body data-type="register">

  <div class="am-g myapp-login">
    <div class="myapp-login-logo-block  tpl-login-max">
        <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                SmartHome<span> Register</span> <i class="am-icon-skyatlas"></i>
                
            </div>
        </div>

        <div class="login-font">
            <i>Log In </i> or <span> Sign Up</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
             <form id="userRegisterForm" action="userregister.action" method="post" class="am-form">
                <fieldset>
                    <div class="am-form-group">
                         <input type="text" class="form-input" name="username" id="doc-ipt-email-1" placeholder="主人，输个名字嘛~">
                    </div>
                    <div class="am-form-group">
                        <input type="password" class="form-input" name="password" id="doc-ipt-pwd-1" placeholder="还有密码咩(ง •_•)ง">
                    </div>
                    <div class="am-form-group">
                        <input type="text" class="form-input" name="id_card" id="doc-ipt-id-1" placeholder="请输入身份证号码">
                    </div>
                    <div class="am-form-group">
                        <input type="text" class="form-input" name="telephone"id="doc-ipt-tel-1" placeholder="请输入手机号码">
                    </div>
                    <div class="am-form-group">
                        <input type="text" class="form-input" name="home_id" id="doc-ipt-home-1" placeholder="请输入家庭编号">
                    </div>
                    <p><button type="submit" class="am-btn am-btn-default">完成</button></p>
                </fieldset>
            </form>
        </div>
    </div>
</div>

 
  <script src="static/js/amazeui.min.js"></script>
  <script src="static/js/app.js"></script>
</body>
</html>
