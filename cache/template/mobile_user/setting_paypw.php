
<?php include(pe_tpl('header.html'));?>
<div class="pagetop">
	<div class="fh"><a href="user.php?mod=setting&act=base"></a></div>
	<div><?php echo $menutitle ?></div>
	<div class="cd"><a href="javascript:top_menu();"></a></div>
	<?php include(pe_tpl('top_menu.html'));?>
</div>
<div class="main">
	<form method="post" id="form">
	<div class="zc_box2">
		<?php if($user['user_paypw']):?>
		<div class="zc_list">
			<div class="zc_name">当前密码</div>
			<div class="zc_text"><input type="password" name="user_oldpw" placeholder="当前支付密码" /></div>
		</div>
		<?php endif;?>
		<div class="zc_list">
			<div class="zc_name">新支付密码</div>
			<div class="zc_text"><input type="password" name="user_pw" placeholder="新支付密码" /></div>
		</div>
		<div class="zc_list">
			<div class="zc_name">确认新密码</div>
			<div class="zc_text"><input type="password" name="user_pw1" placeholder="确认新支付密码" /></div>
		</div>
	</div>
	<div class="loginbtn" style="margin:20px 10px;">
		<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
		<input type="hidden" name="pesubmit" />
		<input type="button" value="提 交" />
	</div>
	</form>
</div>
<script type="text/javascript">
$(function(){
	$(":button").click(function(){
		/*if ($(":input[name='user_oldpw']").val().length == 0) {
			app_tip('请输入原密码');
			return false;
		}
		if ($(":input[name='user_pw']").val().length < 6 || $(":input[name='user_pw']").val().length > 20) {
			app_tip('新密码为6-20位字符');
			return false;
		}
		if ($(":input[name='user_pw1']").val().length < 6 || $(":input[name='user_pw1']").val().length > 20) {
			app_tip('确认密码为6-20位字符');
			return false;
		}
		if ($(":input[name='user_pw']").val() != $(":input[name='user_pw1']").val()) {
			app_tip('新密码与确认密码不一致');
			return false;
		}*/
		app_submit("<?php echo pe_nowurl() ?>", function(json){
			if (json.result) {
				var url = '<?php echo $_g_fromto ?>' ? '<?php echo $_g_fromto ?>' : 'user.php?mod=setting&act=base';
				app_open(url, 1000);
			}
		});
	})
})
</script>
<?php include(pe_tpl('footer.html'));?>