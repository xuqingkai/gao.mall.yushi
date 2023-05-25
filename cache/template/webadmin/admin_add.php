<?php include(pe_tpl('header.html','admin'));?>
<div class="right">
	<div class="now">
		<a href="javascript:;" class="sel"><?php echo $menutitle ?><i></i></a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20 mab20">
		<tr>
			<td align="right" width="150">管理帐号：</td>
			<td><input type="text" name="info[admin_name]" value="<?php echo $info['admin_name'] ?>" class="inputall input200" /></td>
		</tr>
		<tr>
			<td align="right">登录密码：</td>
			<td><input type="text" name="admin_pw" class="inputall input200" onfocus="this.type='password'" /> <span class="c888">如无需修改请留空</span></td>
		</tr>
		<tr>
			<td align="right" width="150">管理权限：</td>
			<td>
				<select name="info[adminlevel_id]" class="inputselect" <?php if($admin_id==1):?>disabled<?php endif;?>>
				<?php foreach($adminlevel_list as $v):?>
				<option value="<?php echo $v['adminlevel_id'] ?>" <?php if($info['adminlevel_id']==$v['adminlevel_id']):?>selected="selected"<?php endif;?>><?php echo $v['adminlevel_name'] ?></option>
				<?php endforeach;?>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">上次登录：</td>
			<td><?php echo pe_date($info['admin_ltime']) ?></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
				<input type="submit" name="pesubmit" value="提 交" class="tjbtn" />
			</td>
		</tr>
		</table>
		</form>
	</div>
</div>
<?php include(pe_tpl('footer.html','admin'));?>