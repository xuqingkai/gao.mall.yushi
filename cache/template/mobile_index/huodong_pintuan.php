
<?php include(pe_tpl('header.html'));?>
<div class="tuan_top"></div>
<div class="content" style="margin-bottom:60px;">
	<div class="tuijian_list mat10">
		<ul>
		<?php foreach($info_list as $k=>$v):?>
		<li>
			<div class="li_box">
				<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>">
					<div class="prolist_logo">
						<img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" class="js_imgload" />
					</div>
				</a>
				<div class="prolist_name">
					<p><a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>"><?php echo $v['product_name'] ?></a></p>
					<span>¥<?php echo product_money($v['product_money']) ?></span>
					<div class="prolist_pt"><?php echo $v['product_ptnum'] ?>人团</div>
				</div>
			</div>
		</li>
		<?php endforeach;?>
		</ul>
		<div class="clear"></div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	pe_jstime(".huodong_time", '<?php echo time() ?>', 'html');
})
</script>
<?php include(pe_tpl('footer.html'));?>