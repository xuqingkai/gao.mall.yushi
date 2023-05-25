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
			<td width="150" align="right">支付名称：</td>
			<td><?php echo $info['payment_name'] ?></td>
		</tr>
		<tr>
			<td align="right">支付描述：</td>
			<td><?php echo $info['payment_desc'] ?></td>
		</tr>
		<tr>
			<td align="right">是否启用：</td>
			<td>
				<select name="info[payment_state]" class="inputselect">
				<?php foreach(array('1'=>'启用', '0'=>'停用') as $k=>$v):?>
				<option value="<?php echo $k ?>" <?php if($k==$info['payment_state']):?>selected="selected"<?php endif;?>><?php echo $v ?></option>
				<?php endforeach;?>
				</select>
			</td>
		</tr>
		<?php foreach($info['payment_model'] as $k=>$v):?>
		<tr>
			<td align="right"><?php echo $v['name'] ?>：</td>
			<td>
				<?php if($v['type']=='select'):?>
				<select name="config[<?php echo $k ?>]" class="inputselect">
				<?php foreach($v['value'] as $kk=>$vv):?>
				<option value="<?php echo $kk ?>" <?php if($kk==$info['payment_config'][$k]):?>selected="selected"<?php endif;?>><?php echo $vv ?></option>
				<?php endforeach;?>
				</select>
				<?php elseif($v['type']=='textarea'):?>
				<textarea name="config[<?php echo $k ?>]" style="width:600px;height:150px;"><?php echo $info['payment_config'][$k] ?></textarea>				
				<?php else:?>
				<input type="text" name="config[<?php echo $k ?>]" value="<?php echo $info['payment_config'][$k] ?>" class="inputall input300" />
				<?php endif;?>
			</td>
		</tr>
		<?php endforeach;?>
		<?php if($info['payment_type'] == 'wechat'):?>
		<tr>
			<td align="right">支付授权目录：</td>
			<td><?php echo $pe['host_root'] ?></td>
		</tr>
		<tr>
			<td align="right">扫码回调链接：</td>
			<td><?php echo $pe['host_root'] ?>public/plugin/payment/wechat/notify_url.php</td>
		</tr>
		<?php endif;?>
		<tr>
			<td>&nbsp;</td>
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