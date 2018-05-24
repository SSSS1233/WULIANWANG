<%--
  Created by IntelliJ IDEA.
  User: SUBING
  Date: 2018/5/22
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>湿度采集</title>
    <script language="javascript" type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <script language="javascript" type="text/javascript" src="../js/highcharts.js"></script>
    <script language="javascript" type="text/javascript" src="../js/exporting.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            var stack=[];
            function f1(){
                $.ajax({
                        url: "/JSP/look.do",
                        type: "get",
                        data: "",
                        dataType: "json",
                        success: function f(data) {
                           //  alert(data.hum)
                            for(var obj in data.hum){

                                var v=data.hum[obj].value;
                                //console.log(v)
                                stack.push(v);
                            }

                        }
                    }
                )
            }
            // var t1=setInterval(f1,2000);
          console.log(stack)

            Highcharts.setOptions({
                global: {
                    useUTC: false
                }
            });
            var chart;
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    type: 'spline',
                    marginRight: 10,
                    events: {
                        load: function() {
                            // set up the updating of the chart each second
                            var series = this.series[0];
                            setInterval(function() {
                                f1();
                                var x = (new Date()).getTime();// current time
                                //y = Math.random();
                                var y=stack.pop();

                                series.addPoint([x, y], true, true);
                            }, 500);
                        }
                    }
                },
                title: {
                    text: '<b>湿度采集</b>'
                },
                xAxis: {
                    type: 'datetime',
                    tickPixelInterval: 150
                },
                yAxis: {
                    title: {
                        text: '单位：%RH'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                            Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) +'<br/>'+
                            Highcharts.numberFormat(this.y, 2);
                    }
                },
                legend: {
                    enabled: false
                },
                exporting: {
                    enabled: false
                },
                series: [{
                    name: 'Hum data',
                    data: (function() {
                        // generate an array of random data
                        var data = [],
                            time = (new Date()).getTime(),
                            i;

                        for (i = -19; i <= 0; i++) {
                            data.push({
                                x: time + i * 1000,
                                y: Math.random()
                            });
                        }
                        return data;
                    })()
                }]
            });
        });
    </script>
</head>
<body>

<div id="container" style="width: 800px;height: 400px"></div>
</body>
</html>
