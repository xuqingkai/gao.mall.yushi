<?php include(pe_tpl('header.html'));?>
<style>body{background:#FFF!important;}</style>

<div class="login_top">
	<div class="zc_tt">用户登录</div>
	<div class="top_dl"><img src="<?php echo pe_thumb($cache_setting['wap_logo']) ?>"></div>
	<a class="u_fh" href="<?php echo $pe['host_root'] ?>"><i class="sy_ico"></i></a>
</div>
<form method="post" id="form">
<div class="zc_box1" style="padding:0 10px">
	<div class="zc_list">
		<div class="zc_mal zc_i1"><input type="text" name="user_name" class="zc_input1" placeholder="用户名 / 手机号 / 邮箱" /></div>
	</div>
	<div class="zc_list">
		<div class="zc_mal zc_i2"><input type="text" name="user_pw" class="zc_input1" placeholder="登录密码" onfocus="this.type='password'" /></div>
	</div>
</div>
<div class="loginbtn" style="margin:30px 20px;">
	<input type="hidden" name="pesubmit" />
	<input type="button" value="登 录" />
</div>
</form>
<div class="zh_zc1">
	<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=register&fromto=<?php echo urlencode($_g_fromto) ?>" class="mar10">免费注册</a> |
	<a href="<?php echo $pe['host_root'] ?>user.php?mod=do&act=getpw" class="mal10">忘记密码</a>
</div>
<script type="text/javascript">
$(function(){
	$(":button").click(function(){
		if ($(":input[name='user_name']").val() == '') {
			app_tip('请填写帐号');
			return false;
		}
		if ($(":input[name='user_pw']").val() == '') {
			app_tip('请填写密码');
			return false;
		}
		$(this).val('登录中...');
		app_submit('user.php?mod=do&act=login', function(json){
			if (json.result) {
				if ('<?php echo $_g_fromto ?>' != '') {
					app_open('<?php echo $_g_fromto ?>', 1000);
				}
				else {
					app_open('user.php', 1000);				
				}
			}
			else {
	    		$(":button").val('登 录');			
			}
		})
	})
})
</script>
<?php include(pe_tpl('footer.html'));?>