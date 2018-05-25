<%@ page language="java" isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>物联网大实验</title>

    <link rel="stylesheet" type="text/css" href="../style/global.css">
    <link rel="stylesheet" type="text/css" href="../style/style.css">

    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="../js/index.js"></script>
    <script type="text/javascript" src="../js/echarts.js"></script>
    <script type="text/javascript" src="../js/Hum.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Temp.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Smoke.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../js/Light.js" charset="UTF-8"></script>
</head>
<body>
<!-- S-head部分 -->
<div class="head">
    物联网大实验
</div>
<!-- E-head部分 -->

<!-- S-左侧导航部分 -->
<!-- E-左侧导航部分 -->

<div class="nave">
    <ul>
        <li class="current">温度</li>
        <li>湿度</li>
        <li>光照</li>
        <li>酒精</li>
        <%--<li>菜单5</li>
        <li>菜单6</li>
        <li>菜单7</li>--%>
    </ul>
</div>
<!-- S-主要部分 -->
<div class="main_box">
    <div class="page1" id="Temp"></div>
    <div class="page2" id="Hum"></div>
    <div class="page3" id="Light"></div>
    <div class="page4" id="Smoke"></div>
   <%-- <div class="page5">内容5</div>
    <div class="page6">内容6</div>
    <div class="page7">内容7</div>--%>
    <p class="fotter"></p>
</div>
<!-- E-主要部分 -->

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>
