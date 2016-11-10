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
   
</head>
<body style="margin:0px;padding:0px;" onload="showDetail();">
<div style="height:700px;width: 100%;background-color:#ffffff;">
        <div style="height:25%;width: 100%;background-color:#ea7b0d;">
            <div style="text-align:center;">
                <label style="text-align:center;color:#ffffff;"></label>
            </div>
        </div> 
        <div id="img" style="background-color:#ffffff;width:106px;height:106px;border-radius:50px;border:solid #ffffff 1px;position: absolute; margin: auto; top: 120px; left: 0;right: 0;">
        </div>
       <br>
        <div style="text-align:center;margin-top:45px">
         	<label id="position"></label>
            <label id="name"></label>
            <br>
            <label id="nativeplace" style="font-size:10px;"></label>
        </div>
        <hr style="width:80%;">
             <div  style="width:95%; margin:0px auto;margin-top:40px;">
                  <ul>
                    <li>
                        <label style="font-size:12px;">武汉兴开源电力工程有限公司</label>
                        <label style="font-size:12px;">董事长</label>
                      </li>
                    <li>
                        <label style="font-size:12px">武汉银兆置业投资发展有限公司</label>
                        <label style="font-size:12px;">董事长</label>

                      </li>
                    <li>
                        <label style="font-size:12px">中能太昶武汉智能电器有限公司</label>
                        <label style="font-size:12px;">董事长</label>
                      </li>
                  </ul>
            </div>
          <hr style="width:80%;">
            <div style="width:95%; margin:0px auto;margin-top:20px;">
               <span id="introduce" style="white-space:normal;font-size:12px;">
                </span>
            </div>
            
    </div>   
    
     <script src="../jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  
<script type="text/javascript">

function showDetail(){
	 var reg = new RegExp("(^|&)id=([^&]*)(&|$)","i");
	  var r = window.location.search.substr(1).match(reg);
	  var postdata={id:r[2]}
	$.ajax({
		type:"post",
		url:"<%=basePath%>PeopleController/showDetail",
		dataType:"json",
		data:postdata,
		success(data){
				document.getElementById("name").innerText=data[0].name;
				document.getElementById("introduce").innerText=data[0].introduce;
				document.getElementById("nativeplace").innerText=data[0].nativeplace;
			/* 	document.getElementById("orgid").value=data[0].orgid; */
				document.getElementById("position").innerText = data[0].position;
				var img ="<img style='width:100px;height:100px;border-radius:50px;border:solid #ffffff 1px;position: absolute; margin-top: 1.5px;margin-left:1.5px;' src='"+data[0].picpath+"' />"
				$('#img').append(img);
		}
	})
}


</script> 
</body>
</html>