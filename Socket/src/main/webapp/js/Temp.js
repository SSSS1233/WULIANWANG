/**
 * Created by Administrator on 2018/5/24.
 */
$(document).ready(function() {
    var myChart = echarts.init(document.getElementById('Temp'));
    var stack = [];

    function f1() {
        $.ajax({
                url: "/JSP/selectTemp",
                type: "get",
                data: "",
                dataType: "json",
                success: function f(data) {
                    //  alert(data.hum)
                    /*for (var obj in data.hum) {

                        var v = data.hum[obj].value;
                        //console.log(v)
                        stack.push(v);
                        //randomData();
                    }*/
                   // console.log(data);
                    stack.push(data.temp);

                }
            }
        )
    }
    // console.log(stack);
    var hum = stack.pop();
    //  console.log(hum);
    function randomData() {
        //  console.log(hum)
        now = new Date(+now + oneDay);
        value = value + Math.random() * 21 - 10;
        return {
            name: now.toString(),
            value: [
                [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
                Math.round(hum)
            ]
        }
    }

    var data = [];
    var now = +new Date(1997, 9, 3);
    var oneDay = 24 * 3600 * 1000;
    var value = Math.random() * 1000;
    for (var i = 0; i < 1000; i++) {
        data.push(randomData());
    }

    option = {
        title: {
            text: '温度采集'
        },
        tooltip: {
            trigger: 'axis',
            formatter: function (params) {
                params = params[0];
                var date = new Date(params.name);
                return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
            },
            axisPointer: {
                animation: false
            }
        },
        xAxis: {
            type: 'time',
            splitLine: {
                show: false
            }
        },
        yAxis: {
            type: 'value',
            boundaryGap: [0, '100%'],
            splitLine: {
                show: false
            }
        },
        series: [{
            name: '模拟数据',
            type: 'line',
            showSymbol: false,
            hoverAnimation: false,
            data: data
        }]
    };

    setInterval(function () {
        f1();
        hum=stack.pop();
        console.log(hum)
        for (var i = 0; i < 5; i++) {
            data.shift();


            data.push(randomData());
        }

        myChart.setOption({
            series: [{
                data: data
            }]
        });
    }, 1000);
    myChart.setOption(option);
})