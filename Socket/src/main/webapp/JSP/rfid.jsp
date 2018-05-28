<%--
  Created by IntelliJ IDEA.
  User: SUBING
  Date: 2018/5/27
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-1.9.1.min.js"></script>
    <script>
        var temp = '';
        /**
         * 使用indexOf判断元素是否存在于数组中
         * @param {Object} arr 数组
         * @param {Object} value 元素值
         */
        function isInArray3(arr, value) {
            if (arr.indexOf && typeof(arr.indexOf) == 'function') {
                var index = arr.indexOf(value);
                if (index >= 0) {
                    return true;
                }
            }
            return false;
        }
        var stack = [];
        function f1() {
            $.ajax({
                    url: "/JSP/rfid",
                    type: "get",
                    data: "",
                    dataType: "json",
                    success: function f(data) {


                        console.log(data.type);
                        /* if(data.type=='temp'&&isInArray3(stack,"temp")==false)
                         {
                         // alert("PPP")
                         window.open("http://localhost:8090/JSP/Temp.jsp");
                         }else if(data.type=='smoke'&&isInArray3(stack,"smoke")==false)
                         {
                         //alert("LLL");
                         window.open("http://localhost:8090/JSP/Smoke.jsp");
                         // win.location.reload();
                         }else if(data.type=='hum'&&isInArray3(stack,"hum")==false)
                         {
                         //  alert("KKK")
                         window.open("http://localhost:8090/JSP/Hum.jsp");
                         }else if(data.type=='light'&&isInArray3(stack,"light")==false)
                         {
                         //alert("MMM");
                         window.open("http://localhost:8090/JSP/Light.jsp");

                         }*/
                        if (temp != data.type) {
                            if (data.type == 'temp') {
                                // alert("PPP")
                                window.open("http://localhost:8090/JSP/Temp.jsp");
                            } else if (data.type == 'smoke') {
                                //alert("LLL");
                                window.open("http://localhost:8090/JSP/Smoke.jsp");
                                // win.location.reload();
                            } else if (data.type == 'hum') {
                                //  alert("KKK")
                                window.open("http://localhost:8090/JSP/Hum.jsp");
                            } else if (data.type == 'light') {
                                //alert("MMM");
                                window.open("http://localhost:8090/JSP/Light.jsp");

                            }
                            temp=data.type;
                        }


                        stack.push(data.type)
                    }
                }
            )
        }
        setInterval(function () {
            f1();
        }, 1000);
    </script>
</head>
<body>

</body>
</html>
