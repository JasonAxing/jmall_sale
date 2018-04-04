<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Keywords" content="关键词123">
    <meta name="Description" content="描述">
    <link rel="stylesheet" type="text/css" href="css/login_buy.css">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <!-- <script src="js/checkcode.js"></script> -->
	<title>登录页面</title>
	<style type="text/css">
		#body{
			background: #e3e0e0;
			opacity: .8;
		}
	</style>
	<script type="text/javascript">
		function to_submit(){
			$("#login_form").submit();
		}
	</script>
</head>
<body id="body">
	<div id="content">
	   <!-- login-wrapk开始 -->
	  <div class="login-wrap">
	    <!-- w开始 -->
	  	<div class="w">
	           <!-- *****************登录页面开始************ -->
	  		<div class="login-form" align="center">
	  			<div class="login-tab login-tab-l">
	  				<a href="javascript:;">扫码登录</a>
	  			</div>
	  			<div class="login-tab login-tab-r">
	  				<a href="javascript:;">账号登录</a>
	  			</div>
	  			<!-- login-box开始（账户登录） -->
	  			<div class="login-box" style="visibility: visible; display:block">
	  			  <div class="mt tab-h"></div>
	  			  <!-- 登录提示信息开始 -->
	  			  <div class="msg-wrap">
	  			  	  <div class="msg-warn">
	  					  <b></b>
	  					公共场所不建议自动登录，以防账号丢失
	  				  </div>
	  				  <div class="msg-error hide">
	  					  <b></b>
	  				  </div>
	  			  </div>
	  			  <!-- 登录提示信息结束 -->
	  			  <div class="mc">
	  			  	<div class="form">
	  			  		<form action="login.do" id="login_form" method="post">
	  						<input type="hidden" value="goto_checkOrder.do" name="redirect">
	  			  			<!-- 用户名输入框fore1 -->
	  			  			<div class="item item-fore1 item-error">
	  			  				<label for="loginname" class="login-label name-label"></label>
	  			  				<input type="text" name="yh_mch" id="loginname" class="itxt" tabindex="1" autocomplete="off" placeholder="邮箱/用户名/已验证手机">
	  			  				<span class="clear-btn" style="display:inline;"></span>
	  			  			</div>
	  			  			<!-- 密码输入框fore2 -->
	  			  			<div id="entry" class="item item-fore2" style="visibility: visible">
	  			  				<label class="login-label pwd-label" for="nloginpwd"></label>
	  			  				<input type="password" name="yh_mm" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" tabindex="2" autocomplete="off" placeholder="密码">
	  			  				<span class="clear-btn" style="display: inline;"></span>
	  			  				<span class="capslock" style="display: none;">
	  			  					<b></b>
	  			  					大小写锁定已打开
	  			  				</span>
	  			  			</div>
	  			  			<!-- 图片验证码开始 fore3-->
	                   <!--      <div id="o-authcode" class="item item-vcode item-fore3 hide ">
	                        	<input type="text" name="" id="authcode" class="itxt itxt02" name="authcode" tabindex="3">
	                        	<input type = "button" id="code"  class="verify-code">
	                        	<a href="javascript:;" onclick='createCode();'>看不清换一张</a>
	                        </div> -->
	                        <!-- 自动登录开始fore4 -->
	                        <div class="item item-fore4">
	                        	<div class="safe">
	                        		<span>
	                        			<input type="checkbox" name="chkRememberMe" id="autologin" tabindex="3">
	                        			<label for>自动登录</label>
	                        		</span>
	                        		<span class="forget-pw-safe">
	                        			<a href="">忘记密码</a>
	                        		</span>
	                        	</div>
	                        </div>
	                        <!-- 登录按钮开始 -->
	                        <div class="item item-fore5">
	                        	<div class="login-btn">
	                        		<a href="javascript:;" class="btn-img btn-entry" id="loginsubmit" tabindex="6" onclick="to_submit()">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
	                        	</div>
	                        </div>
	  			  		</form>
	  			  	</div>
	  			  </div>
	  			  <!-- mc结束 2input+自动登录+登录按钮-->
	  				
	  			</div>
	  			<!-- login-box结束（账户登录） -->
	  			<!-- 二维码登陆开始 （扫码登录）-->
	  			<div class="qrcode-login">
	  				<div class="mc">
	  					<div class="qrcode-error-2016">
	  						<div class="qrcode-error-mask"></div>
	  						<p class="err-cont">服务器出错</p>
	  						<a href="javascript:void(0)" class="refresh-btn">刷新</a>
	  					</div>
	  					<div class="qrcode-main">
	  					    
	  						<div class="qrcode-img" style="">
	  							<img src="images/code.png" alt="">
	  							<div class="qrcode-error-02 hide" id="J-qrcodeerror" style="display: none;">
	  								<a href="#none">
	  									<span class="error-icon"></span>
	  									<div class="txt">
	  									   网络开小差咯
	  									   <span class="ml10">刷新二维码</span>
	  									 </div>
	  								</a>
	  							</div>
	  						</div>
	  						 
	  						<div class="qrcode-help" style="display: none;"></div>
	  					</div>
	  					<!-- 二维码结束 -->
	  					<div class="qrcode-panel">
	  						<ul>
	  							<li class="fore1">
	  								<span>打开</span>
	  								<a href="">
	  									<span class="red">手机京东</span>
	  								</a>
	  							</li>
	  							<li>扫描二维码</li>
	  						</ul>
	  					</div>
	  					<!-- panel结束 -->
	  					<div class="coagent qr-coagent" id="qrCoagent" style="display: block; visibility: visible;">
	  						<ul>
	  							<li><b></b><em>免输入</em></li>
	  							<li><b class="faster"></b><em>更快&nbsp;</em></li>
	  							<li><b class="more-safe"></b><em>更安全</em></li>
	  						</ul>
	  					</div>
	  				</div>
	  				<!-- mc结束 -->
	  			</div>
	  			<!-- 二维码登录结束 （扫码登录）-->
	  			<!-- 登录框底部登录方式 开始qq,微信-->
	  			<div class="coagent" id="kbCoagent">
	  				<ul>
	  					<li>
	  						<a href="javascript:void(0)" onClick="return false;" class="pdl">
	  							<b class="QQ-icon"></b>
	  							<span>QQ</span>
	  						</a>
	  						<span class="line">|</span>
	  					</li>
	  					<li>
	  						<a href="javascript:void(0)" onClick="return false;" class="pdl">
	  							<b class="weixin-icon"></b>
	  							<span>微信</span>
	  						</a>
	  						<span class="line">|</span>
	  					</li>
	  					<li>
	  						<a href="javascript:void(0)" onClick="return false;">
	  							京东钱包
	  						</a>
	  						<span class="line">|</span>
	  					</li>
	  					<li class="extra-r">
	  					   <div class="regist-link">
	  						<a href="javascript:void(0)" onClick="return false;" class="">
	  							<b></b>立即注册
	  						</a>
	  					   </div>
	  					</li>
	  				</ul>
	  			</div>
	  			<!-- 登录框底部登录方式 结束qq,微信-->
	  		</div>
	  		  <!-- ************ 登录页面login-form结束************  -->
	  	</div>
	  	<!-- w结束 -->
	  	<!-- 中间广告部分开始 -->
	  	<!--<div class="login-banner" style="background-color: #fc3343">
	  		<div class="w">
	  			<div id="banner-bg" class="i-inner" style="background: url(picture/a1.jpg);"></div>
	  		</div>
	  	</div>-->
	  	<!-- 中间背景广告结束 -->
	  </div>
		<!-- login-wrap结束 -->
	</div>
