<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession s = request.getSession();
	String date = (String)s.getAttribute("date");
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
<title>评论回复</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showComment()">
<div class="layout">
	<div class="header">
		<h4>评论</h4>
		<div class="return">
			
		</div>
	</div>
	
	<div class="comments_reply">
		<div class="head">
			<form action="" method="post">
				<input type="text" class="txt" name="" id="comment" placeholder="说说你的看法" value="" />
				<input type="button" class="ui_btn" value="发表" onclick="docomment()"/>
			</form>
		</div>
		<div class="body">
			<div class="title">评论区 <em></em></div>
			<ul id="commentList">
				<!-- <li>
					<div class="avatar">
						<img src="imgs/wz_img53.jpg"/>
					</div>					
					<div class="hd">
						<h4>刘文</h4>
						<span>2016-09-05 12：30PM</span>
					</div>
					<div class="bd">
						既有瓜果飘香的原野,又有海市蜃楼的幻景.是集中国自然地理和人文地理之大成的一条钢铁运输线.兰新铁路所经过"
					</div>
					<div class="ft">
						<dl>							
							<dd>17</dd>
							<dt>123</dt>
						</dl>
					</div>
					<div class="sub">
						<form action="" method="post">
							<input type="text" name="" id="" placeholder="回复ta" class="txt" value="" />
							<input type="submit" class="ui_btn" value="发表"/>
						</form>
					</div>
				</li>
				<li>
					<div class="avatar">
						<img src="imgs/wz_img53.jpg"/>
					</div>					
					<div class="hd">
						<h4>刘文</h4>
						<span>2016-09-05 12：30PM</span>
					</div>
					<div class="bd">
						既有瓜果飘香的原野,又有海市蜃楼的幻景.是集中国自然地理和人文地理之大成的一条钢铁运输线.兰新铁路所经过"
					</div>
					<div class="ft">
						<dl>							
							<dd>17</dd>
							<dt>123</dt>
						</dl>
					</div>
					<div class="sub">
						<form action="" method="post">
							<input type="text" name="" id="" placeholder="回复ta" class="txt" value="" />
							<input type="submit" class="ui_btn" value="发表"/>
						</form>
					</div>
				</li>
				<li>
					<div class="avatar">
						<img src="imgs/wz_img53.jpg"/>
					</div>					
					<div class="hd">
						<h4>刘文</h4>
						<span>2016-09-05 12：30PM</span>
					</div>
					<div class="bd">
						既有瓜果飘香的原野,又有海市蜃楼的幻景.是集中国自然地理和人文地理之大成的一条钢铁运输线.兰新铁路所经过"
					</div>
					<div class="ft">
						<dl>							
							<dd>17</dd>
							<dt>123</dt>
						</dl>
					</div>
					<div class="sub">
						<form action="" method="post">
							<input type="text" name="" id="" placeholder="回复ta" class="txt" value="" />
							<input type="submit" class="ui_btn" value="发表"/>
						</form>
					</div>
				</li>
 -->			</ul>
		</div>		
	</div>
	
	
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script type="text/javascript">
  var reg = new RegExp("(^|&)id=([^&]*)(&|$)","i");
  var r = window.location.search.substr(1).match(reg);
  
  function showComment(){
	  var postdata={id:r[2]}
	  $.ajax({
		type:"POST",
		url:"<%=basePath%>ReactController/ShowComment",
		async:false,
		data:postdata,
		success:function(data){
			for(i=0;i<data.length;i++){
			
				var name = data[i].people[0].name;
				var picpath = data[i].people[0].picpath;
				var content = data[i].content;
				var date = data[i].reactdate;
				var id = data[i].id;
				var zancount = data[i].zanCount;
				
				var comment= "<li><div class='avatar'><img src='"+picpath+"'/></div><div class='hd'><h4>"+name+"</h4>"
				comment += "<span>"+date+"</span></div><div id='replylist"+id+"' class='bd'>"+content+"</div><div class='ft'><dl><dd onclick=\"showReply('"+id+"')\" style='font-size:2px;'></dd><dt id='"+id+"' onclick=\"zan('"+id+"')\"><span id='s"+id+"' style='font-size:15px;position:relative;top:6px;left:3px;'>"+zancount+"</span></dt></dl></div>"
				comment += "<div id='replay"+id+"' class='sub'><form method='post'><input  id='replycontent"+id+"' type='text' value='@"+name+":' class='txt'/><input type='button' onclick=\"reply('"+id+"')\" class='ui_btn' value='发表'/></form></div></li>"
						
				
				
			var html ="<div style='background:#ffffff;width:100%;height:auto; overflow:hidden;'>"
      			html +="<div id='title'><div style='float:left;width:40px;height:40px;margin-left:10px'><img style='border-radius:50px;width:100%;height:100%;' src='"+picpath+"'/></div>"
        		html +="<div style='margin-top:5px;margin-left:20%'><span style='font-size:14px; font-weight:bold;'>"+name+"</span><br>"
            	html +="<span style='font-size:12px;'>"+date+"</span></div></div>"	
           		html +="<div style='width:80%;margin-left: 65px;margin-top:5px;margin-right:auto;'><span style='width:100%;'>"+content+"</span></div>"
           		html +="<div id='replylist"+id+"'></div>"
      			html +="<div style='text-align:right;width:90%;margin-top:20px;'><button style='border:none;background:white' onclick=\"zan('"+id+"')\">点赞"+zancount+"</button><button  style='border:none;background:white' onclick=\"showReply('"+id+"')\">回复</button>"
      			html +="<div id='replay"+id+"' style='display:none;'><textarea id='replycontent"+id+"' style='margin-top:10px;margin-left:5%;width:90%;' rows='1' cols='10'>@"+name+":</textarea>"
      			html +="<button style='margin-left:80%'  onclick=\"reply('"+id+"')\">回复</button></div></div><hr style='width:90%;'></div>"
      			
      			$('#commentList').append(comment);
      			showReplyList(id);
			}
			checkzan();
		}
	  })  
  }
  
  function docomment(){
	  var postdata={id:r[2],
	  				content:document.getElementById("comment").value
	  }
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Comment",
			async:false,
			data:postdata,
			success:function(data){
				  window.location.href="Detail.jsp?id="+r[2]+"";
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
/* 				$("#"+data.articleid+"").attr('src','imgs/wz_52_a.png'); 
 */ 			$("#"+data.articleid+"").css("background","url(imgs/wz_52_a.png) no-repeat left center");
 				$("#s"+data.articleid+"").html(data.zanCount);			
				}
		  })
  }
  
  function showReply(id){
	  if(showdiv_display = document.getElementById("replay"+id+"").style.display=='none'){
	  		document.getElementById("replay"+id+"").style.display='block';
	  }else{

	  		document.getElementById("replay"+id+"").style.display='none';
	  }			
  }
	  
  function reply(id){
	  var postdata={id:id,
			  	content:document.getElementById("replycontent"+id+"").value
	  	}
	  
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Comment",
			async:false,
			data:postdata,
			success:function(data){
				location.reload();
				}
		  })
  }
  
  function showReplyList(id){
	  var postdata={id:id}
	  $.ajax({
		type:"POST",
		url:"<%=basePath%>ReactController/ShowComment",
		async:false,
		data:postdata,
		success:function(data){
			 for(j=0;j<data.length;j++){
				var name = data[j].people[0].name;
				var content = data[j].content;
				var date = data[j].reactdate;
				var sid = data[j].id;				
			 	
				
				var comment= "<div style='width:90%;margin-left:5%;background-color:#FAFAFA;' ><div  style='margin-left:5%;' class='hd'><h4>"+name+"</h4>"
				comment += "<span>"+date+"</span></div><div style='margin-left:5%;' class='bd'>"+content+"</div><div class='ft'><dl><dd onclick=\"showReply('"+sid+"')\"></dd></dl></div>"
				comment += "<div id='replay"+sid+"' class='sub'><form method='post'><input  id='replycontent"+sid+"' type='text' value='@"+name+":' class='txt'/><input type='button' onclick=\"rreply('"+sid+"','"+id+"')\" class='ui_btn' value='发表'/></form></div></div>"
				
				
			var html ="<div  style='background:#dddddd'><div id='title'><div style='margin-left:20%'><span style='font-size:14px; font-weight:bold;'>"+name+"</span>"
            	html +="<span style='font-size:12px;'>"+date+"</span></div></div>"	
           		html +="<div style='width:80%;margin-left: 65px;margin-top:5px;margin-right:auto;'><span style='width:100%;'>"+content+"</span>"
      			html +="<button  style='border:none;background:white' onclick=\"showReply('"+sid+"')\">回复</button>"
      			html +="<div id='replay"+sid+"' style='display:none;'><textarea id='replycontent"+sid+"' style='margin-top:10px;margin-left:5%;width:90%;' rows='1' cols='10'>@"+name+":</textarea>"
     			html +="<button style='margin-left:80%'  onclick=\"rreply('"+sid+"','"+id+"')\">回复</button></div></div></div>"
      			 
      			$("#replylist"+id+"").append(comment);
      		 	
			}
		}
	  })  
  }
  
  
  function rreply(sid,id){
	  var postdata={id:id,
			  	content:document.getElementById("replycontent"+sid+"").value
	  	}
	  
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Comment",
			async:false,
			data:postdata,
			success:function(data){
				location.reload();
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
</script>
</body>
</html>

