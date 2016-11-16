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
					经济类
				</li>
				<li id="list2" class="n2">
					招商引资
				</li>
				<li id="list3" class="n3">
					组织活动
				</li>
				<li id="list4" class="n4">
					项目合作
				</li>
			</ul>
		</div>
		
		<div class="bd">
			<ul id="list1">
				<li>
					<div class="img">
						<img src="imgs/wz_img40.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img41.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img42.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img43.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img44.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list2">
				<li>
					<div class="img">
						<img src="imgs/wz_img40.jpg"/>
					</div>
					<div class="txt">
						<h4>2 8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img41.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img42.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img43.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img44.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list3">
				<li>
					<div class="img">
						<img src="imgs/wz_img40.jpg"/>
					</div>
					<div class="txt">
						<h4>3 8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img41.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img42.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img43.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img44.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul id="list4">
				<li>
					<div class="img">
						<img src="imgs/wz_img40.jpg"/>
					</div>
					<div class="txt">
						<h4>4 8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img41.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img42.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img43.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
				<li>
					<div class="img">
						<img src="imgs/wz_img44.jpg"/>
					</div>
					<div class="txt">
						<h4>8月22日，西安市公安局警方通报，</h4>
						<p>西安破获近年最大制造假币案两清涧男子网上案两清涧男子上涧男子网上案两清......</p>
						<span>2016-08-11</span>
					</div>
				</li>
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
		url:"<%=basePath%>ArticleController/showArticle",
		dataType:"json",
		error:function(){
		},
		success:function(data){
			/* $("ul").children("li").remove();
			var j= 1; */
			/* var ul = "<ul class='slides' id='slide'></ul>"
				$('#slider').append(ul) */
			for(i=0;i<data.length;i++){
			var title = data[i].title;
			var picpath = data[i].titlepicpath;
			var content = data[i].content;
			var type = data[i].mtype[0].name;
			var time = data[i].createTime;
			var id = data[i].articleid;
			var num = data[i].mtype[0].num;
				var html = "<li><a href='Detail.jsp?id="+id+"'><div class='img'><img src='"+picpath+"'/></div><div class='txt'> <h4>"+title+"</h4>"
				html += "<div class='sub'><h5>"+type+"</h5><h6>"+time+"</h6></div></div></a></li>"
				
				if(num==41){
					$('#list1').append(html);	
				}else if(num==42){
					$('#list2').append(html);	
				}else if(num==43){
					$('#list3').append(html);	
				}else if(num == 44){
					$('#list4').append(html);	
				}
			}
		}	
	})
}
</script>
</body>
</html>

