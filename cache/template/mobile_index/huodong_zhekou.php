
<?php include(pe_tpl('header.html'));?>
<div class="zhe_top"></div>
<div class="content" style="margin-bottom:60px;">
	<div class="tuijian_list ms_list">
		<ul>
		<?php foreach($info_list as $k=>$v):?>
		<li>
			<div class="li_box" style="background:#fff;">
				<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>">
					<div class="prolist_logo">
						<img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" class="js_imgload" />
						<div class="prolist_time"><i></i><span class="huodong_time" endtime="<?php echo $v['huodong_etime'] ?>"></span></div>
						<div class="prolist_timebg"></div>
					</div>
				</a>
				<div class="prolist_name">
					<p><?php echo $v['product_name'] ?></p>
					<s class="c999 font12">¥<?php echo product_money($v['product_smoney']) ?></s>
				</div>
				<div class="prolist_qgbtn">
					<span>¥<?php echo product_money($v['product_money']) ?></span>
					<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="立即抢购">立即抢购</a>
				</div>
			</div>
		</li>
		<?php endforeach;?>
		</ul>
		<div class="clear"></div>
	</div>
</div>
<link type="text/css" rel="stylesheet" href="<?php echo $pe['host_root'] ?>public/plugin/swiper/swiper.min.css" />
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/swiper/swiper.jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/jquery.SuperSlide.js"></script>
<script type="text/javascript">
$(function(){
	pe_jstime(".huodong_time", '<?php echo time() ?>', 'html');
})
</script>
<style type="text/css">
.sear{margin:0 80px 0 50px;}
</style>
<?php include(pe_tpl('footer.html'));?>