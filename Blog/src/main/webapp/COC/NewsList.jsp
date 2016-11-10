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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MIS</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
   
      <style type="text/css"> 
          .content a.left{ float:left;}
          #yz{ margin-left:90px;
          }

      </style>   
</head>
<body style="margin:0px;padding:0px;" onload="getpersoninfo();">
    <div id="header" style="position:fixed;z-index:1; height:50px;width:100%;top:0;background-color:#ee8919;text-align:center;vertical-align:middle;">
        <label style="color:#ffffff;margin-top:15px;font-weight:10;">湖南商会</label>    
    </div>
    
   <div id="myCarousel" style="margin-top:50px;width:100%;" class="carousel slide">

          <!-- 轮播（Carousel）指标 -->
          <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0"></li>
              <li data-target="#myCarousel" data-slide-to="1"  class="active"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
          <!-- 轮播（Carousel）项目 -->
          <!-- 轮播（Carousel）项目 -->
      <div class="carousel-inner">

          <div class="item">
              <img src="../img/001.jpg" style="height:150px;width: 100%">
              <div  style="position: absolute; top:130px;left:140px;">活动回顾</div>
          </div>
          <div class="item">
              <img src="../img/002.jpg" style="height:150px;width:100%">
              <div style="position: absolute; top:130px;left:140px;">活动预告</div>
          </div>
          <div class="item active">
              <img src="../img/003.jpg" style="height:150px;width: 100%">
              <div style="position: absolute; top:130px;left:140px;">活动直播</div>
          </div>
      </div>
      <!-- 轮播（Carousel）导航 -->
      <a class="carousel-control left" href="#myCarousel"
         data-slide="prev">&lsaquo;
      </a>
      <a class="carousel-control right" href="#myCarousel"
         data-slide="next">&rsaquo;
      </a>
  </div>
    
    <div id="newsList">
        
    </div>
    
   
<div id="footer" style="position:fixed; width:100%;bottom:0;background-color:#ee8919;">
      <ul class="tool" style="list-style-type: none;">
                <li style="float:left;line-height:50px;width:20%;vertical-align:middle;text-align:center;">
                    <a role="button" href="OrgList.jsp" style="text-decoration:none;">
                        <em></em>
                        <em style="font-size:5px; font-style: normal;font-weight: normal;color:#ffffff">组织力量</em>
                    </a>
                </li>
                <li style="float:left;line-height:50px;width:25%;vertical-align:middle;text-align:center;">
                    <a role="button" href="WXSH.jsp" style="text-decoration:none;">
                        <em></em>
                        <em style=" font-size:5px;font-style:normal;font-weight: normal;color:#ffffff">温馨商会</em>
                    </a>
                </li>
                <li style="float:left;line-height:50px;width:25%;vertical-align:middle;text-align:center;">
                    <a href="Service.jsp" role="button" style="text-decoration:none;">
                        <em></em>
                        <em style=" font-size:5px;font-style:normal;font-weight: normal;color:#ffffff">标准服务</em>
                    </a>
                </li>
                <li style="float:left;line-height:50px;width:25%;vertical-align:middle;text-align:center;">
                    <a role="button"  href="MyInfo.jsp" style="text-decoration:none;">
                        <em></em>
                        <em style=" font-size:5px;font-style:normal;font-weight: normal;color:#ffffff">品牌宣传</em>
                    </a>
                </li>
            </ul>
        
</div>

    <script src="../jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
       <script src="jQuery/light-app.js" type="text/javascript"></script>
    
<script src="http://do.yunzhijia.com/pub/js/qingjs.js"></script>
<script type="text/javascript">

function getpersoninfo(){
	alert(window.location);
	XuntongJSBridge.call('getPersonInfo', {}, function(result) {
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
		});
	$.ajax({
		type:"post",
		url:"<%=basePath%>ArticleController/showArticle",
		dataType:"json",
		error:function(){
		},
		success:function(data){
			for(i=0;i<data.length;i++){
			var title = data[i].title;
			var picpath = data[i].titlepicpath;
			var content = data[i].content;
			var type = data[i].type;
			var time = data[i].createtime;
			var id = data[i].articleid;
			var html = "<div class='content' style='height:80px;border-bottom: #e8e8e8 1px solid;' onclick=location.href='Detail.jsp?id="+id+"'>"
				html += "<a class='left' target='_blank'><img src='"+picpath+"' width='80px;' height='60px;' style='margin-left:10px;' alt='' /></a>"
				html += "<dl id='yz' style='margin-left:100px;margin-top:10px;'><lable style='font-size:15px;'>"+title+"</label><br><br>"
				html += "<label  style='font-size:10px;color:#acabab'>"+type+"</label>"
				html += "<label style='font-size:10px;color:#acabab;margin-left:80px;'>"+time+"</label><div class='clear-both'></div></dl></div>"
			$('#newsList').append(html);
			}
		}
	})
}


function showArticle(){
	
}

/* function jump(id){
	window.location.href="Detail.jsp?id='+id+'";
}
 */
</script>
</body>
</html>