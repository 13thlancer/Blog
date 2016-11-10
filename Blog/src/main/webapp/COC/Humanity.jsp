<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
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
     #content {  
                width: 100%;  
                height:50px;  
            }  
              
            #tab_bar {  
                width: 100%;  
                height: 50px;  
                float: left;  
            }  
            #tab_bar ul {  
                padding: 0px;  
                margin: 0px;  
                height:50px;  
                text-align: center;  
            }  
              
            #tab_bar li {  
                list-style-type: none;  
                float: left;  
                width: 33.33%;  
                height: 50px;  
                background-color: #ffffff;  
            }  
              
            .tab_css {  
                width: 100%;  
                height:50px;  
                background-color: #d1d1d1;  
                display: none;  
                float: left;  
            }  
       
         .content a.left{ float:left;}
          #yz{ margin-left:90px;
          }
    </style>
</head>
<body style="margin:0px;padding:0px;background-color:#d1d1d1;" onload="showArticle();"> 
     <div id="header" style="position:fixed;z-index:1; height:50px;width:100%;top:0;background-color:#ff6c00;text-align:center;vertical-align:middle;">
        <label style="color:#ffffff;margin-top:15px;font-weight:10;">温馨商会</label>    
    </div>
    <div id="content" style="margin-top:50px;width:100%;">  
            <div id="tab_bar">  
                <ul>  
                    <li id="tab1" onclick="myclick(1)" style="background-color: orange">  
                           	 <label style="margin-top:20px;font-size:10px;">家乡风景</label>
                    </li>  
                    <li id="tab2" onclick="myclick(2)">  
 							 <label style="margin-top:20px;font-size:10px;">人文分享</label>
                     </li>  
                    <li id="tab3" onclick="myclick(3)">  
                             <label style="margin-top:20px;font-size:10px;">人文分享</label>
                    </li>  
                </ul>  
            </div>  
            <div class="tab_css" id="tab1_content" style="display: block">   
    

            </div>  
            <div class="tab_css" id="tab2_content">  
                
            </div>  
            <div class="tab_css" id="tab3_content">  
                
            </div>  
        </div>  
   
       <!--  <input type="search" name="search" style="height:30px;" id="search" placeholder="æç´¢">
      </div> -->
    
  
    
       <script src="../jQuery/jquery-2.2.3.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

var myclick = function(v) {  
    var llis = document.getElementsByTagName("li");  
    for(var i = 0; i < llis.length; i++) {  
        var lli = llis[i];  
        if(lli == document.getElementById("tab" + v)) {  
            lli.style.backgroundColor = "orange";  
        } else {  
            lli.style.backgroundColor = "white";  
        }  
    }  

    var divs = document.getElementsByClassName("tab_css");  
    for(var i = 0; i < divs.length; i++) {  

        var divv = divs[i];  

        if(divv == document.getElementById("tab" + v + "_content")) {  
            divv.style.display = "block";  
        } else {  
            divv.style.display = "none";  
        }  
    }  

}  



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
			var content = data[i].content.substr(0, 50);
			var type = data[i].type;
			var time = data[i].createtime;
			var id = data[i].articleid;
			var html = "<div style='width:95%;margin-left:auto;margin-right:auto;'><br>"
            html +="<div class='content' style='height:100px;background-color:#ffffff;border-bottom: #969696 1px solid;border-radius: 15px 15px 0px 0px;' onclick=location.href='Detail.jsp?id="+id+"'>"
            html +="<a class='left' target='_blank'><img src='"+picpath+"' width='80px;' height='60px;' style='margin-left:10px;margin-top:15px;' /></a>"
            html +="<div id='yz' style='margin-left:110px;padding-top:10px;'><label style='font-size:14px;'>"+title+"</label><br><font style='font-size:10px;color:#acabab'>"+content+"....</font></div></div>"
            html +="<div id='title' style='height:40px;background-color:#ffffff;border-radius:0px 0px 15px 15px;'><div style='float:left;margin-left:10px;margin-top:10px;'>"
            html +="<label style='font-size:10px;'>"+time+"</label><label style='font-size:10px;margin-left:120px;'>评论（）</label><label style='font-size:10px;'>点赞（）</label> </div></div>"      
			if(type == 1){
				 $('#tab1_content').append(html);
				}	else if(type == 2){
					 $('#tab2_content').append(html);
				}else if(type == 3){
					 $('#tab3_content').append(html);
				}     
           
			}
		}
	})
}


  </script>
</body>
</html>

    
    