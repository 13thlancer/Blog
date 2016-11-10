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
<title>通讯录</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showList()">
<div class="layout bg_f0">
	<div class="header">
		<h4>通讯录</h4>
		<div class="return">
			
		</div>
	</div>
	
	<div class="address_book ">
		<div class="hd">
			<ul>
				<li class="n1" onclick="window.location.href='ZZJG.jsp'">
					<h4>组织架构</h4>
					<em></em>
				</li>
				<li class="n2">
					<h4>重要群组</h4>
					<em></em>
				</li>
				<li class="n3">
					<h4>常用联系人</h4>
					<em></em>
				</li>
			</ul>
		</div>
		<div class="bd">
			<ul id="list">
				<!-- <li>
					<div class="img">
						<img src="imgs/wz_img30.jpg"/>
					</div>
					<h4>罗振林—会长</h4>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img31.jpg"/>
					</div>
					<h4>罗振林—会长</h4>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img32.jpg"/>
					</div>
					<h4>罗振林—会长</h4>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img33.jpg"/>
					</div>
					<h4>罗振林—会长</h4>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img34.jpg"/>
					</div>
					<h4>罗振林—会长</h4>
				</li> -->
			</ul>
		</div>
		
	</div>
	
	
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>



<script type="text/javascript">

function showList(){
	$.ajax({
		type:"post",
		url:"<%=basePath%>PeopleController/showPeople",
		dataType:"json",
		error:function(){
		},
		success:function(data){
			for(i=0;i<data.length;i++){
			var id = data[i].id;
			var picpath = data[i].picpath;
			var name = data[i].name;
			var nativeplace = data[i].nativeplace;
			var position = data[i].position;
			var introduce = data[i].introduce;
			var orgid = data[i].orgid;
			var html="<li  onclick=location.href='PersonInfo.jsp?id="+id+"'><div class='img'><img src='"+picpath+"'/></div><h4>"+name+"—"+orgid+"</h4></li>"
				$('#list').append(html);
			}
		}
	})
}


</script>

</body>
</html>

