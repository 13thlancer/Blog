<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>编辑文章</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body>
<div class="layout">
	<div class="header">
		<h4>编辑文章</h4>
		<div class="return"  onclick="history.go(-1)">
			
		</div>
	</div>
	
	<div class="edit_articles">
		<form action="" method="post">
			<div class="txt">
				<h2>如果按照人文风俗，语言，生活习惯，历史，地理地形等因素对中国进行新的行政区划分，中国将会是什么样子的？</h2>
			    <p>中国地形宏观区域、又译中国宏观区域、宏观区域理论是由美国人类学家施坚雅提出的分析模式及理论（因此又称施坚雅模式），依主要大河流的排水盆地及其他会影响旅行的地理因素，将中国本部汉地划成九大区, 并主张这九大区域在环境、经济资源、文化及相互依赖及偶时独立的众面向来说，有相当不同的特性。 [1] 这在其主要论文“中华帝国晚期的城市”中在解释城市地位升降的原因、区域发展与中心城市的关系中对相关研究有关键影响。该理论及分析方式又称为“施坚雅模式”</p>
			    
			    <div class="imgs">
			    	<ul>
			    		<li><img src="imgs/wz_img54.jpg"/></li>
			    		<li class="up">
			    			<img src="imgs/wz_54.png"/>
			    			  <input id="fileBtn" class="btn-file" type="file"  multiple="">
			    		</li>
			    	</ul>
			    </div>
			</div>
			
			<div class="input">
				<ul>
					<li>
						<h4>工作圈外可访问</h4>
						<label class="label-switch">
			                <input type="checkbox" checked="">
			                <div class="checkbox"></div>
               		    </label>
					</li>
					<li>
						<h4>开启共同编辑</h4>
						<label class="label-switch">
			                <input type="checkbox" checked="">
			                <div class="checkbox"></div>
               		    </label>
					</li>
				</ul>
			</div>
			
			<div class="foot">
				<input type="submit" class="btn" value="提交"/>
			</div>
		</form>		
	</div>
	
	
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
</body>
</html>

