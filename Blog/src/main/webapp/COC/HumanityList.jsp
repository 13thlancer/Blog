<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	HttpSession s = request.getSession();
	String username=(String)s.getAttribute("username");
	String openid=(String)s.getAttribute("openid");
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
<title>人文分享</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showArticle()">
<div class="layout">
	<div class="header">
		<h4 id="tname"></h4>
		<div class="return"  onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="share_list bg_f0">
		<div class="ui_search">
			<form action="" method="post">
				<input type="text" class="txt" name="" id="" value="" placeholder="搜索" />
				<input type="submit" class="submit" value=""/>
			</form>
        </div>
		
		<ul id="list">
			<!-- <li>
				<div class="bd">
					<div class="img">
						<img src="imgs/wz_img26.jpg"/>
					</div>
					<div class="txt">
						<h4>既有瓜果飘香的原野,又有海市蜃楼的幻景</h4>
						<p>集中国自然地理和人文地理之大成的一条钢铁运输线.兰新铁路所经过"的一条铁路。</p>
					</div>
				</div>
				<div class="ft">
					<div class="l">	
						<img src="imgs/wz_img29.jpg"/>
						<div class="tx">
							<h5>刘文</h5>
							<h6>12：30PM</h6>
						</div>
					</div>
					<div class="r">
						<dl>
							<dt>45</dt>
							<dd>23</dd>
						</dl>
					</div>
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


function showArticle(){
	var postdata={mtype:r[2]};
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showArticleBytype",
		data:postdata,
		dataType:"json",
		error:function(){
		},
		success:function(data){
			document.getElementById("tname").innerHTML  = data[0].mtype[0].name;

			for(i=0;i<data.length;i++){
			var title = data[i].title;
			var picpath = data[i].titlepicpath;
			var content = data[i].content.substr(0, 50);
			var type = data[i].mtype[0].name;
			var time = data[i].createTime;
			var id = data[i].articleid;
			var reacttype = data[i].react[0].reacttype;
			var reactorid = data[i].react[0].reactorid;
			
			var html ="<li><div class='bd'><div class='img'><img src='"+picpath+"'/></div><div onclick=location.href='Detail.jsp?id="+id+"' class='txt'>"
			html +="<h4>"+title+"</h4><p>"+content+"</p></div></div><div class='ft'><div class='l'>"
			html +="<div class='tx'><h6>"+ time+"</h6></div></div>"
			html +="<div class='r'><dl><dt id="+id+" onclick=\"zan('"+id+"')\"><span id='s"+id+"' style='margin-left:5px;'>"+ReplyCount(id)[1]+"</span></dt><dd onclick=location.href='Reply.jsp?id="+id+"'>"+ReplyCount(id)[0]+"</dd></dl></div></div></li>"									
			
			$('#list').append(html);
	
			if(reacttype == 2 && reactorid=="<%=openid%>"){
				$("#"+id+"").css("background","url(imgs/wz_52_a.png) no-repeat left center");
				$("#"+id+"").css("background-size","15px 15px;");
				}
			}
			checkzan();
		}
	})
}

function checkzan(){
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showArticleZan",
		dataType:"json",
		error:function(){
		},
		success:function(data){
			for(i=0;i<data.length;i++){
			var id = data[i].articleid;
			var reacttype = data[i].react[0].reacttype;
			var reactorid = data[i].react[0].reactorid;
				$("#"+id+"").css("background","url(imgs/wz_52_a.png) no-repeat left center");
				$("#"+id+"").css("background-size","15px 15px;");
			}
		}
	})
	
}

function ReplyCount(id){
	  var postdata={id:id};
	  var count = 0;
	  var zancount = 0;
	  var arr = new Array(2);
	 $.ajax({
			type:"POST",
			url:"<%=basePath%>ArticleController/showDetail",
			async:false,
			data:postdata,
			success:function(data){
				var articleid = data.articleid;
				arr[0] = data.commentcount;
				arr[1] = data.zancount;
				}
		  })
		  return arr;
}

function zan(id){
	
	  var postdata={id:id}
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Zan",
			async:false,
			data:postdata,
			success:function(data){
				/* location.reload(); */
				
			$("#"+data.articleid+"").css("background","url(imgs/wz_52_a.png) no-repeat left center");
			$("#s"+data.articleid+"").html(data.zanCount);
				}
		  })
}
</script>

</body>
</html>

