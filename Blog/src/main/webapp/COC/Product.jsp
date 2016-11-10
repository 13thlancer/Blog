<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body style="margin:0px;padding:0px;" onload="showArticle();">
<div id="header" style="position:fixed;z-index:1; height:50px;width:100%;top:0;background-color:#ff6c00;text-align:center;vertical-align:middle;">
        <label style="color:#ffffff;margin-top:15px;font-weight:10;">品牌宣传</label>    
    </div>
    
    
    <div id="newsList" style="margin-top:50px;width:100%;">
        
    </div>
    
  

    <script src="../jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
<script type="text/javascript">


function showArticle(){
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

</script>
</body>
</html>
</body>
</html>