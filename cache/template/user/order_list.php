<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt">
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order" <?php if(!$_g_state):?>class="sel"<?php endif;?>>全部订单<span>(<?php echo $tongji['all'] ?>)</span><i></i></a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wpay" <?php if($_g_state=='wpay'):?>class="sel"<?php endif;?>>待付款<span>(<?php echo $tongji['wpay'] ?>)</span><i></i></a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wsend" <?php if($_g_state=='wsend'):?>class="sel"<?php endif;?>>待发货<span>(<?php echo $tongji['wsend'] ?>)</span><i></i></a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wget" <?php if($_g_state=='wget'):?>class="sel"<?php endif;?>>待收货<span>(<?php echo $tongji['wget'] ?>)</span><i></i></a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=success" <?php if($_g_state=='success'):?>class="sel"<?php endif;?>>交易完成<span>(<?php echo $tongji['success'] ?>)</span><i></i></a> |
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wpj" <?php if($_g_state=='wpj'):?>class="sel"<?php endif;?>>待评价<span>(<?php echo $tongji['wpj'] ?>)</span><i></i></a>
		</div>
		<div class="mat15">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_ordertt1">
			<tr>
				<td>商品信息</td>
				<td width="100">退款/退货</td>
				<td width="121">实付款(元)</td>
				<td width="101">状态</td>
				<td width="101">操作</td>
			</tr>
			</table>
		</div>
		<?php foreach($info_list as $v):?>
		<div class="hy_ordertt">
			<span class="fl"><?php echo pe_date($v['order_atime']) ?></span>
			<span class="fl" style="margin-left:30px">订单号：<?php echo $v['order_id'] ?></span>
			<?php if($v['pintuan_id'] && $v['order_pstate']):?>
			<span class="fr mar10">拼团编号：<a href="<?php echo $pe['host_root'] ?>index.php?mod=order&act=pintuan&id=<?php echo $v['pintuan_id'] ?>" target="_blank"><?php echo $v['pintuan_id'] ?></a></span>
			<?php endif;?>
			<div class="clear"></div>
		</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
		<tr>
			<td style="text-align:left;">
				<?php foreach($v['product_list'] as $kk=>$vv):?>
				<div class="dingdan_list" <?php if($kk==0):?>style="padding-top:0;border-top:0"<?php endif;?>>
					<a href="<?php echo pe_url('product-'.$vv['product_id']) ?>" class="fl mar5 dingdan_img" target="_blank"><img src="<?php echo pe_thumb($vv['product_logo'], 100, 100) ?>" /></a>
					<div class="fl dingdan_name">
						<?php if($v['order_type']=='pintuan'):?><span class="tag_pintuan">拼团</span><?php endif;?>
						<a href="<?php echo pe_url('product-'.$vv['product_id']) ?>" target="_blank" class="dd_name"><?php echo $vv['product_name'] ?></a>
						<p class="c888 mat5"><?php echo order_skushow($vv['product_rule']) ?></p>
					</div>
					<div class="fl dingdan_jg">¥<?php echo $vv['product_money'] ?> <span class="mat5 c888 font12">×<?php echo $vv['product_num'] ?></span></div>
					<div class="fr dingdan_tk">
						<?php if($vv['refund_id']):?>
						<a href="user.php?mod=refund&act=view&id=<?php echo $vv['refund_id'] ?>" target="_blank"><?php echo refund_stateshow($vv['refund_state']) ?></a>
						<?php elseif(in_array($v['order_state'], array('wsend', 'wget'))):?>
						<a href="user.php?mod=refund&act=add&id=<?php echo $vv['orderdata_id'] ?>" onclick="return pe_dialog(this, '申请退款/退货', 600, 400)">退款/退货</a>			
						<?php endif;?>
					</div>
					<div class="clear"></div>
				</div>
				<?php endforeach;?>
			</td>
			<td width="120">
				<p class="corg font14 strong"><?php echo $v['order_money'] ?></p>
				<p class="c999">（含运费：<?php echo $v['order_wl_money'] ?>）</p>
				<p class="c999"><?php echo $v['order_payment_name'] ?></p>
			</td>
			<td width="100">
				<?php echo order_stateshow($v['order_state']) ?>
				<p><a href="user.php?mod=order&act=view&id=<?php echo $v['order_id'] ?>" target="_blank">订单详情</a></p>
			</td>
			<td width="100">
				<?php if($v['order_state'] == 'wpay'):?>
				<a class="tag_org" href="index.php?mod=order&act=pay&id=<?php echo $v['order_id'] ?>" target="_blank">立即付款</a>
				<p class="mat5"><a class="c999" href="user.php?mod=order&act=close&id=<?php echo $v['order_id'] ?>" onclick="return pe_dialog(this, '取消订单', 550, 400)">取消订单</a></p>
				<?php elseif($v['order_state'] == 'wget' && $v['order_payment'] != 'cod'):?>
				<a class="tag_green" href="javascript:pe_confirm('已收到商品', 'user.php?mod=order&act=success&id=<?php echo $v['order_id'] ?>&token=<?php echo $pe_token ?>');">确认收货</a>
				<?php elseif($v['order_state'] == 'success' && !$v['order_comment']):?>
				<a class="tag_gray" href="user.php?mod=order&act=comment&id=<?php echo $v['order_id'] ?>" onclick="return pe_dialog(this, '发表评价', 800, 500)">发表评价</a>
				<?php else:?>
				-
				<?php endif;?>
			</td>
		</tr>
		</table>
		<?php endforeach;?>
		<div class="fenye mat10"><?php echo $db->page->html ?></div>
	</div>
	<div class="clear"></div>
</div>
<?php include(pe_tpl('footer.html'));?>