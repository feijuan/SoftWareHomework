<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>
<title >登录界面</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="../static/js/jquery-1.7.2.js"></script> 
<script src="../static/js/jquery.validate.min.js"></script>
<link rel="stylesheet" href="../static/login/bootstrap.min.css" />
<link rel="stylesheet" href="../static/login/css/camera.css" />
<link rel="stylesheet" href="../static/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="../static/login/matrix-login.css" /> 
<link rel="stylesheet" href="../static/login/font-awesome.css" />

<script>
$.validator.setDefaults({
    submitHandler: function(form) {
     form.submit();
    }
});
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#loginForm").validate({
        rules: {
        	loginname: {
            required: true,
            minlength: 2
          },
          password: {
            required: true,
            minlength: 5
          }
        },
        messages: {  
        	loginname: {
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
<style type="text/css">
    h7{font-size:30px;font-weight:600;text-shadow:0 1px 4px rgba(0,0,0,.2)}
    .main_input_box
    {
    position:relative;
    height:30px;
    }
    .error{
    position:absolute; 
    color:red;
    height:30px;
    width:100px;
    right:35px;

    }
	.form-input{
	    position:absolute; 
	    height:40px;
	    width:100%;
	    left:50px; 
	}
	#add-span{
	 position:absolute; 
        height:20px;
        width:60%;
        left:2px;
         
	}
}
  
</style>
</head>
<body>
	<div
		style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
		<div id="loginbox">
				<h4>智能家居系统</h4>
			<form  method="post" name="loginForm"
				id="loginForm" action="userlogin.action">
				<div class="control-group normal_text">
					<h3>	</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span id="add-span"class="add-on bg_lg">
							<i><img height="30" src="../static/login/user.png" /></i>
							</span><input type="text" name="loginname" id="loginname" class="form-input" value="" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span id="add-span" class="add-on bg_ly">
							<i><img height="30" src="../static/login/suo.png" /></i>
							</span><input type="password" name="password" id="password" class="form-input" placeholder="请输入密码" value="" />
						</div>
					</div>
				</div>
				<div class="form-actions">
					<div style="width:80%;padding-left:6%;">
						<span class="pull-right" style="padding-right:3%;"><a
							href="register.jsp" class="btn btn-success">注册</a></span>
					    <span style="padding-right:1%;"
							class="pull-right"><button type="submit"
							class="flip-link btn btn-info" id="to-recover">登录</button></span>
					</div>
				</div>
			</form>
			
		</div>
	</div>
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<div data-src="../static/login/images/banner_slide_01.jpg"></div>
			<div data-src="../static/login/images/banner_slide_02.jpg"></div>
			<div data-src="../static/login/images/banner_slide_03.jpg"></div>
		</div>
	</div>
	<!-- <script type="text/javascript">
	function add()
	{   if(check()){	
	    	document.getElementById("loginForm").submit();	}
	}
	function check() {
		var username=document.getElementById("loginname").value;
		if(username=="")
			{
			alert("用户名不能为空");
			return false;
			}
		var password=document.getElementById("password").value;
		if(password=="")
			{	
			alert("密码不为空");
			return false;
			}
		if(password.length<6)
		{
		alert("请输入6位密码");
		return false;
		}
		return true;
		}
</script> -->
	
	
	<script src="../static/js/bootstrap.min.js"></script>
	
	<script src="../static/login/js/jquery.easing.1.3.js"></script>
	<script src="../static/login/js/camera.min.js"></script>
	<script src="../static/login/js/templatemo_script.js"></script>
</body>

</html>