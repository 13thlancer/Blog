<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
	HttpSession s = request.getSession();
	String date = (String)s.getAttribute("date");
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


      </style>   
</head>
<body style="margin:0px;padding:0px;" onload="showComment();">
    <div id="header" style="height:50px; width:100%;top:0;background-color:#ff6c00;text-align:center;vertical-align:middle;">
        <label style="color:#ffffff;margin-top:15px;font-weight:10;">评论</label>    
    </div>
    
    <div >
    	<textarea  id="comment"  style="margin-top:10px;margin-left:5%;width:90%;" rows="5" cols="10"></textarea>
    	<button style="margin-left:80%" onclick="comment();">发表</button>
    </div>
    
    <hr>
    <div id="commentList">
    		
   </div>
    
  <script src="../jQuery/jquery-2.2.3.min.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
  
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
		success(data){
			for(i=0;i<data.length;i++){
			
				var name = data[i].people[0].name;
				var picpath = data[i].people[0].picpath;
				var content = data[i].content;
				var date = data[i].reactdate;
				var id = data[i].id;
				var zancount = data[i].zanCount;
				
			var html ="<div style='background:#ffffff;width:100%;height:auto; overflow:hidden;'>"
      			html +="<div id='title'><div style='float:left;width:40px;height:40px;margin-left:10px'><img style='border-radius:50px;width:100%;height:100%;' src='"+picpath+"'/></div>"
        		html +="<div style='margin-top:5px;margin-left:20%'><span style='font-size:14px; font-weight:bold;'>"+name+"</span><br>"
            	html +="<span style='font-size:12px;'>"+date+"</span></div></div>"	
           		html +="<div style='width:80%;margin-left: 65px;margin-top:5px;margin-right:auto;'><span style='width:100%;'>"+content+"</span></div>"
           		html +="<div id='replylist"+id+"'></div>"
      			html +="<div style='text-align:right;width:90%;margin-top:20px;'><button style='border:none;background:white' onclick=\"zan('"+id+"')\">点赞"+zancount+"</button><button  style='border:none;background:white' onclick=\"showReply('"+id+"')\">回复</button>"
      			html +="<div id='replay"+id+"' style='display:none;'><textarea id='replycontent"+id+"' style='margin-top:10px;margin-left:5%;width:90%;' rows='1' cols='10'>@"+name+":</textarea>"
      			html +="<button style='margin-left:80%'  onclick=\"reply('"+id+"')\">回复</button></div></div><hr style='width:90%;'></div>"
      			
      			$('#commentList').append(html);
      			showReplyList(id);
			}
		}
	  })  
  }
  
  function comment(){
	  var postdata={id:r[2],
	  				content:document.getElementById("comment").value
	  }
	  $.ajax({
			type:"POST",
			url:"<%=basePath%>ReactController/Comment",
			async:false,
			data:postdata,
			success(data){
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
			success(data){
				location.reload();
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
			success(data){
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
		success(data){
			 for(j=0;j<data.length;j++){
				var name = data[j].people[0].name;
				var content = data[j].content;
				var date = data[j].reactdate;
				var sid = data[j].id;				
			 	
			var html ="<div  style='background:#dddddd'><div id='title'><div style='margin-left:20%'><span style='font-size:14px; font-weight:bold;'>"+name+"</span>"
            	html +="<span style='font-size:12px;'>"+date+"</span></div></div>"	
           		html +="<div style='width:80%;margin-left: 65px;margin-top:5px;margin-right:auto;'><span style='width:100%;'>"+content+"</span>"
      			html +="<button  style='border:none;background:white' onclick=\"showReply('"+sid+"')\">回复</button>"
      			html +="<div id='replay"+sid+"' style='display:none;'><textarea id='replycontent"+sid+"' style='margin-top:10px;margin-left:5%;width:90%;' rows='1' cols='10'>@"+name+":</textarea>"
      			html +="<button style='margin-left:80%'  onclick=\"rreply('"+sid+"','"+id+"')\">回复</button></div></div></div>"
      			 
      			$("#replylist"+id+"").append(html);
      		 	
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
			success(data){
				location.reload();
				}
		  })
  }
  

</script> 
</body>
</html>