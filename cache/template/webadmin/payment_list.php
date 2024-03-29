<?php include(pe_tpl('header.html','admin'));?>
<div class="right">
	<div class="now">
		<a href="webadmin.php?mod=payment" class="sel"><?php echo $menutitle ?>（<?php echo $tongji['all'] ?>）<i></i></a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tr>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt" width="40">排序</th>
			<th class="bgtt" width="150">图标</th>
			<th class="bgtt" width="130">支付名称</th>
			<th class="bgtt">支付描述</td>
			<th class="bgtt" width="90">启用状态</th>
			<th class="bgtt" width="100">操作</th>
		</tr>
		<?php foreach($info_list as $v):?>
		<tr>
			<td><?php echo $v['payment_id'] ?></td>
			<td><input type="text" name="payment_order[<?php echo $v['payment_id'] ?>]" value="<?php echo $v['payment_order'] ?>" class="inputtext input30 center" /></td>
			<td style="padding:15px 0"><img src="<?php echo $pe['host_root'] ?>public/plugin/payment/<?php echo $v['payment_type'] ?>/logo.png" style="height:29px" /></td>
			<td><?php echo $v['payment_name'] ?></td>
			<td class="aleft"><?php echo $v['payment_desc'] ?></td>
			<td>
				<?php if($v['payment_state']==1):?>
				<a href="webadmin.php?mod=payment&act=state&state=0&id=<?php echo $v['payment_id'] ?>&token=<?php echo $pe_token ?>"><img src="<?php echo $pe['host_admintpl'] ?>images/dui.png" /></a>
				<?php else:?>
				<a href="webadmin.php?mod=payment&act=state&state=1&id=<?php echo $v['payment_id'] ?>&token=<?php echo $pe_token ?>"><img src="<?php echo $pe['host_admintpl'] ?>images/cuo.png" /></a>
				<?php endif;?>
			</td>
			<td>
				<a href="webadmin.php?mod=payment&act=edit&id=<?php echo $v['payment_id'] ?>" class="admin_edit mar3">修改</a>
				<a href="webadmin.php?mod=payment&act=uninstall&id=<?php echo $v['payment_id'] ?>&token=<?php echo $pe_token ?>" class="admin_del" onclick="return pe_cfone(this, '卸载')">卸载</a>
			</td>
		</tr>
		<?php endforeach;?>
		<?php foreach($new_list as $v):?>
		<tr>
			<td>-</td>
			<td>-</td>
			<td style="padding:15px 0"><img src="<?php echo $pe['host_root'] ?>public/plugin/payment/<?php echo $v['type'] ?>/logo.png" style="height:29px" /></td>
			<td><?php echo $v['name'] ?></td>
			<td class="aleft"><?php echo $v['desc'] ?></td>
			<td>-</td>
			<td><a href="webadmin.php?mod=payment&act=install&type=<?php echo $v['type'] ?>&token=<?php echo $pe_token ?>" class="admin_btn">安装</a></td>
		</tr>
		<?php endforeach;?>
		</table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<button href="webadmin.php?mod=payment&act=order&token=<?php echo $pe_token ?>" onclick="pe_doall(this,'form')">更新排序</button>
		</span>
		<span class="fr fenye"><?php echo $db->page->html ?></span>
		<div class="clear"></div>
	</div>
</div>
<?php include(pe_tpl('footer.html','admin'));?>