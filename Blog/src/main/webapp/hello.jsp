<%@ page language="java" contentType="text/html; charset = UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <title>轻应用演示</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width,initial-scale=0.0,user-scalable=no,minimum-scale=1.0,maximum-scale=1.0"/>
   <script src="jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
   <script src="jQuery/sha1.js" type="text/javascript"></script>
    <script src="jQuery/core-min.js" type="text/javascript"></script>
     <script src="jQuery/light-app.js" type="text/javascript"></script>
    
<script src="http://do.yunzhijia.com/pub/js/qingjs.js"></script>
   
 </head>

<body>
<button onclick="gettoken()">获得token</button>
<button onclick="getcontext()">获得context</button>
<button onclick="getpersoninfo()">获得用户信息</button>
<h3>获得的access_token</h3>
<div id='tk'>
   
</div>

<h3>获得的上下文</h3>
<div id='ct'>
   
</div>

<script type="text/javascript">

var ticket=getUrlParam('ticket'),token;

function generateRandomString() {
     return (Math.random().toString(36).substr(2));
}
	
// 使用CORS跨域认证
function gettoken(){
     var timestamp = new Date().getTime();
     var nonce = encodeURIComponent(generateRandomString());
     var appid = encodeURIComponent("500000128");
     var appSecret = "666";
     var version = "1.1";
     var array = new Array(version,timestamp, nonce, appid, appSecret);
     array.sort();
			
     var str = array.join("");
     var sign = encodeURIComponent(CryptoJS.SHA1(str).toString());
			
     var authorization = "OpenAuth2 version=\"" + version + "\", appid=\"" + appid + "\", timestamp=" + timestamp + ", nonce=\"" + nonce + "\", sign=\"" + sign + "\"";
		    
     var xhr = new XMLHttpRequest();
     xhr.onreadystatechange = function() {
           console.log(xhr.readyState);
           if(xhr.readyState == 4) {
	        if(xhr.status == 200 || xhr.status == 304) {
		     var resp = JSON.parse(xhr.responseText);
		     $('#tk').html(JSON.stringify(resp));
                     if(resp != undefined && resp.success != undefined && resp.success && resp.data != undefined && resp.data.access_token != undefined ) {
                            token = resp.data.access_token;
                     }
	        }
            }
     };
     
     var url = "http://do.yunzhijia.com/openauth2/api/appAuth2";
     xhr.open("POST", url, false);
     xhr.setRequestHeader("authorization", authorization);
     xhr.send(null);
}

function getcontext(){
    $.ajax({
        type: "GET",
        dataType:"JSON", 
        data:{
          ticket:ticket,
          "access_token":token
        },
        url: "http://do.yunzhijia.com/openauth2/api/getcontext"
    }).done(function(ok) {
        
       $('#ct').html('用户:'+ok.username+',企业:'+ok.eid)
       $('#ct').html(JSON.stringify(ok))
			alert(JSON.stringify(ok));
   
    }).fail(function(a) {
       
        alert(a.responseText)


    })
}

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
    	   alert(desc)
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
       }
               } else { 
            	   alert("返回失败！"); 
               }
		});
	window.location.href="COC/NewsList.jsp";

}

//获取url中的参数
function getUrlParam(name) {
  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
  var r = window.location.search.substr(1).match(reg);  //匹配目标参数
  if (r != null) return unescape(r[2]); return null; //返回参数值
}    
</script>

</body>
</html>