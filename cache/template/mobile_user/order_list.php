
<?php include(pe_tpl('header.html'));?>
<div class="pagetop">
	<div class="fh"><a href="user.php"></a></div>
	<div><?php echo $menutitle ?></div>
	<div class="cd"><a href="javascript:top_menu();"></a></div>
	<?php include(pe_tpl('top_menu.html'));?>
</div>
<div class="main" style="margin-top:0">
	<div class="hy_tt">
		<ul>
		<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order" <?php if(!$_g_state):?>class="sel"<?php endif;?>>全部</a></li>
		<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wpay" <?php if($_g_state=='wpay'):?>class="sel"<?php endif;?>>待付款</a></li>
		<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wsend" <?php if($_g_state=='wsend'):?>class="sel"<?php endif;?>>待发货</a></li>
		<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wget" <?php if($_g_state=='wget'):?>class="sel"<?php endif;?>>待收货</a></li>
		<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wpj" <?php if($_g_state=='wpj'):?>class="sel"<?php endif;?>>待评价</a></li>
		</ul>
	</div>
	<?php if(!count($info_list)):?>
	<div class="nodata">
		<div class="nodata_img"></div>
		<div class="nodata_tip">暂无信息</div>
	</div>
	<?php endif;?>
	<?php foreach($info_list as $v):?>
	<div class="dingdan_tt" style="font-size:13px">
		 <span class="fl c666"><?php echo pe_date($v['order_atime']) ?></span>
		 <span class="fr"><?php echo order_stateshow($v['order_state']) ?></span>
		 <div class="clear"></div>
	</div>
	<div class="dingdan_info" style="padding:0;">
		<?php foreach($v['product_list'] as $kk=>$vv):?>
		<a href="user.php?mod=order&act=view&id=<?php echo $v['order_id'] ?>" class="order_a">
			<div class="dingdan_img"><img src="<?php echo pe_thumb($vv['product_logo'], 100, 100) ?>" /></div>
			<div class="dingdan_name" style="line-height:20px;">
				<div style="height:40px; overflow:hidden; line-height:20px;">
					<?php if($v['order_type']=='pintuan'):?><span class="tag_pintuan">拼团</span><?php endif;?>
					<?php echo $vv['product_name'] ?>
				</div>
				<p class="c888 font12"><?php echo order_skushow($vv['product_rule']) ?></p>
			</div>
			<div class="dingdan_jg">
				¥<?php echo $vv['product_money'] ?>
				<div class="c999 font12">×<?php echo $vv['product_num'] ?></div>
				<div class="font12"><?php echo refund_stateshow($vv['refund_state']) ?></div>
			</div>
		</a>
		<div class="xuxian2"></div>
		<?php endforeach;?>
		<div class="yingfu">
			<div class="order_yf fr">合计：¥ <span class="font16 mar5"><?php echo $v['order_money'] ?></span> (含运费¥<?php echo $v['order_wl_money'] ?>)</div>
			<div class="clear"></div>
			<div class="fr" style="padding:8px 10px 10px;">
				<?php if($v['order_state'] == 'wpay'):?>
				<a class="tag_org fl" href="index.php?mod=order&act=pay&id=<?php echo $v['order_id'] ?>">立即付款</a>
				<a class="tag_gray fl mal10" href="javascript:app_iframe('user.php?mod=order&act=close&id=<?php echo $v['order_id'] ?>')">取消订单</a>
				<?php elseif($v['order_state'] == 'wget' && $v['order_payment'] != 'cod'):?>
				<a class="tag_org fl" href="javascript:app_confirm('已收到商品', 'user.php?mod=order&act=success&id=<?php echo $v['order_id'] ?>&token=<?php echo $pe_token ?>');">确认收货</a>
				<?php elseif($v['order_state'] == 'success' && !$v['order_comment']):?>
				<a class="tag_org fl" href="user.php?mod=order&act=comment&id=<?php echo $v['order_id'] ?>&<?php echo pe_fromto() ?>">评价</a>
				<?php endif;?>
				<?php if($v['pintuan_id'] && $v['order_pstate']):?>
				<a class="tag_gray fl mal10" href="index.php?mod=order&act=pintuan&id=<?php echo $v['pintuan_id'] ?>">拼团详情</a>
				<?php endif;?>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<?php endforeach;?>
	<div class="fenye mab10"><?php echo $db->page->html ?></div>
</div>
<?php include(pe_tpl('footer.html'));?>