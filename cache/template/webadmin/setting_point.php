<?php include(pe_tpl('header.html','admin'));?>
<div class="right">
	<?php include(pe_tpl('setting_menu.html','admin'));?>
	<div class="right_main">
		<form method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20">
		<tr>
			<td align="right" width="150">积分功能：</td>
			<td>
				<?php foreach(array(1=>'开启', 0=>'关闭') as $k=>$v):?>
				<label style="margin-right:20px"><input type="radio" name="info[point_state]" value="<?php echo $k ?>" <?php if($info['point_state']['setting_value']==$k):?>checked="checked"<?php endif;?> /> <?php echo $v ?></label>
				<?php endforeach;?>	
			</td>
		</tr>
		<tr>
			<td align="right">注册赠送：</td>
			<td><input type="text" name="info[point_reg]" value="<?php echo $info['point_reg']['setting_value'] ?>" class="inputall input100" /> 积分</td>
		</tr>
		<tr>
			<td align="right">登录赠送：</td>
			<td><input type="text" name="info[point_login]" value="<?php echo $info['point_login']['setting_value'] ?>" class="inputall input100" /> 积分</td>
		</tr>
		<tr>
			<td align="right">评价赠送：</td>
			<td><input type="text" name="info[point_comment]" value="<?php echo $info['point_comment']['setting_value'] ?>" class="inputall input100" /> 积分</td>
		</tr>
		<tr>
			<td align="right">积分抵现：</td>
			<td><input type="text" name="info[point_money]" value="<?php echo $info['point_money']['setting_value'] ?>" class="inputall input100" /> 积分 = 1元 <span class="c888">(用户在结算时可以用积分抵减现金)</span></td>
		</tr>
		<!--<tr>
			<td align="right">推广送分：</td>
			<td><input type="text" name="info[point_tg]" value="<?php echo $info['point_tg']['setting_value'] ?>" class="inputall input100" /> 积分</td>
		</tr>-->
		<tr>
			<td></td>
			<td>
				<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
				<input type="submit" name="pesubmit" value="提 交" class="tjbtn">		
			</td>
		</tr>
		</table>
		</form>
	</div>
</div>
<?php include(pe_tpl('footer.html','admin'));?>