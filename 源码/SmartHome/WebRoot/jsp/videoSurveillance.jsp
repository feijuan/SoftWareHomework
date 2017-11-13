<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'videoSurveillance.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
        .jwplayer .jw-icon-barlogo-new:before {
            content: none;
        }
        .jw-icon-barlogo-new {
            background: url('http://cyberplayer.bcelive.com/icon/logo.png') no-repeat;
            background-position: center;
        }
    </style>

  </head>
  
 <body>
   <!--  <div id="playercontainer"></div>
<script type="text/javascript" src="player/cyberplayer.js"></script>
<script type="text/javascript">
    var player = cyberplayer("playercontainer").setup({
        width: 680,
        height: 448,
        file: "http://hk3xay0tn7h1cxpe44w.exp.bcelive.com/lss-hk3xaxrfgfcdem6b/live.m3u8", // <—hls直播地址
        autostart: true,
        stretching: "uniform",
        volume: 100,
        controls: true,
        hls: {
            reconnecttime: 5 // hls直播的重连次数
        },
        ak: "0508e68f564b405fa47772b72b07dbdc" // 公有云平台注册即可获得accessKey
    });
</script> -->

<div id="playercontainer"></div>
<script type="text/javascript" src="static/player/cyberplayer.js"></script>
<script type="text/javascript">
    var player = cyberplayer("playercontainer").setup({
        width: 680,
        height: 448,
        file: "rtmp://play.bcelive.com/live/lss-hk3xaxrfgfcdem6b", // <—rtmp直播地址
        autostart: true,
        stretching: "uniform",
        volume: 100,
        controls: true,
        rtmp: {
            reconnecttime: 5, // rtmp直播的重连次数
            bufferlength: 1 // 缓冲多少秒之后开始播放 默认1秒
        },
        ak: "0508e68f564b405fa47772b72b07dbdc" // 公有云平台注册即可获得accessKey
    });
</script>
<!-- <div id="playercontainer"></div>
<script type="text/javascript" src="player/cyberplayer.js"></script>
<script type="text/javascript">
    var player = cyberplayer("playercontainer").setup({
        width: 680,
        height: 448,
        file: "http://play.bcelive.com/live/lss-hk3xaxrfgfcdem6b.flv", // <—flv直播地址
        autostart: true,
        stretching: "uniform",
        volume: 100,
        controls: true,
        isLive: true, // 标明是否是直播
        ak: "0508e68f564b405fa47772b72b07dbdc" // 公有云平台注册即可获得accessKey
    });
</script> -->
</body>
</html>
