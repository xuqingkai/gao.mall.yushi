<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<!--<div class="hy_tt">
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=order">个人中心</a>
		</div>-->
		<div class="u_index_box mat5">
			<div class="u_index_rtt">
				<div class="user_tx"><a href="user.php?mod=setting&act=logo"><img src="<?php echo pe_thumb($user['user_logo'], '_120', '_120', 'avatar') ?>" /></a></div>
				<div class="fl mal20 mat10">
					您好：<span class="cred"><?php echo $_s_user_name ?></span><span class="mal20 dj_btn"><?php echo $cache_userlevel[$user['userlevel_id']]['userlevel_name'] ?></span>
					<div>上次登录：<?php echo pe_date($_s_user_ltime) ?></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="u_index_l">
				<div class="u_info">
					<div style="margin-left:0px;">
						<p>手机号码：
							<?php if($user['user_phone']):?>
							<span class="c999"><?php echo $user['user_phone'] ?></span>
							<?php else:?>
							<a href="user.php?mod=setting&act=base" class="cblue">完善</a>
							<?php endif;?>					
						</p>
						<p>电子邮箱：
							<?php if($user['user_email']):?>
							<span class="c999"><?php echo $user['user_email'] ?></span>
							<?php else:?>
							<a href="user.php?mod=setting&act=base" class="cblue">完善</a>
							<?php endif;?>
						</p>
					</div>
				</div>
			</div>
			<div class="u_index_m">
				<div>待付款：<span class="c999"><a href="user.php?mod=order&state=wpay"><?php echo $tongji['wpay'] ?></a> 个</span></div>
				<div>待发货：<span class="c999"><a href="user.php?mod=order&state=wsend"><?php echo $tongji['wsend'] ?></a> 个</span></div>
			</div>
			
			<div class="clear"></div>
		</div>
		<div class="u_jilu_tt">
			<a href="javascript:;" class="fl">最新订单</a>
			<div class="clear"></div>
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
	</div>
	<div class="clear"></div>
</div>
<?php include(pe_tpl('footer.html'));?>