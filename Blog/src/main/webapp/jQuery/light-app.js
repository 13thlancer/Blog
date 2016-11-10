$(function() {
	$body = $("body");
	
	//判断是否运行于云之家App中
	function isYzjApp () {
		return navigator.userAgent.match(/Qing\/.*;(iPhone|Android).*/)?true:false;
	}
	
	function getOS (){  //获取操作系统平台，IOS或安卓
	    return ( navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/)
	    ? 'ios' : navigator.userAgent.match(/Android/i)
	    ? 'android' : '' );
	}
	
	function isMobile () {
		var os = getOS();
		return os == 'ios' || os == 'android';
	}
	
	var ticket = getUrlParam('ticket');
	//获取url中的参数
	function getUrlParam(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		var r = window.location.search.substr(1).match(reg); //匹配目标参数
		if (r != null)
			return unescape(r[2]);
		return null; //返回参数值
	}
	
	if (!isYzjApp()) {
		$body.html("Hello！当前不在云之家App中！开启您的轻应用之旅吧！");
		if (!isMobile()) {
			$body.html("Hello！当前不在手机端上！开启您的轻应用之旅吧！");
		}
	} else {
		XuntongJSBridge.call('getPersonInfo', {}, function(result) {
			if (null != result && undefined != result) {
				var desc = "返回的数据: <p/>" + JSON.stringify(result);
				var success = String(result.success);
				if (success == "true") {
//					$body.html(desc + "。<p/>Hello！" + result.data.name + "，开启您的轻应用之旅吧！");
					 var data = {
		    					openid:result.data.openId,
		    	   				name:result.data.name
		    	   };
		    		$.ajax({
		    			type:"post",
		    			url:"<%=basePath%>LoginController/LogBind",
		    			dataType:"json",
		    			data:data,
		    			
		    			success:function(data){
		    				window.location.href="NewsList.jsp";
		    			}
		    		})
				} else if (success == "false") {
					$body.html(desc + "。<p/>返回失败！错误信息: " + result.error);
				} else {
					$body.html("返回有问题！");
				}
			} else {
				$body.html("返回失败！");
			}
		});
	}
	
});