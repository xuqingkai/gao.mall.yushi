<?php include(pe_tpl('do_header.html'));?>
<div class="login_bg">
	<div style="width:1000px; margin:0 auto">
		<div class="login_r">
			<div class="zctt"><?php echo $menutitle ?></div>
			<form method="post" id="form">
			<div class="zc_input1">
				登录帐号：<input type="text" name="user_name" class="login_input1" placeholder="用户名 / 手机号 / 邮箱" />
			</div>
			<div class="zc_input1 mat20">
				登录密码：<input type="text" name="user_pw" class="login_input1" placeholder="登录密码" onfocus="this.type='password'" />
			</div>
			<div class="mat25">
				<input type="hidden" name="pesubmit" />
				<input type="button" class="loginbtn1" value="立即登录" />
			</div>
			</form>
			<div class="login_other mat20">
				<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=register" class="mar10">免费注册</a> |
				<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=getpw" class="mal10">忘记密码</a>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$(window).keydown(function (event) {
		if (event.keyCode == 13) $(":button").click();
	});
	$(":button").click(function(){
		if ($(":input[name='user_name']").val() == '') {
			pe_tip('请填写帐号');
			return false;
		}
		if ($(":input[name='user_pw']").val() == '') {
			pe_tip('请填写密码');
			return false;
		}
		$(this).val('登录中...');
		pe_submit('user.php?mod=do&act=login', function(json){
			if (json.result) {
				if ('<?php echo $_g_fromto ?>' != '') {
					pe_open('<?php echo $_g_fromto ?>', 1000);
				}
				else {
					pe_open('user.php', 1000);				
				}
			}
			else {
	    		$(":button").val('登 录');			
			}
		})
	})
})
</script>
<?php include(pe_tpl('do_footer.html'));?>