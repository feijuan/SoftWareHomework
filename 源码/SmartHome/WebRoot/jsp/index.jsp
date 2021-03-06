<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SmartHome User</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="static/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/css/admin.css">
    <link rel="stylesheet" href="static/css/app.css">
    <script src="static/js/echarts.min.js"></script>
     <style>  
        
        #iframeContent{  
            height:87.5%;
            width:87%;
            /*margin:30px 0px 0px 10px;!*设置元素跟其他元素的距离为20像素*!*/
            margin:10px 10px 0px 10px;
            float:left;
        }  
    </style>  
</head>

<body data-type="index">


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo">
                <img src="static/img/logo.png" alt="">
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">5</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-success">5</span> 条提醒</h3><a href="###">全部</a></li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span> 【预览模块】移动端 查看时 手机、电脑框隐藏。</a>
                            <span class="tpl-dropdown-list-fr">3小时前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 移动端，导航条下边距处理</a>
                            <span class="tpl-dropdown-list-fr">15分钟前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 追加统计代码</a>
                            <span class="tpl-dropdown-list-fr">2天前</span>
                        </li>
                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">9</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-danger">9</span> 条新消息</h3><a href="###">全部</a></li>
                        <li>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="static/img/user02.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> 尹子轩</span>
                                <span class="tpl-dropdown-content-time">10分钟前 </span>
                                </span>
                                <span class="tpl-dropdown-content-font"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </span>
                            </a>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="static/img/user03.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> Steam </span>
                                <span class="tpl-dropdown-content-time">18分钟前</span>
                                </span>
                                <span class="tpl-dropdown-content-font"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </span>
                            </a>
                        </li>

                    </ul>
                </li>      
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">尹子轩</span><span class="tpl-header-list-user-ico"> <img src="static/img/user01.png"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="userInforShow.action" target="iframeContent"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                        <li><a href="userLogin.jsp"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>
    <div class="tpl-page-container tpl-page-header-fixed">
        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                功能  列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                     <li class="tpl-left-nav-item">
                       <!--  <a href="index.jsp" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>个人信息修改/用户登入</span>
                        </a> -->
                         <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-home"></i>
                            <span>我的面板</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a target="iframeContent" href="userInforShow.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>信息显示</span>          
                                </a>
                                <a target="iframeContent" href="jsp/userInforChange.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>密码修改</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                   <li class="tpl-left-nav-item">
                       <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>成员管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a target="iframeContent" href="memberInforShow.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>成员显示</span> 
                                </a>
                                <a target="iframeContent" href="memberInforCheck.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>成员验证</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                     <li class="tpl-left-nav-item">
                       <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>数据管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a target="iframeContent" href="jsp/dataQuery.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>数据查询</span>
                                
                                </a>
                                <a target="iframeContent" href="sensorManageList.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>数据显示</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                     <li class="tpl-left-nav-item">
                       <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>传感器管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a target="iframeContent" href="jsp/sensorManageForm.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>传感器列表</span>
                                </a>

                                <a target="iframeContent" href="sensorStatusShow.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>状态显示</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>安全管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a target="iframeContent" href="jsp/videoSurveillance.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>家庭监控</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a target="iframeContent" href="deviceStatus.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>设备状态</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i >
                                </a>
                                    <a target="iframeContent" href="jsp/abnormalinformation.jsp">
                                        <i class="am-icon-angle-right"></i>
                                        <span>异常信息</span>
                                        <i class="tpl-left-nav-content tpl-badge-primary">5</i>
                                 </a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="userLogin.jsp" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-gear am-icon-spin"></i>
                            <span>退出</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
       <div class="tpl-content-wrapper">
	    <iframe id="iframeContent" name="iframeContent" frameborder="0" src="jsp/welcome.jsp"></iframe> 
	    </div> 
    </div>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/amazeui.min.js"></script>
    <script src="static/js/iscroll.js"></script>
    <script src="static/js/app.js"></script>
</body>

</html>