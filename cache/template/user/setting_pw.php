<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt">
			<a href="user.php?mod=setting&act=pw" <?php if($act=='pw'):?>class="sel"<?php endif;?>>登录密码<i></i></a>
			<a href="user.php?mod=setting&act=paypw" <?php if($act=='paypw'):?>class="sel"<?php endif;?>>支付密码<i></i></a>			
		</div>
		<div class="hy_table">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="text-align:right;" width="150"><span class="cred1">*</span> 当前密码：</td>
			<td><input type="password" name="user_oldpw" class="inputall input200" autocomplete="off" /></td>
		</tr>
		<tr>
			<td style="text-align:right;"><span class="cred1">*</span> 新登录密码：</td>
			<td><input type="password" name="user_pw" class="inputall input200" autocomplete="off" /></td>
		</tr>
		<tr>
			<td style="text-align:right;"><span class="cred1">*</span> 确认新密码：</td>
			<td><input type="password" name="user_pw1" class="inputall input200" autocomplete="off" /></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
				<input type="hidden" name="pesubmit" />
				<input type="button" value="提 交" class="tjbtn" />
			</td>
		</tr>
		</table>
		</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<script type="text/javascript">
$(function(){
	$(":button").click(function(){
		/*if ($(":input[name='user_oldpw']").val().length == 0) {
			pe_tip('请输入当前密码');
			return false;
		}
		if ($(":input[name='user_pw']").val().length < 6 || $(":input[name='user_pw']").val().length > 20) {
			pe_tip('新密码为6-20位字符');
			return false;
		}
		if ($(":input[name='user_pw1']").val().length < 6 || $(":input[name='user_pw1']").val().length > 20) {
			pe_tip('确认密码为6-20位字符');
			return false;
		}
		if ($(":input[name='user_pw']").val() != $(":input[name='user_pw1']").val()) {
			pe_tip('新密码与确认密码不一致');
			return false;
		}*/
		pe_submit('<?php echo pe_nowurl() ?>', function(json){
			if (json.result) pe_open('reload', 1000);
		});
	})
})
</script>
<?php include(pe_tpl('footer.html'));?>