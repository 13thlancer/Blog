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
<title>政企互联</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body>
<div class="layout bg_f0">
	<div class="header">
		<h4>政企互联</h4>
		<div class="return" onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="enterprise ">
		<div class="hd">
			<ul>
				<li class="n1 selected">					
					制造业
				</li>
				<li class="n2">
					农林牧业
				</li>
				<li class="n3">
					房产业
				</li>
				<li class="n4">
					其他
				</li>
			</ul>
		</div>
		
		<div class="bd">
			<ul id="list1">
				
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list2">
				
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list3">
				
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list4">
			
			</ul>
		</div>
	</div>
	
	
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script type="text/javascript">

function showArticle(){
	
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showArticleByPtype",
		dataType:"json",
		data:{ptype:50},
		error:function(){
		},
		success:function(data){
		
			for(i=0;i<data.length;i++){
			var title = data[i].title;
			var picpath = data[i].titlepicpath;
			var content = data[i].content;
			var type = data[i].mtype[0].name;
			var time = data[i].createTime;
			var id = data[i].articleid;
			var num = data[i].mtype[0].num;

			var html = "<li><div class='img'><img src='"+picpath+"'/></div><div class='txt'><h4>"+title+"</h4>"
			html += "<p>"+content.substring(0,40)+"</p><span>"+time+"</span></div></li>"
	
				if(num==51){
					$('#list1').append(html);	
				}else if(num==52){
					$('#list2').append(html);	
				}else if(num==53){
					$('#list3').append(html);	
				}else if(num==54){
					$('#list4').append(html);	
				}
			}
		}	
	})
}
</script>
</body>
</html>

