<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body  style="margin:0px;padding:0px;background-color:#e8e8e8;" onload="showArticle();">
    <div id="header" style="position:fixed;z-index:1; height:50px;width:100%;top:0;background-color:#ff6c00;text-align:center;vertical-align:middle;">
        <label style="color:#ffffff;margin-top:15px;font-weight:10;">组织的力量</label>    
    </div>
     <div id="header" style="position:fixed;zindex:1;height:50px;width:100%;top:0;backgroundcolor:#ff6c00;textalign:center;verticalalign:middle;">
    </div>
    
    <div id="orgList" style="margin-top:50px;width:100%;">
        
        
       </div>
        
     <script src="../jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  
<script type="text/javascript">

function showArticle(){
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
			var html = "<div class='content' style='background-color:#ffffff;height:80px;border: #e8e8e8 1px solid;border-radius:10px;width:95%;margin-left:auto;margin-right:auto;' onclick=location.href='PersonInfo.jsp?id="+id+"'>"
				html += "<a class='left' target='_blank'><div style='width:65px;height:65px;border-radius:50px;border:solid #ffffff 1px;margin-left:10px; margin-top:10px;'>"
				html += "<img style='width:60px;height:60px;border-radius:50px;border:solid #ffffff 1px;margin-left:1.5px; margin-top:1.5px;' src='"+picpath+"'/></div></a>"
				html += "<dl id='yz' style='margin-left:100px;margin-top:13px;'><lable style='font-size:16px;'>"+name+"-"+position+"</label><br><label  style='font-size:12px;color:#acabab'>"+orgid+"</label></dl></div>"
			$('#orgList').append(html);
			}
		}
	})
}


</script>

    
</body>
</html>