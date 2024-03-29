<?php include(pe_tpl('header.html'));?>
<div class="wgw_box">
	<div class="wgw_btn"></div>
	<div class="mat20 font16 c666">你的购物车里还没有商品</div>
	<div class="g_btn"><a href="<?php echo $pe['host_root'] ?>">去逛逛</a></div>
</div>
<div class="content" style="display:none">
<div class="dd_box">
	<div class="liucheng" style="margin:10px 0 20px;">我的购物车</div>
	<form method="post" id="form">
	<div class="gouwuche">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_tb">
		<tr>
			<th width="20"></th>
			<th width="90">商品图片</th>
			<th>商品信息</th>
			<th width="150"></th>
			<th width="80">单价</th>
			<th width="120">数量</th>
			<th width="80">小计</th>
			<th width="80">操作</th>
		</tr>
		<?php foreach($info_list as $k=>$v):?>
		<tr class="js_cart" cart_id="<?php echo $v['cart_id'] ?>">
			<?php if($v['error']['del']):?>
			<td></td>
			<?php else:?>
			<td style="vertical-align:middle"><input type="checkbox" name="cart_id[]" value="<?php echo $v['cart_id'] ?>" /></td>
			<?php endif;?>
			<td class="hotimg1"><img src="<?php echo pe_thumb($v['product_logo'], 100, 100) ?>" /></td>
			<td style="text-align:left;padding-left:0">
				<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" target="_blank" class="cblue"><?php echo $v['product_name'] ?></a>
			</td>
			<td style="text-align:left;"><div class="c888"><?php echo order_skushow($v['product_rule']) ?></div></td>
			<td class="num">¥ <?php echo $v['product_money'] ?></td>
			<td class="shuliang">
				<?php if($v['error']['del']):?>
				<input type="hidden" name="cart_num[]" value="<?php echo $v['product_num'] ?>" product_money="<?php echo $v['product_money'] ?>" />
				<p class="cred"><?php echo $v['error']['show'] ?></p>
				<?php else:?>
				<span class="img1 mal10" onclick="cart_edit('-', '<?php echo $v['cart_id'] ?>');"><i></i></span>
				<div class="shuliang_box"><input type="text" name="cart_num[]" value="<?php echo $v['product_num'] ?>" product_money="<?php echo $v['product_money'] ?>" readonly /></div>
				<span class="img2" onclick="cart_edit('+', '<?php echo $v['cart_id'] ?>');"><i></i></span>
				<div class="clear"></div>
				<p class="cred mat10"><?php echo $v['error']['show'] ?></p>
				<?php endif;?>
			</td>
			<td class="num corg product_allmoney">¥ <?php echo $v['product_allmoney'] ?></td>
			<td><a href="javascript:;" onclick="cart_edit('del', '<?php echo $v['cart_id'] ?>')">删除</a></td>
		</tr>
		<?php endforeach;?>
		</table>
	</div>
	<div class="ddtj_btn_box">
		<div class="fl"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'cart_id')" /> 全选</div>
		<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
		<input type="hidden" name="pesubmit" />	
		<input type="button" id="order_btn" onclick="cart_submit()" value="结算" class="ddtj_btn" />
		<span class="fr">已选商品 <span class="font16 corg num" id="order_num">1</span> 件， 合计（不含运费）：<span class="font18 num corg"> ¥ <span id="order_money"><?php echo $info['order_money'] ?></span></span></span>
	</div>
	</form>
</div>
</div>
<script type="text/javascript">
$(function(){
	$(":input[name='cart_id[]']").live("change", function(){
		cart_money();
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
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=cart&act=edit&id="+cart_id+"&num="+num, function(json){
		if (json.result) {
			if (num == 0) js_cart.remove();
		}
		_this.val(json.num);
		$(".js_cartnum").text(json.cart_num)
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
		pe_tip('请选择商品');
		return false;
	} 
	pe_submit("<?php echo $pe['host_root'] ?>index.php?mod=cart", function(json){
		if (json.result) {
			pe_open("<?php echo $pe['host_root'] ?>index.php?mod=order&act=add&id="+json.id);
		}
	})
}
</script>
<?php include(pe_tpl('footer.html'));?>