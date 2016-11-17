<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    HttpSession s = request.getSession();
    String username=(String)s.getAttribute("username");
    String openid=(String)s.getAttribute("openid");
    String phone=(String)s.getAttribute("phone");
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
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="../bootstrap/css/bootstrap-dialog.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link rel="stylesheet" href="css/slicy.css">
	<link rel="stylesheet" href="css/glide.css">
	<link rel="stylesheet" href="css/style.css">
    
    <style type="text/css">
        select,
        textarea,
        input[type="text"],
        input[type="password"],
        input[type="datetime"],
        input[type="datetime-local"],
        input[type="date"],
        input[type="month"],
        input[type="time"],
        input[type="week"],
        input[type="number"],
        input[type="email"],
        input[type="url"],
        input[type="search"],
        input[type="tel"],
        input[type="color"],
        .uneditable-input {
            display: inline-block;
            height: 20px;
            padding: 4px 6px;
            margin-bottom: 10px;
            font-size: 14px;
            line-height: 20px;
            color: #555555;
            vertical-align: middle;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }
        .input-block-level {
            display: block;
            width: 100%;
            min-height: 30px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini" onload="showMyList();">

					<div class="layout">
						<div class="header">
							<h4>共享经济</h4>
							<div class="return" onclick="history.go(-1)">
							</div>
						</div>

                        <div id="order" class="container" style="display: none;width: 100%">
                            <br>
                            <div>
                                <button class="btn btn-large" style="width: 20%;float:left;background:#ee8919;" type="submit" onclick="back();return false;">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </button>
                                <span class="form-signin-heading" style="font-size:20px;text-align: center;">请添加订单</span>

                            </div>
                            <br>
        					<div class="controls" style = "display:none;">
                                <label class="control-label" for="openid" style="line-height:30px;">id：</label>
                                <div style="float:right;width:75%;">
                                    <input id="openid"  type="text" style="width:100%;height: 30px;" name="openid" data-required="1" readOnly="true" value="<%=openid%>"/>
                                </div>
                            </div>
                       		<br>
                            
                            <div class="controls">
                                <label class="control-label" for="ousername" style="line-height:30px;">用户名：</label>
                                <div style="float:right;width:75%;">
                                    <input id="ousername"  type="text" style="width:100%;height: 30px;" name="ousername" data-required="1" readOnly="true" value="<%=username%>"/>
                                </div>
                            </div>
                       		<br>
                            <div class="controls">
                                <label class="control-label" for="requirename" style="line-height:30px;">需求：</label>
                                <div style="float:right;width:75%;">
                                    <input id="requirename"  type="text" style="width:100%;height: 30px;" name="requirename" data-required="1" placeholder="需求"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="num" style="line-height:30px;">数量：</label>
                                <div style="float:right;width:75%;">
                                    <input id="num"  type="text" style="width:100%;height: 30px;" name="num" data-required="1" placeholder="数量"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="oconusername" style="line-height:30px;">联系人：</label>
                                <div style="float:right;width:75%;">
                                    <input id="oconusername"  type="text" style="width:100%;height: 30px;" name="oconusername" data-required="1" placeholder="联系人" value="<%=username%>"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="ocontel" style="line-height:30px;">联系方式：</label>
                                <div style="float:right;width:75%;">
                                    <input id="ocontel"  type="text" style="width:100%;height: 30px;" name="ocontel" data-required="1" placeholder="联系方式" value="<%=phone%>"/>
                                </div>
                            </div>
                            <br>
                                <div class="controls">
                                    <label class="control-label" for="type" style="line-height:30px;">需求类型：</label>
                                    <div style="float:right;width:75%;">
                                        <select id="type" name="type" style="width:100%; height: 30px;padding: 4px 6px;margin-bottom: 10px;font-size: 14px;line-height: 20px;">
                                            <option value="">请选择需求类型</option>
                                            <option value="办公用品">办公用品</option>
                                            <option value="学习用品">学习用品</option>
                                            <option value="生活用品">生活用品</option>
                                            <option value="建筑材料">建筑材料</option>
                                        </select>
                                    </div>
                                </div>
                            <div style="margin-left: auto;margin-right: auto;">
                                <button class="btn btn-large" style="width: 100%;background:#ee8919;" type="submit" onclick="addOrder();return false;">提交</button>
                            </div>
                        </div>

<%-- 
                        <div id="edit" class="container" style="display: none;width: 100%">
                            <br>
                            <div>
                                <button class="btn btn-large btn-primary" style="width: 20%;float:left;" type="submit" onclick="eback();return false;">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </button>
                                <span class="form-signin-heading" style="font-size:20px;text-align: center;">订单详情</span>
                                <button id="ebutton" class="btn btn-large btn-primary" style="width: 20%;float:right;" type="submit" onclick="edit();return false;">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </button>
                            </div>
                            <br>
                           	<div class="controls" style = "display:none;">
                                <label class="control-label" for="eopenid" style="line-height:30px;">id：</label>
                                <div style="float:right;width:75%;">
                                    <input id="eopenid"  type="text" style="width:100%;height: 30px;" name="eopenid" data-required="1" readOnly="true" value="<%=openid%>"/>
                                </div>
                            </div>
                       		<br>
                          
                            <div class="controls">
                                <label class="control-label" for="ousername" style="line-height:30px;">用户名：</label>
                                <div style="float:right;width:75%;">
                                    <input id="ousername"  type="text" style="width:100%;height: 30px;" name="ousername" data-required="1" readOnly="true" value="<%=username%>"/>
                                </div>
                            </div>
                       		<br>
                            <div class="controls">
                                <label class="control-label" for="requirename" style="line-height:30px;">需求：</label>
                                <div style="float:right;width:75%;">
                                    <input id="requirename"  type="text" style="width:100%;height: 30px;" name="requirename" data-required="1" placeholder="需求"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="num" style="line-height:30px;">数量：</label>
                                <div style="float:right;width:75%;">
                                    <input id="num"  type="text" style="width:100%;height: 30px;" name="num" data-required="1" placeholder="数量"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="oconusername" style="line-height:30px;">联系人：</label>
                                <div style="float:right;width:75%;">
                                    <input id="oconusername"  type="text" style="width:100%;height: 30px;" name="oconusername" data-required="1" placeholder="联系人" value="<%=username%>"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="ocontel" style="line-height:30px;">联系方式：</label>
                                <div style="float:right;width:75%;">
                                    <input id="ocontel"  type="text" style="width:100%;height: 30px;" name="ocontel" data-required="1" placeholder="联系方式" value="<%=phone%>"/>
                                </div>
                            </div>
                            <br>
                                <div class="controls">
                                    <label class="control-label" for="type" style="line-height:30px;">需求类型：</label>
                                    <div style="float:right;width:75%;">
                                        <select id="type" name="type" style="width:100%; height: 30px;padding: 4px 6px;margin-bottom: 10px;font-size: 14px;line-height: 20px;">
                                            <option value="">请选择需求类型</option>
                                            <option value="办公用品">办公用品</option>
                                            <option value="学习用品">学习用品</option>
                                            <option value="生活用品">生活用品</option>
                                            <option value="建筑材料">建筑材料</option>
                                        </select>
                                    </div>
                                </div>
                            <div id="ediv"  style="margin-left: auto;margin-right: auto;display: none;">
                                <button class="btn btn-large" style="width: 100%;background:#ee8919;" type="submit" onclick="editOrder();return false;">提交</button>
                            </div>
                        </div> --%>


                        <div id="detail" class="container" style="display: none;width: 100%">
                       	  <br>
  							<div>
                                <button id="back" class="btn btn-large btn-primary" style="width: 20%;float:left;background:#ee8919;" type="submit" onclick="goback();return false;">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </button>
                                 <button id="eback" class="btn btn-large btn-primary" style="width: 20%;float:left;display: none;background:#ee8919;" type="submit" onclick="eback();return false;">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </button>
                                <span class="form-signin-heading" style="font-size:20px;text-align: center;">订单详情</span>
                                <button id="ebutton" class="btn btn-large btn-primary" style="width: 20%;float:right;background:#ee8919;" type="submit" onclick="edit();return false;">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </button>
                            </div>                            	<div class="controls" style = "display:none;">
                                <label class="control-label" for="eid" style="line-height:30px;">id：</label>
                                <div style="float:right;width:75%;">
                                    <input id="did"  type="text" style="width:100%;height: 30px;" name="eid" data-required="1" readOnly="true" value="<%=openid%>"/>
                                </div>
                            </div>
                       		<br>
                          
                            <div class="controls">
                                <label class="control-label" for="ousername" style="line-height:30px;">用户名：</label>
                                <div style="float:right;width:75%;">
                                    <input id="dusername"  type="text" style="width:100%;height: 30px;" name="ousername" data-required="1" readOnly="true" value="<%=username%>"/>
                                </div>
                            </div>
                       		<br>
                            <div class="controls">
                                <label class="control-label" for="requirename" style="line-height:30px;">需求：</label>
                                <div style="float:right;width:75%;">
                                    <input id="drequirename"  type="text" style="width:100%;height: 30px;" name="requirename" data-required="1" placeholder="需求"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="num" style="line-height:30px;">数量：</label>
                                <div style="float:right;width:75%;">
                                    <input id="dnum"  type="text" style="width:100%;height: 30px;" name="num" data-required="1" placeholder="数量"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="oconusername" style="line-height:30px;">联系人：</label>
                                <div style="float:right;width:75%;">
                                    <input id="dconusername"  type="text" style="width:100%;height: 30px;" name="oconusername" data-required="1" placeholder="联系人" value="<%=username%>"/>
                                </div>
                            </div>
                            <br>
                            <div class="controls">
                                <label class="control-label" for="ocontel" style="line-height:30px;">联系方式：</label>
                                <div style="float:right;width:75%;">
                                    <input id="dcontel"  type="text" style="width:100%;height: 30px;" name="ocontel" data-required="1" placeholder="联系方式" value="<%=phone%>"/>
                                </div>
                            </div>
                            <br>
                               <div class="controls">
                                    <label class="control-label" for="dtype" style="line-height:30px;">需求类型：</label>
                                    <div style="float:right;width:75%;">
                                        <select id="dtype" name="dtype" style="width:100%; height: 30px;padding: 4px 6px;margin-bottom: 10px;font-size: 14px;line-height: 20px;">
                                            <option value="">请选择需求类型</option>
                                            <option value="办公用品">办公用品</option>
                                            <option value="学习用品">学习用品</option>
                                            <option value="生活用品">生活用品</option>
                                            <option value="建筑材料">建筑材料</option>
                                        </select>
                                    </div>
                                </div>
                            <div id="ediv"  style="margin-left: auto;margin-right: auto;display: none;">
                                <button id="esub" class="btn btn-large" style="width: 100%;background:#ee8919;" type="submit" onclick="editOrder();return false;">提交</button>
                            </div>
                        </div>

                        <div  class="container" id="orderlist" style="background-color:#ffffff;">
                            <br>
                            <div style="width: 90%;">
                                <div class="btn-group" style="width:90%;">
                                    <button id="sub" type="button" class="btn" style="width: 50%;background:#ee8919;" onclick="OrderList();">商会意向</button>
                                    <button id="push" type="button" class="btn btn-default" style="width: 50%" onclick="MyOrder();">我的意向</button>
                                </div>
                                    <button type="button" class="btn" style="position: absolute;right: 5%;background:#ee8919;" onclick="add();return false;">
                                        <span class="glyphicon glyphicon-list-alt"></span>
                                    </button>
                            </div>
                            <br>
                            <div class="input-group" style="margin-left: auto;margin-right: auto;">
                                <input id="search" type="text" class="form-control" style="height: 30px;">
                                     <span class="input-group-btn">
                                         <button class="btn btn-default" type="button" onclick="search();"> <span class="glyphicon glyphicon-search"></span></button>
                                     </span>
                            </div>
                            <div id="list">

                            </div>
                        </div>

				</div>


 <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.glide.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/bootstrap-dialog.js"></script>
<script type="text/javascript">

    var selectedTr = null;

    function showMyList(){
    	
      
         $.ajax({
            type: "POST",
            url: "<%=basePath%>RequireOrderController/ShowAllOrder",
            cache:false ,
            dataType:'json',
            async: false,
            success: function (data) {
                var length = data.length;
                for(var i = 0;i<length;i++) {
                    var html = "<div style='width:100%;'>";
                    html += "<br><div style='border-style:groove;border-radius:10px;background-color: #ffffff;' onclick='detail(this);'>";
                    html += "<div><span  id='lid' style='display:none;'>"+data[i].id+"</span>"
                    html += "<div><span style='font-weight: bold;margin-left: 5%;'>需求内容：</span><span id='lname' style='font-weight: bold;'>"+data[i].require+"</span></div><br>";
                    html += "<div><span style='margin-left: 5%;'>数量：</span><span id='lnum'>"+data[i].num+"</span><span style='margin-left: 20%;'>需求类型：</span><span id='ltype'>"+data[i].type+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>联系人：</span><span id='lconname'>"+data[i].conname+"</span><span style='margin-left: 15%;'>联系方式：</span><span id='lcontel'>"+data[i].phone+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>日期：</span><span id='ldate'>"+data[i].createTime+"</span><span style='margin-left: 15%;' id='lstatus'>"+data[i].requirestatus+"</span></div>";
                    html += "<br></div></div>";
                    $('#list').append(html);
                }
            }
         });
    }

   

    function eback(){
        document.getElementById("drequirename").readOnly = true;
        document.getElementById("dnum").readOnly = true;
        document.getElementById("dconusername").readOnly = true;
        document.getElementById("dcontel").readOnly = true;
        document.getElementById("dtype").disabled = true;
        $("#erequirename").css("background-color", "#CCCCCC");
        $("#enum").css("background-color", "#CCCCCC");
        $("#econname").css("background-color", "#CCCCCC");
        $("#econtel").css("background-color", "#CCCCCC");
        $("#etype").css("background-color", "#CCCCCC");
        
        $("#ediv").hide();
        $("#back").show();
        $("#eback").hide();
        $("#ebutton").show();
    }

    function add(){
        $('#orderlist').hide();
        $('#order').show();
    }

    function back(){
        $('#orderlist').show();
        $('#order').hide();
    }

    function goback(){

        $('#orderlist').show();
        $('#detail').hide();
    }

    function addOrder(){
        var postData = {
            username:document.getElementById("ousername").value,
            userid:document.getElementById("openid").value,
            conusername:document.getElementById("oconusername").value,
            phone:document.getElementById("ocontel").value,
            require:document.getElementById("requirename").value,
            num: document.getElementById("num").value,
            type:document.getElementById("type").value
        };
        $.ajax({
            type:"POST",
            url:"<%=basePath%>RequireOrderController/AddOrder",
            async:false,
            data:postData,
            success:function(data){
                if (data == "OK") {
                    window.location.href="morderlist.jsp";
                } else {
                    alert(data);
                }
            }
        });
    }

    function edit(){
        document.getElementById("drequirename").readOnly = false;
        document.getElementById("dnum").readOnly = false;
        document.getElementById("dconusername").readOnly = false;
        document.getElementById("dcontel").readOnly = false;
        document.getElementById("dtype").disabled = false;
        $("#drequirename").css("background-color", "");
        $("#dnum").css("background-color", "");
        $("#dconusername").css("background-color", "");
        $("#dcontel").css("background-color", "");
        $("#dtype").css("background-color", "");
        $("#ediv").show();
        $("#back").hide();
        $("#eback").show();
        $("#ebutton").hide();
    }

    function editOrder(){
        var postData = {
        id:document.getElementById("did").value,
        conusername:document.getElementById("dconusername").value,
        phone:document.getElementById("dcontel").value,
            require:document.getElementById("drequirename").value,
            num: document.getElementById("dnum").value,
            type:document.getElementById("dtype").value
        };
        $.ajax({
            type:"POST",
            url:"<%=basePath%>RequireOrderController/UpdateOrder",
            async:false,
            data:postData,
            success:function(data){
                if (data == "OK") {
                    window.location.href="morderlist.jsp";
                } else {
                    alert(data);
                }
            }
        });
    }
//    function detail(obj){
//
//        selectedTr = obj;
//        alert(selectedTr.cells[1].innerHTML);
//        var dreuirename = selectedTr.cells[1].innerHTML;
//        document.getElementById("dusername" ).value=document.getElementById("ousername").value;
//        document.getElementById("drequirename").value=selectedTr.cells[1].innerHTML;
//        document.getElementById("dnum").value=selectedTr.cells[2].innerHTML;
//        document.getElementById("dtype" ).value=selectedTr.cells[3].innerHTML;
//        document.getElementById("ddate").value=selectedTr.cells[4].innerHTML;
//        document.getElementById("dstatus").value= selectedTr.cells[5].innerHTML;
//        $('#orderlist').hide();
//        $('#detail').show();
//    }

    function search(){
        $('#list>div').remove();
        var postData = {
            search:document.getElementById("search").value,
//            username:document.getElementById("ousername").value
            username:"asd"
        };
        $.ajax({
            type: "POST",
            url: "<%=basePath%>RequireOrderController/Search",
            cache:false ,
            dataType:'json',
            data: postData,
            async: false,
            success: function (data) {
                var length = data.length;
                for(var i = 0;i<length;i++) {
                    var html = "<div style='width:100%;'>";
                    html += "<br><div style='border-style:groove;border-radius:10px;background-color: #ffffff;' onclick='detail(this);'>";
                    html += "<div><span  id='lid' style='display:none;'>"+data[i].id+"</span>"
                    html += "<div><span style='font-weight: bold;margin-left: 5%;'>需求内容：</span><span id='lname' style='font-weight: bold;'>"+data[i].require+"</span></div><br>";
                    html += "<div><span style='margin-left: 5%;'>数量：</span><span id='lnum'>"+data[i].num+"</span><span style='margin-left: 20%;'>需求类型：</span><span id='ltype'>"+data[i].requiretype+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>联系人：</span><span id='lconname'>"+data[i].conname+"</span><span style='margin-left: 15%;'>联系方式：</span><span id='lcontel'>"+data[i].phone+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>日期：</span><span id='ldate'>"+data[i].createTime+"</span><span style='margin-left: 15%;' id='lstatus'>"+data[i].requirestatus+"</span></div>";
                    html += "<br></div></div>";
                    $('#list').append(html);
                }
            }
        });
    }

    function MyOrder(){
    	
        $('#sub').removeClass("btn-primary").css("background","none");
        $('#push').removeClass("btn-default").css("background","#ee8919");
//        $("#list").remove()
        $('#list>div').remove();
        var postData = {
        	  openid:document.getElementById("openid").value
        		      
//            username:document.getElementById("ousername").value
           // username:"asd"
        };
        $.ajax({
            type: "POST",
            url: "<%=basePath%>RequireOrderController/ShowMyOrder",
            cache:false ,
            dataType:'json',
            data: postData,
            async: false,
            success: function (data) {
                var length = data.length;
                for(var i = 0;i<length;i++) {
                    var html = "<div style='width:100%;'>";
                    html += "<br><div style='border-style:groove;border-radius:10px;background-color: #ffffff;' onclick='detail(this);'>";
                    html += "<div><span  id='lid' style='display:none;'>"+data[i].id+"</span>"
                    html += "<div><span style='font-weight: bold;margin-left: 5%;'>需求内容：</span><span id='lname' style='font-weight: bold;'>"+data[i].require+"</span></div><br>";
                    html += "<div><span style='margin-left: 5%;'>数量：</span><span id='lnum'>"+data[i].num+"</span><span style='margin-left: 20%;'>需求类型：</span><span id='ltype'>"+data[i].type+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>联系人：</span><span id='lconname'>"+data[i].conusername+"</span><span style='margin-left: 15%;'>联系方式：</span><span id='lcontel'>"+data[i].phone+"</span></div>";
                    html += "<div><span style='margin-left: 5%;'>日期：</span><span id='ldate'>"+data[i].createTime+"</span><span style='margin-left: 15%;' id='lstatus'>"+data[i].requirestatus+"</span></div>";
                    html += "<br></div></div>";
                    $('#list').append(html);
                }
            }
        });
    }

    function detail(obj){
        $('#detail').show();
        var id = $(obj).find('#lid').html();
        var name = $(obj).find('#lname').html();
        var num = $(obj).find('#lnum').html();
        var type = $(obj).find('#ltype').html();
        var conname = $(obj).find('#lconname').html();
        var contel = $(obj).find('#lcontel').html();
        var date = $(obj).find('#ldate').html();
        var status = $(obj).find('#lstatus').html();

   
        $('#did').val(id);
        $('#drequirename').val(name);
        $('#dnum').val(num);
        $("#dtype").val(type);
        $('#dconusername').val(conname);
        $('#dcontel').val(contel);
      

        $('#orderlist').hide();
    }
    
    function OrderList(){
        $('#push').removeClass("btn-primary").css("background","none");
        $('#sub').removeClass("btn-default").css("background","#ee8919");
        $('#list>div').remove();
        showMyList();
    }
</script>
</body>
</html>