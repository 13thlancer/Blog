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
<title>首页</title>
<link rel="stylesheet" href="css/slicy.css">
<link rel="stylesheet" href="css/glide.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body onload="showSlide()">

<!-- <div class="layout" id="logo">
	
	<div class="index">
		<div class="logo">
			<img src="imgs/wz_28.png"/>
			<h4>湖南省湖南商会</h4>
		</div>
		<div class="copyright">
			<h4>版权所有：湖北省湖南商会</h4>
			Copyright© 2007-2016  hbshnsh.com<br/>
			All Right Reserved
		</div>
	</div> 
	
	
	
</div>-->


<div class="layout" id="main" >

	<div class="header">
		<h4>湖南商会</h4>
		
	</div>
	
	<div class="hslide" id="slider">
		<!--<ul class="slides" id="slide">
		
			 <li class="slide">
				<img src="imgs/wz_img2.jpg"/>
				<div class="txt"><h4>中国首次火星探测任务计划将于2020年实施。</h4></div>
			</li> 
			 <li class="slide">
				<img src="imgs/wz_img3.jpg"/>
				<div class="txt"><h4>中国首次火星探测任务计划将于2020年实施。</h4></div>
			</li>
			<li class="slide">
				<img src="imgs/wz_img2.jpg"/>
				<div class="txt"><h4>中国首次火星探测任务计划将于2020年实施。</h4></div>
			</li>
			<li class="slide">
				<img src="imgs/wz_img3.jpg"/>
				<div class="txt"><h4>中国首次火星探测任务计划将于2020年实施。</h4></div>
			</li>	
		</ul> -->
	</div>
	
	<div class="home_list">
		<ul id="list">
			<!-- <li>
				<a href="#">
					<div class="img">
					<img src="imgs/wz_img4.jpg"/>
					</div>
					<div class="txt">
						 <h4>就在很多人揣测美俄是否要重新回到冷战之时，美国人却忽视了来自东方...</h4>
					     <div class="sub">
					     	<h5>组织力量</h5>
					     	<h6>2016-08-11  14:34</h6>
					     </div>
					</div>
				</a>
			</li>
			<li>
				<a href="#">
					<div class="img">
					<img src="imgs/wz_img5.jpg"/>
					</div>
					<div class="txt">
						 <h4>8月22日，西安市公安局警方通报，西安破获近年最大制造假币案，两清涧男子网上...</h4>
					     <div class="sub">
					     	<h5>湖南人文</h5>
					     	<h6>2016-08-11  14:34</h6>
					     </div>
					</div>
				</a>
			</li>
			<li>
				<a href="#">
					<div class="img">
					<img src="imgs/wz_img6.jpg"/>
					</div>
					<div class="txt">
						 <h4>河北秦皇岛北戴河富民路巴铁300米测试段上，巴铁已驶出工棚...</h4>
					     <div class="sub">
					     	<h5>特色美食</h5>
					     	<h6>2016-08-11  14:34</h6>
					     </div>
					</div>
				</a>
			</li>
			<li>
				<a href="#">
					<div class="img">
					<img src="imgs/wz_img7.jpg"/>
					</div>
					<div class="txt">
						 <h4>这次介绍的是环洱海的拍照地点有11个，按照位置顺序进行介绍：A海西水站、B躺在水...</h4>
					     <div class="sub">
					     	<h5>人文分享</h5>
					     	<h6>2016-08-11  14:34</h6>
					     </div>
					</div>
				</a>
			</li>
			<li>
				<a href="#">
					<div class="img">
					<img src="imgs/wz_img8.jpg"/>
					</div>
					<div class="txt">
						 <h4>律宾总统特使将在香港与中方接触 外交部回应...</h4>
					     <div class="sub">
					     	<h5>人文分享</h5>
					     	<h6>2016-08-11  14:34</h6>
					     </div>
					</div>
				</a>
			</li> -->
		</ul>
	</div>
	
	<div class="footer">
		<ul>
			<li>
			<!-- <a href="ZZDLL.jsp"> -->
			<a href="OrgList.jsp">
				<img src="imgs/wz_9.png"/>
				<h4>组织的力量</h4>
			</a>
			</li>
			<li>
			<a href="WXSH.jsp">
				<img src="imgs/wz_10.png"/>
				<h4>温馨商会</h4>
			</a>
			</li>
			<li>
			<a href="StandardService.jsp">
				<img src="imgs/wz_11.png"/>
				<h4>标准服务</h4>
			</a>
			</li>
			<li>
			<a href="HumanityList.jsp?mtype=31">
				<img src="imgs/wz_12.png"/>
				<h4>品牌宣传</h4>
			</a>
			</li>
		</ul>
	</div>
	
	
	
	
</div><!--loyout结束-->



<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<!-- <script type="text/javascript" src="js/script.js"></script>
 -->
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
	
			
				var slid = "<li class='slide'><a href='Detail.jsp?id="+id+"''><img src='"+picpath+"' /><div class='txt'><h4>"+title+"</h4></div></a></li>"
				$('#slide').append(slid); 
			}
			
			showArticle();
		}	

	})
	
}

function showArticle(){
	/*   setTimeout("document.getElementById(\"logo\").style.display=\"none\"",2000);
	  document.getElementById("main").style.display=block; */
	<%-- XuntongJSBridge.call('getPersonInfo', {}, function(result) {
        if (null != result && undefined != result) { 
                  /* ****  注意 start **** */
                  /* ****  由于在桌面端，实现JS-API方式不同，这里的回调返回值result是一个string **** */
                  /* ****  为确保result正常使用，建议在回调中添加如下代码 **** */
                  if (typeof result == 'string') {
                      result = JSON.parse(result);
                  }
                  /* ****  注意 end **** */
             var desc = "返回的数据:<p />" + JSON.stringify(result); 
             var success = String(result.success);
       if (success == "true") {
/*     	   alert(desc)
 * 
 */
 				var data = {
    					openid:result.data.openId,
    	   				name:result.data.name,
    	   				email:result.data.email,
    	   				photoUrl:result.data.photoUrl
    	   };
    		$.ajax({
    			type:"post",
    			url:"<%=basePath%>LoginController/LogBind",
    			dataType:"json",
    			data:data,
    			success:function(data){
    				
    			}
    		})
    	   
       } else if (success == "false") {
 			alert(desc + "。<p/>返回失败！错误信息: " + result.error);
       } else {
    	   alert("返回有问题！");
      			 }
               } else { 
            	   alert("返回失败！"); 
               }
		}); --%>
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showLatestArticle",
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
			if(title.length>20){
				title = ""+title.substr(0, 20)+"....";
			}
			var picpath = data[i].titlepicpath;
			var content = data[i].content;
			var type = data[i].mtype[0].name;
			var time = data[i].createTime;
			var id = data[i].articleid;
	
				var html = "<li><a href='Detail.jsp?id="+id+"'><div class='img'><img src='"+picpath+"'/></div><div class='txt'> <h4>"+title+"</h4>"
				html += "<div class='sub'><h5>"+type+"</h5><h6>"+time+"</h6></div></div></a></li>"
				$('#list').append(html);	
		
			/* 
				var slid = "<li class='slide'><a href='Detail.jsp?id="+id+"''><img src='imgs/wz_img2.jpg' /><div class='txt'><h4>"+title+"</h4></div></a></li>"
				$('#slide').append(slid);  */
			}
			
			
		}	

	})
	main();
}
/* 
	$(function (){
	        setTimeout('main()',100); //延迟3秒
	    })
 */	
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

