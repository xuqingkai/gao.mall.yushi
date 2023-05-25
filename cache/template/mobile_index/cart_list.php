
<?php include(pe_tpl('header.html'));?>
<div class="pagetop">
	<div class="fh"><a href="javascript:app_open('back');"></a></div>
	<div><?php echo $menutitle ?></div>
	<div class="cd"><a href="javascript:top_menu();"></a></div>
	<?php include(pe_tpl('top_menu.html'));?>
</div>
<div class="wgw_box">
	<div class="wgw_btn"></div>
	<div class="mat20 font16 c666">你的购物车里还没有商品</div>
	<div class="g_btn"><a href="<?php echo $pe['host_root'] ?>">去逛逛</a></div>
</div>
<div class="content" style="display:none;padding-bottom:60px">
	<form method="post" id="form">
	<?php foreach($info_list as $k=>$v):?>
	<div class="cart_list js_cart" cart_id="<?php echo $v['cart_id'] ?>">
		<?php if($v['error']['del']):?>
		<div class="cart_shixiao">失效</div>
		<?php else:?>
		<label class="dui" for="cart_id_<?php echo $v['cart_id'] ?>"><input type="checkbox" name="cart_id[]" value="<?php echo $v['cart_id'] ?>" id="cart_id_<?php echo $v['cart_id'] ?>" style="display:none" /></label>
		<?php endif;?>
		<div class="dingdan_img"><img src="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" /></div>
		<div class="dingdan_name">
			<p style="height:40px; overflow:hidden;"><a href="<?php echo pe_url('product-'.$v['product_id']) ?>"><?php echo $v['product_name'] ?></a></p>
			<p class="c888 font12"><?php echo order_skushow($v['product_rule']) ?></p>
			<p class="num corg mat3">¥ <?php echo $v['product_money'] ?></p>
		</div>
		<div class="clear"></div>
		<div class="order_r">
			<div class="shuliang sl_1">
				<span class="img1" onclick="cart_edit('-', '<?php echo $v['cart_id'] ?>');"><i></i></span>
				<span class="shuliang_box"><input type="text" name="cart_num[]" value="<?php echo $v['product_num'] ?>" product_money="<?php echo $v['product_money'] ?>" /></span>
				<span class="img2" onclick="cart_edit('+', '<?php echo $v['cart_id'] ?>');"><i></i></span>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<?php endforeach;?>
	<div class="add_tj">
		<div class="add_qx"><span onclick="checkall_btn()"><i></i>全选</span></div>
		<div class="add_heji">合计：<span class="corg font16">¥ <span id="order_money"><?php echo $money['order_money'] ?></span></span></div>
		<div class="add_tjbtn">
			<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
			<input type="hidden" name="pesubmit" />	
			<a href="javascript:cart_submit();">结算 <span class="font12">( <span class="font14" id="order_num"><?php echo $money['order_num'] ?></span> )</span></a>
			<!--<input type="button" id="order_btn" onclick="cart_submit()" value="结算" />-->
		</div>
	</div>
	</form>
</div>
<script type="text/javascript">
$(function(){
	pe_select_radio('cart_id[]');
	$(":input[name='cart_id[]']").live("change", function(){
		cart_money();
	})
	$(":input[name='cart_id[]']:checked").each(function(){
		$(this).parents(".dui").removeClass("sel").addClass("sel");
	})
})
cart_money();
//购物车修改
function cart_edit(type, cart_id) {
	var js_cart = $(".js_cart[cart_id='"+cart_id+"']");
	var _this = js_cart.find(":input[name='cart_num[]']");
	if (type == 'del') {
		var num = 0;
	}
	else {
		var num = parseInt(_this.val());
		num = type == '+' ? num + 1 : (num >= 1 ? num - 1 : 0);
	}
	if (num == 0) {
		if (confirm('您确认要删除该商品吗?') == false) return;
	}
	app_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=cart&act=edit&id="+cart_id+"&num="+num, function(json){
		if (json.result) {
			if (num == 0) js_cart.remove();
		}
		_this.val(json.num);
		//更新商品小计金额
		var product_allmoney = pe_num(_this.attr("product_money") * json.num, 'round', 1);
		js_cart.find(".product_allmoney").html('¥ '+product_allmoney);
		cart_money();
	})
}
//购物车金额
function cart_money() {
	if ($(".js_cart").length == 0) {
		$(".wgw_box").show();
		$(".content").hide();
	}
	else {
		$(".wgw_box").hide();
		$(".content").show();	
	}
	var product_money = 0, product_num = 0, order_money = 0, order_num = 0;
	$(":input[name='cart_id[]']:checked").each(function(){
	 	var _this = $(this).parents(".js_cart").find(":input[name='cart_num[]']");
		product_money = pe_num(_this.attr("product_money"), 'round', 1);
		product_num = pe_num(_this.val(), 'floor');
		order_money += product_money * product_num;
		order_num += product_num;
	})
	$("#order_money").html(pe_num(order_money, 'round', 1, true));
	$("#order_num").html(order_num);
}
//购物车结算
function cart_submit() {
	if ($(":input[name='cart_id[]']:checked").length == 0) {
		app_tip('请选择商品');
		return false;
	} 
	app_submit("<?php echo $pe['host_root'] ?>index.php?mod=cart", function(json){
		if (json.result) {
			app_open("<?php echo $pe['host_root'] ?>index.php?mod=order&act=add&id="+json.id);
		}
	})
}
function checkall_btn() {
	if ($(".add_qx i").hasClass("sel")) {
		$("input[name='cart_id[]']").removeAttr("checked").change();
		$(".add_qx i").removeClass("sel");	
	}
	else {
		$("input[name='cart_id[]']").attr("checked","checked").change();
		$(".add_qx i").addClass("sel");
	}
}
</script>
<?php include(pe_tpl('footer.html'));?>