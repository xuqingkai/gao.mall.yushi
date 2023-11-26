<?php include(pe_tpl('do_header.html'));?>
<div class="login_bg">
	<div style="width:1000px; margin:0 auto; position:relative">
	<div class="login_r" style="width:300px; height:400px; top:-50px;  position:absolute; right:0;">
		<div class="zctt"><?php echo $menutitle ?></div>
		<form method="post" id="form">
		<div class="zc_input1 mat10">
			登录帐号：<input type="text" name="user_name" class="login_input1" placeholder="手机号码 / 邮箱" />
		</div>
		<div class="zc_input1 mat10" style="position:relative">
			验&nbsp;&nbsp;证 码：<input type="text" name="yzm" class="login_input1" placeholder="手机 / 邮箱验证码" style="width:100px;" />
			<div class="user_yzm" href="<?php echo $pe['host_root'] ?>index.php?mod=check&act=send_yzm&type=getpw" onclick="pe_sendyzm(this, 'user_name')">获取验证码</div>
		</div>
		<div class="zc_input1 mat10">
			设置新密码：<input type="text" name="user_pw" class="login_input1" placeholder="设置6-20位新密码" onfocus="this.type='password'" style="width:190px;" />
		</div>
		<div class="zc_input1 mat10">
			确认新密码：<input type="text" name="user_pw1" class="login_input1" placeholder="再次输入新密码" onfocus="this.type='password'" style="width:190px;" />
		</div>
		<div class="mat20">
			<input type="hidden" name="pesubmit" />
			<input type="button" class="loginbtn1" value="提 交" />
		</div>
		</form>
		<div class="login_other mat20">
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=register" class="mar10">免费注册</a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=login" class="mal10">用户登录</a>
		</div>
	</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$(":button").click(function(){
		if ($(":input[name='user_name']").val() == '') {
			pe_tip('请填写登录帐号');
			return false;
		}
		if ($(":input[name='yzm']").val() == '') {
			pe_tip('请填写验证码');
			return false;
		}
		if ($(":input[name='user_pw']").val() == '') {
			pe_tip('请填写新密码');
			return false;
		}
		if ($(":input[name='user_pw1']").val() == '') {
			pe_tip('请填写确认密码');
			return false;
		}
		if ($(":input[name='user_pw']").val() != $(":input[name='user_pw1']").val()) {
			pe_tip('新密码与确认密码不一致');
			return false;
		}
		$(this).val('提交中...');
		pe_submit('user.php?mod=do&act=getpw', function(json){
			if (json.result) {
				pe_open('user.php', 1000);
			}
			else {
	    		$(":button").val('提交');			
			}
		})
	})
})
</script>
<?php include(pe_tpl('do_footer.html'));?>