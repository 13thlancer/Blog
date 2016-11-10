<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>特色美食</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body>
<div class="layout">
	<div class="header">
		<h4>特色美食</h4>
		<div class="return"  onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="delicious_food">
		<div class="img">
			<img src="imgs/wz_img52.jpg"/>
		</div>
		<div class="txt">
			<h2>东安子鸡又叫东安鸡、官保鸡，是一道地方传统名菜</h2>
			<span>2016-09-04 5:30PM</span>
			
			<p>制作步骤大致为：将鸡宰杀后放入汤锅内煮，七成熟时捞出待凉，切成小长条。炒锅放油烧至八成热，下鸡条、姜丝、醋、花椒末等煸炒，再放鲜肉汤焖至汤汁收干，放葱段、麻油等，出锅装盘即成。</p>
		    <p>东安子鸡成菜呈红白绿黄四色，鸡肉肥嫩，味道酸辣鲜香。此菜曾入选2010年上海世博会四大传统湘菜名录。</p>
		    <p>1.东安县芦洪市镇出生的鸡，鸡腿小，胸大而肥。选用生长期1年以内的子鸡最好。</p>
		    <p>2.煮鸡的时间不宜过长，以腿部能插进筷子、拨出无血水为准。</p>
		    <p>3.鸡从脊背一开两半再去骨，去骨时先去身骨再去腿骨，刀一定紧贴骨头进刀，注意保持鸡形完整。</p>
		    <p>4.勾芡要少而匀，原料抱汁即可。[8] </p>
		</div>
	</div>
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
 
  <script type="text/javascript">
  var reg = new RegExp("(^|&)id=([^&]*)(&|$)","i");
  var r = window.location.search.substr(1).match(reg);
  
  function showDetail(){
	  alert(window.location)
	  var postdata={id:r[2]}
	  $.ajax({
		type:"POST",
		url:"<%=basePath%>ArticleController/showDetail",
		async:false,
		data:postdata,
		success:function(data){
			var articleid = data.articleid;
 			document.getElementById("title").innerText=data.title;
			document.getElementById("date").innerText=data.createtime;
			document.getElementById("content").innerHTML=data.content;
			var count = data.commentcount;
			var zancount = data.zancount;
			var html = "<input id='input' type='text' style='height:23px;margin-top:6px;margin-left:20px;width:65%;' onclick='showComment();'>"
			html += "<a href='Comment.jsp?id="+articleid+"'>评论"+count+"</a>"
			html +="<a onclick=zan("+articleid+")>点赞"+zancount+"</a>"
			$('#footer').append(html);
			}
	  })
  }
  
  function zan(id){
	  var postdata={id:id}
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Zan",
			async:false,
			data:postdata,
			success:function(data){
				location.reload();
			
				}
		  })
  }
  
  function showComment(){
	  window.location.href="Comment.jsp?id="+r[2]+"";
  }
</script> 
</body>
</html>

