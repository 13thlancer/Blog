<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession s = request.getSession();
 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, height=device-height, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="">
<meta name="format-detection" content="telephone=no">
<title>湖南商会登录页</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body onload="getpersoninfo()">
<div class="layout">
	
	<div class="index">
		<div class="logo">
			<img src="imgs/wz_28.png"/>
			<h4>湖南省湖南商会</h4>
		</div>
		<div class="copyright">
			<h4>版权所有：湖北省湖南商会</h4>
			Copyright© 2007-2016  hbshnsh.com<br/>
			All Right Reserved
		</div>
	</div>
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>

<script src="../jQuery/light-app.js" type="text/javascript"></script>    
<script src="http://do.yunzhijia.com/pub/js/qingjs.js"></script>
<script type="text/javascript">

/* function jump(){
	window.setTimeout("window.location='Login.jsp'",200); 
} */
function getpersoninfo(){
	XuntongJSBridge.call('getPersonInfo', {}, function(result) {
        if (null != result && undefined != result) { 
                  /* ****  注意 start **** */
                  /* ****  由于在桌面端，实现JS-API方式不同，这里的回调返回值result是一个string **** */
                  /* ****  为确保result正常使用，建议在回调中添加如下代码 **** */
                  if (typeof result == 'string') {
                      result = JSON.parse(result);
                  }
                  /* ****  注意 end **** */
             var desc = "返回的数据:<p />" + JSON.stringify(result); 
             var success = String(result.success);
       if (success == "true") {
/*     	   alert(desc)
 * 
 */
 				var data = {
    					openid:result.data.openId,
    	   				name:result.data.name,
    	   				email:result.data.email,
    	   				photoUrl:result.data.photoUrl
    	   };
    		$.ajax({
    			type:"post",
    			url:"<%=basePath%>LoginController/LogBind",
    			dataType:"json",
    			data:data,
    			success:function(data){
    			}
    		})
    	   
       } else if (success == "false") {
 			alert(desc + "。<p/>返回失败！错误信息: " + result.error);
       } else {
    	   alert("返回有问题！");
               } /* else { 
            	   alert("返回失败！"); 
               } */
          		window.setTimeout("window.location='Login.jsp'",100); 
        	}
		});
	
}

</script>

</body>
</html>

