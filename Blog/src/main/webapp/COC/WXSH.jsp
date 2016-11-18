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
<title>公益慈善</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">



</head>
<body onload="showSlide()">
<div class="layout">
	<div class="header">
		<h4>温馨商会</h4>
		<div class="return" onclick=location.href="Main.jsp">
			
		</div>
	</div>
	
	<div class="hslide">
		<ul class="slides" id="slide">
			 <li class="slide">
				<a id="a0" href="">
				<img id="img0" src=""/>
				<div class="txt"><h4 id="h0"></h4></div>
				</a>
				
			</li>
			<li class="slide">
			<a id="a1" href="">
				<img id="img1" src=""/>
				<div class="txt"><h4 id="h1"></h4></div>
			</a>
				
			</li>
			<li class="slide">
			<a id="a2" href="">
				<img  id="img2" src=""/>
				<div class="txt"><h4  id="h2"></h4></div>
								</a>
				
			</li>
			<li class="slide">
			<a id="a3" href="">
				<img id="img3" src=""/>
				<div class="txt"><h4 id="h3"></h4></div>
				</a>
			</li>	
	</ul>
		
	</div>
				
	
	<div class="service commerce bg_f0 ">
		<div class="title" onclick=location.href="HNRW.jsp">
			<a href="HNRW.jsp">湖南人文</a>
		</div>
		
		<ul>
			<li class="n1">
				<a href="GYCS.jsp?mtype=81">公益慈善</a>
			</li>
			<li class="n2">
				<a href="GYCS.jsp?mtype=82">帮扶活动</a>
			</li>
			<li style="display:none;" class="n3">
				<a href="#">品牌宣传</a>
			</li>
			<li style="display:none;" class="n4">
				<a href="../Blog.html">兴趣小组</a>
			</li>
		</ul>
	</div>
	
	
</div><!--loyout结束-->

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script type="text/javascript">

function showSlide(){
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showArticle",
		dataType:"json",
		error:function(){
		},
		success:function(data){
			/* $("ul").children("li").remove();
			var j= 1; */
			var ul = "<ul class='slides' id='slide'></ul>"
				$('#slider').append(ul)
			for(i=0;i<4;i++){
			var title = data[i].title;
			if(title.length>20){
				title = ""+title.substr(0, 20)+"....";
			}
			var picpath = data[i].titlepicpath;
			var content = data[i].content;
			var type = data[i].mtype[0].name;
			var time = data[i].createTime;
			var id = data[i].articleid;
				
			$("#a"+i+"").attr('href','Detail.jsp?id='+id+'');
			$("#img"+i+"").attr('src',picpath);
			$("#h"+i+"").html(title);

			
			/* 	var slid = "<li class='slide'><a href='Detail.jsp?id="+id+"''><img src='"+picpath+"' /><div class='txt'><h4>"+title+"</h4></div></a></li>"
				$('#slide').append(slid);  */
			}
		}	
	})
	main();
}

function main(){  //待请求完成时 执行 
	/* document.getElementById("logo").style.display="none";
	document.getElementById("main").style.display="block";
	 */
	$(function(){
		if($('.hslide').size()>0){
				var glide = $('.hslide').glide({
		
					//autoplay:true,//鏄惁鑷姩鎾斁 榛樿鍊� true濡傛灉涓嶉渶瑕佸氨璁剧疆姝ゅ€�
		
					animationTime:500, //鍔ㄧ敾杩囧害鏁堟灉锛屽彧鏈夊綋娴忚鍣ㄦ敮鎸丆SS3鐨勬椂鍊欑敓鏁�
		
					arrows:true, //鏄惁鏄剧ず宸﹀彸瀵艰埅鍣�
					//arrowsWrapperClass: "arrowsWrapper",//婊戝潡绠ご瀵艰埅鍣ㄥ閮―IV绫诲悕
					//arrowMainClass: "slider-arrow",//婊戝潡绠ご鍏叡绫诲悕
					//arrowRightClass:"slider-arrow--right",//婊戝潡鍙崇澶寸被鍚�
					//arrowLeftClass:"slider-arrow--left",//婊戝潡宸︾澶寸被鍚�
					arrowRightText:"",//瀹氫箟宸﹀彸瀵艰埅鍣ㄦ枃瀛楁垨鑰呯鍙蜂篃鍙互鏄被
					arrowLeftText:"",
		
					nav:true, //涓诲鑸櫒涔熷氨鏄湰渚嬩腑鏄剧ず鐨勫皬鏂瑰潡
					navCenter:true, //涓诲鑸櫒浣嶇疆鏄惁灞呬腑
					navClass:"slider-nav",//涓诲鑸櫒澶栭儴div绫诲悕
					navItemClass:"slider-nav__item", //鏈緥涓皬鏂瑰潡鐨勬牱寮�
					navCurrentItemClass:"slider-nav__item--current" //琚€変腑鍚庣殑鏍峰紡
					
					//
				});
			}
		
		  //椤甸潰涓嶈冻涓€灞忥紝閾烘弧涓€灞�
		$('.layout').css('min-height',$(window).height());
		
		
		//缁勭粐鐨勫姏閲�
		$('.organization_txt .hd li').click(function(){
			
			$('.organization_txt .hd li').removeClass('selected');
			$(this).addClass('selected');
			
			$('.organization_txt .bd').hide().eq($(this).index()).show();
			
			return false;
		})
		
		//鏀夸紒浜掕仈
		$('.enterprise .hd li').click(function(){
			
			$('.enterprise .hd li').removeClass('selected');
			$(this).addClass('selected');
			
			$('.enterprise .bd').hide().eq($(this).index()).show();
			
			return false;
		})
		
		//閫氳褰�
		$('.address_book .hd li').click(function(){
			
			$('.address_book .hd li').removeClass('selected');
			$(this).addClass('selected');
			
			$('.address_book .bd').hide().eq($(this).index()).show();
			
			return false;
		})
		//璇勮鍥炲
		$('.comments_reply .body li .ft dt').click(function(){
			if($(this).hasClass('selected')){
				return false;
			}
			$(this).addClass('selected').html(parseInt($(this).html()) + 1);
		});
		
		$('.comments_reply .body li').each(function(){
			var f = $(this);
			$(this).find('dd').click(function(){
				f.find('.sub').show();
				return false;
			})
			
		})
		
	})
}


</script>
</body>
</html>

