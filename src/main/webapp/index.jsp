<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>房屋租赁系统-商户版</title>
  <link rel="stylesheet" href="layui/css/layui.css" media="all">
  <script type="text/javascript" src="layui/layui.js"></script>
</head>
<body class="layui-layout-body">

<%
  if(session.getAttribute("username") == null) {
    String site = "/main.html";
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
  }
%>
	
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">房屋租赁系统-商户版</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          <%=session.getAttribute("username")%>
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">房产管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">我的房产</a></dd>
            <dd><a href="javascript:;">添加房产</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">租客管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">统计报表</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">租客订单</a></dd>
            <dd><a href="javascript:;">我的账本</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">反馈</a>
        </li>s
      </ul>
    </div>
  </div>
  
  <div id="main" class="layui-body">
    <!-- 内容主体区域 -->
    
  </div>
  
  <div class="layui-footer" >
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>

<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  var $ = layui.jquery;
  $("a").on('click',function(){
    const text = $(this).text();
    const main = $("#main");
    if(text === "租客管理"){
      main.find("#ifr").remove();
      main.append('<iframe src="renter/renterManagement.html" id="ifr" style="width:100%;height:100%"></iframe>');
    }else if(text === "租客订单"){
      main.find("#ifr").remove();
      main.append('<iframe src="statistics/orderManagement.html" id="ifr" style="width:100%;height:100%"></iframe>');
    }else if(text === "反馈"){
      main.find("#ifr").remove();
      main.append('<iframe src="feedback/UserFeedback.html" id="ifr" style="width:100%;height:100%"></iframe>')
    }else if(text === "我的帐本"){
      main.find("#ifr").remove();
      main.append('<iframe src="statistics/myLedger.html" id="ifr" style="width:100%;height:100%"></iframe>')
    }
  })
});
</script>
</body>
</html>