<!-- 内容部分结束 -->
<!-- 底部页面开始 -->
<!--<div class="w">
	<div id="footer-2013">
		<div class="links">
			<a href="">关于我们</a>
			|
			<a href="">联系我们</a>
			|
			<a href="">人才招聘</a>
			|
			<a href="">商家入驻</a>
			|
			<a href="">广告服务</a>
			|
			<a href="">手机京东</a>
			|
			<a href="">友情链接</a>
			|
			<a href="">销售联盟</a>
			|
			<a href="">京东社区</a>
			|
			<a href="">京东公益</a>
			|
			<a href="">English site</a>
		</div>
	</div>
</div>-->
<!-- 底部页面结束 -->
	
</body>

<script type="text/javascript">
	//alert($)
	//微信登录和账号登录切换
	$(".login-tab-r").click(function(){
		$(".login-box").css({"display":"block","visibility":"visible"});
		$(".qrcode-login").css({"display":"none"})				
	});
	$(".login-tab-l").click(function(){
		$(".login-box").css({"display":"none"});
		$(".qrcode-login").css({"display":"block","visibility":"visible"})				
	});
	//点击微信图片显示帮助
	$(".qrcode-img").hover(function(){
		$(".qrcode-img").css({"left": "0"});
		$(".qrcode-help").css({"display":"block"});				
	},function(){
		$(".qrcode-img").css({"left": "64px"});
		$(".qrcode-help").css({"display":"none"});	
	});
	//确认输入用户名密码后，显示验证码
	/* $("#nloginpwd").blur(function(){
		if(($("#loginname").val() !="" )&&($("#nloginpwd").val() !="")){
		$("#o-authcode").css({"display":"block"});	
	}
	})  */
	/* createCode(); */
	
</script>
</html>