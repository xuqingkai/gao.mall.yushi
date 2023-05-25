<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $seo['title'] ?></title>
<meta name="keywords" content="<?php echo $seo['keywords'] ?>" />
<meta name="description" content="<?php echo $seo['description'] ?>" />
<link rel="shortcut icon" type="image/ico" href="<?php echo $pe['host_root'] ?>/favicon.ico">
<link type="text/css" rel="stylesheet" href="<?php echo $pe['host_admintpl'] ?>css/style.css" />
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/global.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/arttpl.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/layer/layer.js"></script>
<style type="text/css">
html,body{font-family:'Microsoft Yahei','Simsun',"宋体"; height:100%; width:100%}
input{outline:none;}
.clear-fix:after,.login-footer .content:after,.login-header .content:after,.login-wrap .content:after,.login-wzp-header .content:after,.login-wzp-wrap .content:after{content:'\0020';display:block;height:0;clear:both;visibility:hidden}
.input-l,.input-s,.input-txt{padding-left:9px;height:32px;line-height:32px;border:1px solid #e0e0e0;-webkit-border-radius:selectBorderRadius;-moz-border-radius:selectBorderRadius;border-radius:selectBorderRadius}
.f-left{display:inline;float:left}
.f-right{display:inline;float:right}
.un-dis{display:none}
.bg-gray{background:#f1f1f1}
.login-bg{position:relative;overflow:hidden}
.psw-wrap{max-width:1100px;margin:0 auto}
.login-wzp-header .content,.login-wzp-wrap .content{max-width:1200px;margin:0 auto}
.blue{color:#0e8cff}
.icon-loading{position:fixed;top:50%;left:50%;width:32px;height:32px;margin-left:-16px;margin-right:-16px;background:url(<?php echo $pe['host_admintpl'] ?>images/loading.gif) center center no-repeat;z-index:99999}
.login-header,.login-wzp-header{z-index:99997}
.merchant-header{background:#fff;border-bottom:1px solid #d5dfe7}
.login-header .content{width:1100px;margin:0 auto}
.login-header .content h1{font-size:16px;height:70px;line-height:70px;display:inline;float:left;width:150px;background:url(<?php echo $pe['host_admintpl'] ?>images/login_logo.png) left center no-repeat;padding:0 0 0 180px}
.login-header .content h1 a{color:#e29159}
.login-header .content .f-right{display:inline;float:right;line-height:70px;font-size:16px;color:#222}
.login-header .content .f-right .blue{color:#0e8cff}
.login-wrap{background:url(<?php echo $pe['host_admintpl'] ?>images/login_bg.png) center bottom no-repeat #0e8cff;height:100%}
.login-wrap .content{background:url(<?php echo $pe['host_admintpl'] ?>images/login_title.png) 0 70px no-repeat;width:1100px;margin:0 auto;padding:70px 0}
.login-wrap .f-right{background:#fff}
.login-wrap .f-right dl{padding:30px}
.login-wrap .f-right dt,.login-wrap .f-right h2{font-size:20px;color:#888;padding:0 0 30px;font-weight:200}
.login-wrap .f-right li{margin:0 0 20px}
.login-wrap .f-right li.tips{margin:20px 0 0;color:red}
.login-wrap .f-right li.tab{margin:0}
.login-wrap .f-right li.tab a{color:#0e8cff}
.login-wrap .f-right .common{width:300px;height:60px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
.login-wrap .f-right .operate,.login-wrap .f-right .password,.login-wrap .f-right .user{border:1px solid #e5e5e5;padding:0 0 0 50px}
.login-wrap .f-right .operate:hover,.login-wrap .f-right .password:hover,.login-wrap .f-right .user:hover{box-shadow:0 0 4px 0 rgba(89,117,225,.5);border:1px solid #0e8cff}
.login-wrap .f-right .operate .input-txt,.login-wrap .f-right .password .input-txt,.login-wrap .f-right .user .input-txt{width:100%;padding:11px 0;height:auto;border:none;font-size:16px}
.login-wrap .f-right .operate input:focus,.login-wrap .f-right .password input:focus,.login-wrap .f-right .user input:focus{outline:0;outline-offset:0;box-shadow:none}
.login-wrap .f-right .user{background:url(<?php echo $pe['host_admintpl'] ?>images/login_user.png) 15px center no-repeat}
.login-wrap .f-right .password{background:url(<?php echo $pe['host_admintpl'] ?>images/login_pwd.png) 15px center no-repeat}
.login-wrap .f-right .operate{background:url(<?php echo $pe['host_admintpl'] ?>images/login_operate.png) 15px center no-repeat}
.login-wrap .f-right .submit{width:100%;height:60px;line-height:60px;font-size:20px}
.btn-blue{line-height:28px}

@media screen and (max-width:1200px){.login-header{padding:0 10px}
.login-header .content{width:100%;padding:10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
.login-wrap .content{width:100%;padding:70px 10px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;background:url(<?php echo $pe['host_admintpl'] ?>images/login_title.png) 10px 70px no-repeat}
}
@media screen and (max-width:1010px){.login-wrap{background-size:100% auto}
.login-wrap .content{background-size:35% auto}
}
@media screen and (max-width:940px){.login-bg{overflow-y:auto}
.login-wrap .content{padding:10px;background-position:10px 10px}
}

.btn-blue{background:#0e8cff;border:1px solid #0e8cff;color:#fff;padding:0 10px;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px;-webkit-transition:all .1s ease;-moz-transition:all .1s ease;-ms-transition:all .1s ease;-o-transition:all .1s ease;transition:all .1s ease}
.btn-blue:hover{background:#0072da}
.btn-blue:active{background:#0e8cff;-webkit-box-shadow:inset 0 4px 4px #0057a7;-moz-box-shadow:inset 0 4px 4px #0057a7;box-shadow:inset 0 4px 4px #0057a7}
.btn-purple{background:#5975e1;border:1px solid #5975e1}
.btn-purple:hover{background:#2e51d9}
.btn-purple:active{background:#5975e1;-webkit-box-shadow:inset 0 4px 4px #203fb4;-moz-box-shadow:inset 0 4px 4px #203fb4;box-shadow:inset 0 4px 4px #203fb4}
.login-wzp-header .content h1{font-size:16px;height:84px;line-height:84px;display:inline;float:left;width:300px;background:url(<?php echo $pe['host_admintpl'] ?>images/login_wzp_logo.png) left center no-repeat}
.login-wzp-header .content h1 a{color:#e29159}
.login-wzp-header .content .f-right{display:inline;float:right;line-height:84px}
.login-wzp-header .content .f-right a{font-size:16px;color:#777;border:1px solid #f0f0f0;padding:6px 16px;border-radius:4px}
.login-wzp-header .content .f-right a:hover{border:1px solid #5975e1;color:#5975e1;text-decoration:none}
.login-wzp-wrap{width:100%;min-width:1000px;background-image:-webkit-linear-gradient(45deg,#5d5fd8,#7384e8);background-image:linear-gradient(45deg,#5d5fd8,#7384e8)}
.login-wzp-wrap .content{height:580px;background:url(<?php echo $pe['host_admintpl'] ?>images/login_wzp_bg.png?version=645564465456) left top no-repeat}
.login-wzp-wrap .login-box{background:#fff;margin-top:62px}
.login-wzp-wrap .login-box dl dt{line-height:52px;font-size:20px;text-align:center;border-bottom:1px solid #f0f0f0;background:#fbfbfb}
.login-wzp-wrap .login-box dl dd{padding:24px}
.login-wzp-wrap .login-box dl dd ul li{margin:0 0 20px}
.login-wzp-wrap .login-box dl dd ul li.common{width:300px;height:48px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
.login-wzp-wrap .login-box dl dd ul li.tips{margin:0;color:red;height:20px;line-height:20px}
.login-wzp-wrap .login-box dl dd ul li.submit{margin:0}
.login-wzp-wrap .login-box dl dd ul li.submit button{width:100%;height:48px;line-height:48px;font-size:16px}
.login-wzp-wrap .login-box dl dd ul li.tab{margin:10px 0}
.login-wzp-wrap .login-box dl dd ul li.tab a{color:#5975e1}
.login-wzp-wrap .login-box dl dd ul li.download{padding:10px 0;border-bottom:1px solid #f0f0f0}
.login-wzp-wrap .login-box dl dd ul li.download.last{border:none;margin-bottom:0}
.login-wzp-wrap .login-box dl dd ul li.download .f-left{padding-left:52px}
.login-wzp-wrap .login-box dl dd ul li.download .f-left.bg-1{background:url(<?php echo $pe['host_admintpl'] ?>images/download_bg_1.png) left center no-repeat}
.login-wzp-wrap .login-box dl dd ul li.download .f-left.bg-2{background:url(<?php echo $pe['host_admintpl'] ?>images/download_bg_2.png) left center no-repeat}
.login-wzp-wrap .login-box dl dd ul li.download .f-left h2{font-weight:500;font-size:12px}
.login-wzp-wrap .login-box dl dd ul li.download .f-left p{font-size:12px;color:#5975e1}
.login-wzp-wrap .login-box dl dd ul li.download .f-right{padding:1px 0}
.login-wzp-wrap .login-box dl dd ul li.download .f-right a{box-sizing:border-box;display:block;line-height:28px;border-radius:28px;border:1px solid #f0f0f0;width:68px;padding-left:28px;background:url(<?php echo $pe['host_admintpl'] ?>images/down_arrow.png) 10px center no-repeat}
.login-wzp-footer h1,.login-wzp-footer p{line-height:36px;text-align:center}
.login-wzp-wrap .login-box dl dd ul li.download .f-right a:hover{border:1px solid #5975e1;text-decoration:none;color:#5975e1;background:url(<?php echo $pe['host_admintpl'] ?>images/down_arrow_on.png) 9px center no-repeat}
.login-wzp-wrap .login-box .operate,.login-wzp-wrap .login-box .password,.login-wzp-wrap .login-box .user{border:1px solid #ddd;padding:0 0 0 50px}
.login-wzp-wrap .login-box .operate:hover,.login-wzp-wrap .login-box .password:hover,.login-wzp-wrap .login-box .user:hover{box-shadow:0 0 4px 0 rgba(89,117,225,.5);border:1px solid #5975e1}
.login-wzp-wrap .login-box .operate .input-txt,.login-wzp-wrap .login-box .password .input-txt,.login-wzp-wrap .login-box .user .input-txt{width:100%;padding:7px 0;height:auto;border:none;font-size:16px}
.login-wzp-wrap .login-box .operate input:focus,.login-wzp-wrap .login-box .password input:focus,.login-wzp-wrap .login-box .user input:focus{outline:0;outline-offset:0;box-shadow:none}
.login-wzp-wrap .login-box .user{background:url(<?php echo $pe['host_admintpl'] ?>images/login_wzp_user.png) 15px center no-repeat}
.login-wzp-wrap .login-box .password{background:url(<?php echo $pe['host_admintpl'] ?>images/login_wzp_pwd.png) 15px center no-repeat}
.login-wzp-wrap .login-box .operate{background:url(<?php echo $pe['host_admintpl'] ?>images/login_wzp_operate.png) 15px center no-repeat}
.login-wzp-footer{background:#fff;color:#777;padding:30px 0}
.psw .content .psw-edit p span .blue,.psw .content ul li.on{color:#0e8cff}
.login-wzp-footer h1 em{font-size:12px}
.login-wzp-footer h1 span{padding-left:10px;font-size:16px;font-weight:500;vertical-align:middle}
.login-wzp-footer p{font-size:12px}
.internal-submit{width:300px;padding:30px;min-height:415px}
.internal-submit .loading{text-align:center;height:300px}
.internal-submit .icon-loading{position:static;display:inline-block;margin:0}
.internal-submit .success{background:url(<?php echo $pe['host_admintpl'] ?>images/success.png) left center no-repeat;padding:0 0 0 50px}
.internal-submit .error{background:url(<?php echo $pe['host_admintpl'] ?>images/error.png) left center no-repeat;padding:0 0 0 50px}
.internal-submit .status-box{line-height:30px}
.internal-submit .padding-40{padding:0 0 0 50px}
@media screen and (max-width:1040px){.login-wzp-header .content{padding:0 20px}
.login-wzp-wrap .content{padding:0 20px 0 0;height:500px;background-size:auto 100%}
}
.copy{margin:0 auto; width:100%;}
</style>
</head>
<body>



<div class="wrap">
     <div class="login-box ">
       <div class="login-wrap">
        <div class="content">
         <div class="f-left"></div>
           
                   <div class="f-right login-box-2">
                     <form method="post" id="form">
                     <input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
						<input type="hidden" name="pesubmit" />
                    <dl>
                      <dt>后台管理系统</dt> 
                      <dd> 
                      <ul>
                       <li class="common user"> <input class="input-txt internal-user opts-rule" type="text" name="admin_name" maxlength="16" placeholder="输入账号" ></li> 
                       <li class="common password"> <input class="input-txt internal-pass opts-rule" type="password" name="admin_pw" maxlength="32" placeholder="输入密码"></li> 
                       <li class="common operate"> <input class="input-txt internal-account opts-rule" type="text" name="authcode" style="width:60%" maxlength="4" placeholder="输入验证码"> <img src="<?php echo $pe['host_root'] ?>public/class/authcode.class.php?w=90&h=36" onclick="pe_yzm(this)" style=" float:right; padding-top:11px; padding-right:8px;" /></li> 
                       <li class="common">  <input class="btn-blue submit" type="button" value="登 录" /></li> 
                       <li class="internal-tips tips"></li> 
                      </ul> 
                      </dd> 
                      </dl> 
                    </form>
                   </div> 
                   <div class="f-right un-dis internal-submit"></div> 
                   </div> 
                   </div> 
                   <div class="login-footer" style="width:100%; margin:20px auto; text-align:center;">
                       <p>COPYRIGHT © 2015 - 2022 B2C商城系统 ALL RIGHTS RESERVED. </p>
                   </div> 
                   </div>  
                   <div class="psw-wrap"></div>
                   </div>


</body>
<script type="text/javascript">
$(function(){
	$(window).keydown(function (event) {
		if (event.keyCode == 13) $(":button").click();
	});
	$(":button").click(function(){
		if ($(":input[name='admin_name']").val() == '') {
			pe_tip('请填写登录帐号')
			return false;
		}
		if ($(":input[name='admin_pw']").val() == '') {
			pe_tip('请填写登录密码')
			return false;
		}
		
		pe_submit("webadmin.php?mod=do&act=login", function(json){
			if (json.result) {
				pe_open('webadmin.php', 1000);
			}
		})
	})
})
</script>
</html>