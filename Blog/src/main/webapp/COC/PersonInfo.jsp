<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
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
<title>会员信息</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showDetail()">
<div class="layout">
	<div class="header">
		<!--<h4>标准服务</h4>-->
		<div class="return"  onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="ui_avatar">
		<div class="avatar">
			<img src="" id="img"/>
			<h4 id="name"></h4>
		</div>
	</div>
	
	<div class="members">
		<div class="head" >
			 <ul  id="position">
				<!--<li>
					<h4>武汉兴开源电力工程有限公司</h4>
					<span>董事长</span>
				</li>
				<li>
					<h4>武汉银兆置业投资发展有限公司     </h4>
					<span>董事长</span>
				</li>
				<li>
					<h4>武汉森源驰新科技发展有限公司  </h4>
					<span>董事长</span>
				</li>-->
			</ul> 
		</div>
		<div class="body" id="introduce">
		</div>
	</div>
	
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script type="text/javascript">

function showDetail(){
	 var reg = new RegExp("(^|&)id=([^&]*)(&|$)","i");
	  var r = window.location.search.substr(1).match(reg);
	  var postdata={id:r[2]}
	$.ajax({
		type:"post",
		url:"<%=basePath%>PeopleController/showDetail",
		dataType:"json",
		data:postdata,
		success:function(data){
				document.getElementById("name").innerText=data[0].orgid+"  "+data[0].name+"  "+data[0].nativeplace;
				document.getElementById("introduce").innerText=data[0].introduce;
/* 				document.getElementById("position").innerHTML=data[0].position;
 *//* 				document.getElementById("nativeplace").innerText=data[0].nativeplace;
 */			/* 	document.getElementById("orgid").value=data[0].orgid; */
/* 				document.getElementById("position").innerText = data[0].position;
 */				document.getElementById("img").src = data[0].picpath;
			
 				var position = new Array();
 			 	position = data[0].position.split(";");
 			 	for(i=0;i<position.length;i++){
 			 		var html = "<li><h4>"+position[i].substring(0,position[i].length-3)+"</h4><span>"+position[i].substring(position[i].length-3);+"</span></li>"
 			 		$('#position').append(html);
 			 	}
		}
	})
}


</script> 
</body>
</html>

