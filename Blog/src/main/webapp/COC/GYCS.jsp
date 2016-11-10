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
<title>公益慈善</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showArticle()">
<div class="layout">
	<div class="header">
		<h4>公益慈善</h4>
		<div class="return" onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="charity bg_f0">
		<div class="head">
			<img src="imgs/wz_img9.jpg"/>
		</div>
		<div class="body">
			<ul id="list">
	<!-- 			<li>
					<div class="txt">
						<h4>温暖包君的公益旅行计划</h4>
						<p>大家好，我的名字叫"暖暖"，你也可以叫我温暖包君。2014年冬天即将到来，有65000名分布在20个省市自治区的孩子们需要你的帮助，暖暖将牵手有爱的你，开启一段新的公益</p>
					     <h5>
					            目标：200，0000元<br/>
						爱心：270份<br/>
						已经完成比例：10%
					    </h5>
					    <em></em>
					</div>
					<div class="sub">
						<dl>
							<dt>2340</dt>
							<dd>23457</dd>
						</dl>
						<span>发起人：林俊</span>
					</div>
				</li>
				<li>
					<div class="txt">
						<h4>河南省内有近百家爱心团体、企业80多辆车</h4>
						<p>大家好，我的名字叫"暖暖"，你也可以叫我温暖包君。2014年冬天即将到来，有65000名分布在20个省市自治区的孩子们需要你的帮助，暖暖将牵手有爱的你，开启一段新的公益</p>
					    <h5>
					            目标：200，0000元<br/>
						爱心：270份<br/>
						已经完成比例：10%
					    </h5>
					    <em></em>
					</div>
					<div class="sub">
						<dl>
							<dt>2340</dt>
							<dd>23457</dd>
						</dl>
						<span>发起人：林俊</span>
					</div>
				</li> -->
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
		url:"<%=basePath%>ArticleController/showArticleBytype",
		data:{mtype:"81"},
		dataType:"json",
		error:function(){
		},
		success:function(data){
			for(i=0;i<data.length;i++){
			var title = data[i].title;
			var picpath = data[i].titlepicpath;
			var content = data[i].content.substr(0, 50);
			var type = data[i].type;
			var time = data[i].createtime;
			var id = data[i].articleid;
			
			var html = "<li><div class='txt' onclick=location.href='Detail.jsp?id="+id+"'><h4>"+title+"</h4><p>"+content+"</p><em></em></div>"
			html += "<div class='sub'><dl><dd onclick=location.href='Reply.jsp?id="+id+"'>"+ReplyCount(id)+"</dd></dl></div></li>"
		    						
			$('#list').append(html);						
			}
		}
	})
}

function ReplyCount(id){
	  var postdata={id:id};
	  var count = 0;
	  var zancount = 0;
	 $.ajax({
			type:"POST",
			url:"<%=basePath%>ArticleController/showDetail",
			async:false,
			data:postdata,
			success:function(data){
				var articleid = data.articleid;
				count = data.commentcount;
				zancount = data.zancount;
				}
		  })
		  return count;
}
</script>

</body>
</html>

