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
<title>劳动争议</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showLawyer()">
<div class="layout bg_f0">
	<div class="header">
		<h4 id="tname"></h4>
		<div class="return" onclick="history.go(-1)">
			
		</div>
	</div>
	
<div class="labor_list">
		<ul id="list">
			<!-- <li>
				<div class="hd">
					<div class="avatar">
						<img src="imgs/wz_img23.jpg"/>
					</div>
					<div class="txt">
						<h4>周洪波律师</h4>
						<h5>咨询手机：186-8672-9300</h5>
					</div>
				</div>
				
				<div class="bd">
					我是周红波律师，关于婚姻家庭、刑事辩护、工伤赔偿、交通事故、侵权纠纷、债权债务等等诉讼及非诉讼法律事务，问我吧！
				</div>
				
				<div class="ft">				
					<a href="#" class="btn">在线咨询</a>
                    <a href="#" class="btn">详细介绍</a>
                    <a href="#" class="btn btn2">关注</a>
				</div>
			</li>
			<li>
				<div class="hd">
					<div class="avatar">
						<img src="imgs/wz_img24.jpg"/>
					</div>
					<div class="txt">
						<h4>周洪波律师</h4>
						<h5>咨询手机：186-8672-9300</h5>
					</div>
				</div>
				
				<div class="bd">
					我是周红波律师，关于婚姻家庭、刑事辩护、工伤赔偿、交通事故、侵权纠纷、债权债务等等诉讼及非诉讼法律事务，问我吧！
				</div>
				
				<div class="ft">				
					<a href="#" class="btn">在线咨询</a>
                    <a href="#" class="btn">详细介绍</a>
                    <a href="#" class="btn btn2">关注</a>
				</div>
			</li>
			<li>
				<div class="hd">
					<div class="avatar">
						<img src="imgs/wz_img25.jpg"/>
					</div>
					<div class="txt">
						<h4>周洪波律师</h4>
						<h5>咨询手机：186-8672-9300</h5>
					</div>
				</div>
				
				<div class="bd">
					我是周红波律师，关于婚姻家庭、刑事辩护、工伤赔偿、交通事故、侵权纠纷、债权债务等等诉讼及非诉讼法律事务，问我吧！
				</div>
				
				<div class="ft">				
					<a href="#" class="btn">在线咨询</a>
                    <a href="#" class="btn">详细介绍</a>
                    <a href="#" class="btn btn2">关注</a>
				</div>
			</li> -->
		</ul>
	</div>
	
</div><!--loyout结束-->

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script type="text/javascript">
var reg = new RegExp("(^|&)mtype=([^&]*)(&|$)","i");
var r = window.location.search.substr(1).match(reg);

function showLawyer(){
	var postdata={mtype:r[2]};
	$.ajax({
		type:"post",
		url:"<%=basePath%>LawyerController/showLawyer",
		data:postdata,
		dataType:"json",
		error:function(){
		},
		success:function(data){
			document.getElementById("tname").innerHTML  = data[0].mtype[0].name;

			for(i=0;i<data.length;i++){
			var lawyername = data[i].lawyername;
			var picpath = data[i].picpath;
			var introduce = data[i].introduce;
			var type = data[i].type;
			var telphone = data[i].phone;
			var id = data[i].lawyerid;
			
			var html = "<li><div class='hd'><div class='avatar'><img src='"+picpath+"'/></div><div class='txt'><h4>"+lawyername+"律师</h4><h5>咨询手机："+telphone+"</h5></div></div>"
		    html += "<div class='bd'>"+introduce+"</div><div class='ft'><a href='ZXZX.jsp' class='btn'>在线咨询</a><a href='#' class='btn'>详细介绍</a><a href='#' class='btn btn2'>关注</a></div></li>"
			$('#list').append(html);						
			}
		}
	})
}
</script>
</body>
</html>

