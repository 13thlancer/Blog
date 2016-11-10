<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
HttpSession s = request.getSession();
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html>
<html class="h_nickname">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, height=device-height, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="">
<meta name="format-detection" content="telephone=no">
<title>我</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showDetail()">
<div class="layout bg_f0">
	<div class="header">
		<h4>我</h4>
		<div class="return">
			
		</div>
	</div>
	
	<div class="ui_avatar">
		<div class="avatar" id="info">
			<!-- <img id="img" src="imgs/wz_img1.jpg"/>
			<h4 id="name">胡菲</h4> -->
		</div>
	</div>
	
	<div class="my_body">
		<div class="navs">
			<ul>
				<li>圈子 </li>
				<li>粉丝<span>23</span> </li>
				<li>关注<span>23</span> </li>
			</ul>
		</div>
		<div class="lists">
			<ul>
				<li class="n1">
					<a href="#">
						<h4>编辑资料</h4>
						<em></em>
					</a>
				</li>
				<li class="n2">
					<a href="#">
						<h4>我的帖子</h4>
						<em></em>
					</a>
				</li>
				<li class="n3">
					<a href="#">
						<h4>我的消息</h4>
						<em></em>
					</a>
				</li>
				<li class="n4">
					<a href="#">
						<h4>我的收藏</h4>
						<em></em>
					</a>
				</li>
				<li class="n5">
					<a href="#">
						<h4>设置</h4>
						<em></em>
					</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">

function showDetail(){
	 var reg = new RegExp("(^|&)id=([^&]*)(&|$)","i");
	  var r = window.location.search.substr(1).match(reg);
	  alert(r);
	  var postdata={id:r[2]}
	$.ajax({
		type:"post",
		url:"<%=basePath%>PeopleController/showDetail",
		dataType:"json",
		data:postdata,
		success:function(data){
			
 			 		var html = "<img src='"+data.picpath+"'/><h4>"+data.name+"</h4>"
 			 		$('#info').append(html);
 			 	
		}
	})
}
</script> 

</body>
</html>

