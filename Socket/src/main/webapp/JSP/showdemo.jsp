<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>纯CSS3超酷书架样式404页面动画特效</title>

	<link rel="stylesheet" href="../css/style1.css" />
	<script src="../js/jquery-1.9.1.min.js"></script>
	<script>
		function textFunction(){
			console.log("wait....");
        }
        var t = '';
        function f1() {
            $.ajax({
                    url: "/JSP/rfid",
                    type: "get",
                    data: "",
                    dataType: "json",
                    success: function f(data) {
                        console.log(data.type);
                        if (t != data.type) {
                            if (data.type == 'temp') {
                                // alert("PPP")
								///$("#font").innerText("检测到温度卡");
                                document.getElementById('ppp').innerHTML="检测到温度卡";
                                //setTimeout("textFunction()",3000);
                                window.open("http://localhost:8090/JSP/Temp.jsp");
                            } else if (data.type == 'smoke') {
                                //alert("LLL");
                                //$("#font").innerText="检测到酒精卡";
                                document.getElementById('ppp').innerHTML="检测到酒精卡";
                                //setTimeout("textFunction()",3000);
                                window.open("http://localhost:8090/JSP/Smoke.jsp");
                                // win.location.reload();
                            } else if (data.type == 'hum') {
                                //  alert("KKK")
                              //  $("#font").innerText="检测到湿度卡";
                                document.getElementById('ppp').innerHTML="检测到湿度卡";
                               // setTimeout("textFunction()",3000);
                                window.open("http://localhost:8090/JSP/Hum.jsp");
                            } else if (data.type == 'light') {
                                //alert("MMM");
                               // $("#font").innerText="检测到光照卡";
                                document.getElementById('ppp').innerHTML="检测到光照卡";
                              //  alert("检测到光照卡");
                                window.open("http://localhost:8090/JSP/Light.jsp");

                            }
                            t=data.type;
                        }


                        // stack.push(data.type)
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


<nav class="shelf">
	<a class="book home-page" href="Temp.jsp" target="_blank">温度</a>
	<a class="book about-us" href="Hum.jsp" target="_blank">湿度</a>
	<a class="book contact" href="Light.jsp" target="_blank">光照</a>
	<a class="book faq" href="Smoke.jsp" target="_blank">酒精</a>

	<span class="book not-found"></span>

	<span class="door left"></span>
	<span class="door right"></span>
</nav>
<%--<h1>Error 404</h1>--%>
<p id="ppp">等待刷卡中。。。</p>

</body>
</html>