
<?php include(pe_tpl('header.html'));?>
<div class="content" style="margin-bottom:62px;">
	<div class="user_info">
		<div class="user_tt">个人中心</div>
		<div class="user_tx_box">
			<div class="user_tx">
				<a href="user.php?mod=setting&act=logo"><img src="<?php echo $user_logo ?>" /></a>
			</div>
			<?php if(pe_login('user')):?>
			<div class="user_text">
				<div class=""><?php echo $_s_user_nickname ?><p class="mat10"><span class="dj_btn"><?php echo $cache_userlevel[$user['userlevel_id']]['userlevel_name'] ?></span></p></div>
			</div>
			<?php else:?>
			<div class="center mat20 font16">
				<a href="user.php?mod=do&act=login">登录</a>　|　<a href="user.php?mod=do&act=register">注册</a>
			</div>
			<?php endif;?>
		</div>
		
	</div>
	<div class="side_all">
		<div class="side_fh1">
			<a href="user.php?mod=moneylog"><span><?php echo $user['user_money'] ?> 元</span>账户余额</a>
			<a href="user.php?mod=pointlog"><span><?php echo $user['user_point'] ?> 个</span>积分余额</a>
			<a href="user.php?mod=quan"><span><?php echo $tongji['quan'] ?> 个</span>优惠券</a>
			<div class="clear"></div>
		</div>
		<div class="nav">
			<a class="tgdd_tt" href="user.php?mod=order"><span class="fl">我的订单</span><span class="fr c888 font13">查看更多订单</span><i class="more_jt"></i></a>
			<ul>
			<li><a href="user.php?mod=order&state=wpay"><i class="user_tb1"></i>待付款<?php if($tongji['wpay']):?><span><?php echo $tongji['wpay'] ?></span><?php endif;?></a></li>
			<li><a href="user.php?mod=order&state=wsend"><i class="user_tb2"></i>待发货<?php if($tongji['wsend']):?><span><?php echo $tongji['wsend'] ?></span><?php endif;?></a></li>
			<li><a href="user.php?mod=order&state=wget"><i class="user_tb3"></i>待收货<?php if($tongji['wget']):?><span><?php echo $tongji['wget'] ?></span><?php endif;?></a></li>
			<li><a href="user.php?mod=order&state=wpj"><i class="user_tb4"></i>待评价<?php if($tongji['wpj']):?><span><?php echo $tongji['wpj'] ?></span><?php endif;?></a></li>
			<li><a href="user.php?mod=refund"><i class="user_tb5"></i>退款/退货<?php if($tongji['refund']):?><span><?php echo $tongji['refund'] ?></span><?php endif;?></a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="ck_nav mat10">
			<ul>
			<li><a href="user.php?mod=collect"><i class="ck_i7"></i><span>我的收藏</span><p></p></a></li>
			<li><a href="user.php?mod=comment"><i class="ck_i1"></i><span>我的评价</span><p></p></a></li>
			<li><a href="user.php?mod=useraddr"><i class="ck_i3"></i><span>收货地址</span><p></p></a></li>
			<li><a href="user.php?mod=userbank"><i class="ck_i2"></i><span>收款账户</span><p></p></a></li>
			<li><a href="user.php?mod=setting&act=base"><i class="ck_i4"></i><span>帐号设置</span><p></p></a></li>
			
			<li><a href="<?php echo pe_url('article-list-1') ?>"><i class="ck_i6"></i><span>网站公告</span><p></p></a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="ck_nav_xian"></div>
		<div class="side_ul mat10 mab10" style="display:none">
			<ul>
				<li class="side_i2"><a href="user.php?mod=comment">我的评价<span></span><i></i></a></li>
				<li class="side_i1"><a href="user.php?mod=collect">我的收藏<span></span><i></i></a></li>
				<li class="side_i3"><a href="user.php?mod=userbank">收款账户<span></span><i></i></a></li>
				<li class="side_i4"><a href="user.php?mod=useraddr">地址管理<span></span><i></i></a></li>
				<li class="side_i5"><a href="user.php?mod=setting&act=base">帐号设置<span></span><i></i></a></li>
				
				<?php if(pe_login('user')):?>
				<li class="side_i7"><a href="javascript:user_logout();">退出登录<span></span><i></i></a></li>		
				<?php endif;?>
			</ul>
		</div>
	</div>
</div>
<div class="foot_nav">
	<ul>
	<li><a href="<?php echo $pe['host_root'] ?>"><i class="foot_i1"></i><span>首页</span></a></li>
	<li><a href="<?php echo pe_url('category-list') ?>"><i class="foot_i2"></i><span>分类</span></a></li>
	<li><a href="<?php echo pe_url('cart') ?>"><i class="foot_i5"></i><span>购物车</span></a></li>
	<li><a href="<?php echo $pe['host_root'] ?>user.php?mod=order"><i class="foot_i3"></i><span>订单</span></a></li>
	<li><a href="<?php echo $pe['host_root'] ?>user.php"><i class="foot_i4"></i><span>我的</span></a></li>
	</ul>
	<div class="clear"></div>
</div>
<?php include(pe_tpl('footer.html'));?>