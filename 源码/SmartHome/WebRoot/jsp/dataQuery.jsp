<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dataQuery.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <%@include file="head.jsp" %>
    <!-- <script type="text/javascript">
    $().ready(function() {
        $("#dataQueryForm").submit(function() {     
                $.ajax({
                    type: "POST",
                    url: "dataQuery.action",
                    data:  $("#dataQueryForm").serialize(),
                    success: function (data) {
                        window.location.href="404.jsp";
                    },
                    error: function(data) {
                        alert("error:"+data.responseText);
                     }
                });
        }
    );
    });
    </script> -->
    <style>  
        #dataContent{  
            height:60%;
            width:100%;
            /*margin:30px 0px 0px 10px;!*设置元素跟其他元素的距离为20像素*!*/
            margin:10px 10px 0px 10px;
            float:left;
        }  
    </style>
    <script src="/SmartHome/static/My97DatePicker/WdatePicker.js" type="text/javascript"></script>  
  </head>
  
  <body>
     <div align="center">
      <form id="dataQueryForm" action="dataQuery.action" method="post" target="dataContent" >
      <span>
                       开始时间：<input type="text" name="startTime" readonly="readonly" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'{%y-1}'})">
                       结束时间：<input type="text" name="endTime"  readonly="readonly" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'%y-%M-%d '})">
                        区域： <select name="areaData">
              <option value ="0" >全部</option>
			  <option value ="1" >卧室</option>
			  <option value ="2" >客厅</option>
			  <option value="3" >厨房</option>
             </select>
                        类型： <select name="typeData">
              <option value ="0" >全部</option>
              <option value ="1" >温度</option>
              <option value ="2" >湿度</option>
              <option value="3" >光照</option>
              <option value="4" >烟雾</option>
             </select>     
             <button type="submit"  class="am-btn am-btn-default" >查询</button>  
      </span>
      </form>
     </div>
     <div style="background-color:blue;height:1px;border:none;"></div>
    <!--  <iframe id="dataContent" name="dataContent" frameborder="0" ></iframe>  -->
  <iframe id="dataContent" name="dataContent"  ></iframe> 
  <script src="static/js/amazeui.min.js"></script>
  <script src="static/js/app.js"></script>
  </body>
</html>
