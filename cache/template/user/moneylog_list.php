<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt">
			<a href="javascript:;" class="sel"><?php echo $menutitle ?><span>(<?php echo $tongji['all'] ?>)</span><i></i></a>
		</div>
		<div class="hy_tablelist">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th width="130">交易日期</th>
				<th width="150">交易金额(元)</th>
				<th width="150">结余</th>
				<th>说明</th>
			</tr>
			<?php foreach($info_list as $v):?>
			<tr>
				<td><?php echo pe_date_color(pe_date($v['moneylog_atime'])) ?></td>
				<td>
					<?php if($v['moneylog_in']>0):?>
					<span class="cgreen">+<?php echo $v['moneylog_in'] ?></span>
					<?php else:?>
					<span class="c999">-<?php echo $v['moneylog_out'] ?></span>
					<?php endif;?>
				</td>
				<td><span class="c666"><?php echo $v['moneylog_now'] ?></span></td>
				<td class="aleft"><?php echo $v['moneylog_text'] ? $v['moneylog_text'] : $ini['moneylog_type'][$v['moneylog_type']] ?></td>
			</tr>
			<?php endforeach;?>
			</table>
		</div>
		<div class="fenye mat10"><?php echo $db->page->html ?></div>
	</div>
	<div class="clear"></div>
</div>
<?php include(pe_tpl('footer.html'));?>