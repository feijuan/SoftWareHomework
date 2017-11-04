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
    submitHandler: function(form) {
      $(form).submit();
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
         againpassword:{
            required: true,
            equalTo:"#doc-ipt-pwd-1"
          },
          id_card: {
            required: true,
            number:true,
            remote:{
             type:"POST",
             url:"jsp/CheckId.action",
             data:{
             idcard:function(){return $("#doc-ipt-id-1").val();}
             }
            },
            minlength:18,
            maxlength:18
          
          },
           telephone: {
            required: true,
            number:true,
            remote:{
             type:"POST",
             url:"jsp/CheckPhone.action",
             data:{
             telphone:function(){return $("#doc-ipt-tel-1").val();}
             }
            },
            minlength:11,
            maxlength:11  
          },
           home_id: {
            required: true,
            number:true,
            remote:{
             type:"POST",
             url:"jsp/CheckHomeId.action",
             data:{
             homeid:function(){return $("#doc-ipt-home-1").val();}
             }
            }
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
          againpassword:{
            required:"请确认密码",
            equalTo: "请再次输入相同的密码"
          },
          id_card: {
            required: "请输入身份证号",
            number:"输入必须为数字",
            remote:"身份证号已存在",
            minlength:"身份证号应为18位",
            maxlength:"身份证号应为18位"          
          },
            telephone: {
            required: "请输入手机号",
            number:"输入必须为数字",
            remote:"手机号已存在",
            maxlength: "需11位",
            minlength: "需11位"   
          },
            home_id: {
            required: "请输入家庭编号",
            number:"输入必须为数字",
            remote:"家庭号不存在"
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
            <i>用户 </i> <span> 注册</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
             <form id="userRegisterForm" action="jsp/userregister.action" method="post" class="am-form">
                <fieldset>
                    <div class="am-form-group">
                         <input type="text" class="form-input" name="username" id="doc-ipt-email-1" placeholder="主人，输个名字嘛~">
                    </div>
                    <div class="am-form-group">
                        <input type="password" class="form-input" name="password" id="doc-ipt-pwd-1" placeholder="还有密码咩(ง •_•)ง">
                    </div>
                     <div class="am-form-group">
                        <input type="password" class="form-input" name="againpassword" id="doc-ipt-pwd-2" placeholder="确认密码咩(ง •_•)ง">
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
