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
<title>组织的力量</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body onload="showList()">
<div class="layout">
	<div class="header">
		<h4>组织的力量</h4>
		<div class="return" onclick=location.href="Main.jsp">
			
		</div>
	</div>
	
	<div class="organization_txt">
		<div class="hd">
			<ul>
				<li class="n1 selected">会员目录</li>
				<li class="n2" onclick=location.href=>行业专场</li>
			</ul>
		</div>
		<div class="bd">
			<ul id="list">
				<!-- <li><span>罗振林—会长</span>      武汉兴开源电力工程有限公司董事长</li>
				<li><span>龚卫兵—常务副会长  </span>      武汉华源网通电力公司董事长</li>
				<li><span>郭庆—常务副会长</span>      武汉鑫泰福诺科技发展有限公司</li>
				<li><span>舒建辉—常务副会长</span>       武汉金盾大酒店管理公司董事长</li>
				<li><span>胡湘和—常务副会长 </span>      武汉金盾大酒店管理公司董事长</li>
				<li><span>朱幼堂—常务副会长 </span>       湖北容大联通物流有限公司董事长</li>
				<li><span>陈关心—副会长 </span>      创新摩托车配件销售公司董事长</li>
				<li><span>郭庆—常务副会长</span>      武汉鑫泰福诺科技发展有限公司</li>
				<li><span>舒建辉—常务副会长 </span>      武汉金盾大酒店管理公司董事长</li>
				<li><span>胡湘和—常务副会长 </span>      武汉中湘和机械有限公司董事长</li> -->
			</ul>
		</div>
		<div class="bd" style="display: none;">
			<ul>
				<li onclick="window.location.href='OrgList.jsp'"><span>1罗振林—会长</span>      武汉兴开源电力工程有限公司董事长</li>
				<li><span>龚卫兵—常务副会长  </span>      武汉华源网通电力公司董事长</li>
				<li><span>郭庆—常务副会长</span>      武汉鑫泰福诺科技发展有限公司</li>
				<li><span>舒建辉—常务副会长</span>       武汉金盾大酒店管理公司董事长</li>
				<li><span>胡湘和—常务副会长 </span>      武汉金盾大酒店管理公司董事长</li>
				<li><span>朱幼堂—常务副会长 </span>       湖北容大联通物流有限公司董事长</li>
				<li><span>陈关心—副会长 </span>      创新摩托车配件销售公司董事长</li>
				<li><span>郭庆—常务副会长</span>      武汉鑫泰福诺科技发展有限公司</li>
				<li><span>舒建辉—常务副会长 </span>      武汉金盾大酒店管理公司董事长</li>
				<li><span>胡湘和—常务副会长 </span>      武汉中湘和机械有限公司董事长</li>
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
			var html="<li onclick=location.href='PersonInfo.jsp?id="+id+"'><span>"+name+"-"+orgid+"</span>      "+position+"</li>"
				$('#list').append(html);
			}
		}
	})
}


</script>
</body>
</html>

