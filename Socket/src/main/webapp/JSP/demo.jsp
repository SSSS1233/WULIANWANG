<%--
  Created by IntelliJ IDEA.
  User: SUBING
  Date: 2018/5/23
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: SUBING
  Date: 2018/5/23
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="zh-CN">
<head>

    <style type="text/css">
        body{background:#e7e8e8;font-family:"微软雅黑";}
        .frame{width:880px;margin:0 auto;border:#ddd 1px solid;background:#fff;padding:10px;border-radius:10px;}
        .frame a{text-decoration:none;color:#0CF;}
        .frame a:hover{color:#09F;}
        .frame a.title{display:block;width:98%;background:#444;padding:8px 9px;color:#FFF;border-bottom:1px #222 solid;}
        .frame a.title:hover{background:#06D4EC;color:#FFF;}
        .footer p{color:#666;}
        .nav{padding:10px 0px 20px 0;border-bottom:1px dotted #999;}
        .nav a{color:#0CF;}
        .menu {width:530px;margin: 0 auto;}
        .menu .left{width:7px;height:43px;background:url("http://oos.feikk.com/blog/2017/div_demo_nav_bg_left_right.jpg") no-repeat left top;float:left;}
        .menu .center{height:43px;background:url("http://oos.feikk.com/blog/2017/div_demo_nav_bg_btn.jpg") repeat-x left top;float:left;line-height: 20px;}
        .menu .right{width:7px;height:43px;background:url("http://oos.feikk.com/blog/2017/div_demo_nav_bg_left_right.jpg") no-repeat left -43px;float:left;}
        .menu a:link,.menu a:visited{color:#fff;height:30px;background:url("http://oos.feikk.com/blog/2017/div_demo_nav_bg_btn.jpg") repeat-x left top;text-align:center;text-decoration:none;padding:10px 18px 0px 18px;}
        .menu a:hover,.menu a:active{color:#666;background-position:left -43px;}
        .menu .center a{display:block;float:left;}del,div.clear{height:0px;font-size:0px;line-height:0px;padding:0px;margin:0px;display:block;clear:both;overflow:hidden;}
        .menu a.txtcolor{color:#C0FF3E;}
        a#none{color:#666;}
    </style>

    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../js/echarts.js" ></script>
    <script type="text/javascript" src="../js/Hum.js"charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Temp.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Smoke.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Light.js" charset="UTF-8"></script>

    <title>数据采集</title>
</head>

<body>


<div style="height:410px;min-height:100px;margin:0 auto;" id="Temp"></div>
<div style="height:410px;min-height:100px;margin:0 auto;" id="Hum"></div>
<div style="height:410px;min-height:100px;margin:0 auto;" id="Light"></div>
<div style="height:410px;min-height:100px;margin:0 auto;" id="Smoke"></div>

</body>
</html>

