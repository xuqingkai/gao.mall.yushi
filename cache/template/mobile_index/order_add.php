
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
<form method="post" id="form">
<div class="content" style="display:none">
	<?php if(!$info['order_virtual']):?>
	<div class="tjdz_box">
		<div class="dddz_html" id="useraddr_sel_html" onclick="app_page('page_useraddr')">
		<script type="text/html" id="useraddr_sel_tpl">
		<div class="dddz_list">	
			<span class="fl">收货人：{{info.user_tname}}</span>
			<span class="fr">{{info.user_phone}}</span>
			<div class="clear"></div>
			<div class="mat5 c999">收货地址：{{info.address_province}} {{info.address_city}} {{info.address_area}} {{info.address_text}}</div>
		</div>
		<span class="add_ico"></span>
		</script>
		</div>
		<div class="xzdz_btn" id="useraddr_btn"><a href="javascript:app_iframe('<?php echo $pe['host_root'] ?>index.php?mod=useraddr&act=add');">+ 新增地址</a></div>
		<i class="jt_r"></i>
	</div>
	<?php endif;?>
	<div class="dingdan_info">
		<?php foreach($info_list as $k=>$v):?>
		<div class="js_cart dd_box1" id="<?php echo $k ?>">
			<div class="dingdan_img" style="left:10px;"><img src="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" /></div>
			<div class="dingdan_name" style="margin-left:90px;">
				<p style="height:40px; overflow:hidden;"><a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>"><?php echo $v['product_name'] ?></a></p>
				<p class="c888 font12"><?php echo order_skushow($v['product_rule']) ?></p>
				<div class="order_r">
					<p class="num fl corg font14">¥ <?php echo $v['product_money'] ?></p>
					<p class="fr">×<?php echo $v['product_num'] ?></p>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="xuxian2"></div>
		<?php endforeach;?>
	</div>
	<div class="yhq_box">
		<div class="yhq_sel">
			<span class="fl c666">商品金额：</span>
			<span class="fr">¥ <span id="order_product_money"><?php echo $info['order_product_money'] ?></span></span>
			<div class="clear"></div>
		</div>
		<div class="yhq_sel">
			<span class="fl c666">运　　费：</span>
			<span class="fr">¥ <span id="order_wl_money"><?php echo $info['order_wl_money'] ?></span></span>
			<div class="clear"></div>
		</div>
		<div class="yhq_sel">
			<span class="fl c666">店铺优惠：</span>
			<span class="fr r_jt" onclick="app_page('page_quan')" style="position:relative">
				<span id="quan_btn" style="padding-right:15px; color:#666">不使用优惠券</span>
				<!--<input type="hidden" name="order_quan_id" />-->
				<span id="order_quan_money" class="divhide">0.0</span><i></i>
			</span>
			<div class="clear"></div>
		</div>
		<?php if($cache_setting['point_state']):?>
		<div class="yhq_sel">
			<span class="fl c666">积分抵扣：</span>
			<span class="fr r_jt" onclick="app_page('page_point');">
				<span id="point_btn" style="padding-right:15px; color:#666;" >不使用积分</span><i></i>
				<span id="order_point_money" class="divhide">0.0</span>
			</span>
			<div class="clear"></div>
			<!--<p class="c999 font11" style="line-height:14px; height:14px; margin-bottom:5px;">您有：<?php echo $user['user_point'] ?>积分，可抵：<?php echo $user_point_money ?>元</p>-->
		</div>
		<?php endif;?>
		<div class="yhq_sel" style="border-bottom:0">
			<span class="fl c666">应付金额：</span>
			<span class="fr corg font16">¥ <span class="order_money"><?php echo $info['order_money'] ?></span></span>
			<div class="clear"></div>
		</div>
	</div>
	<div class="yhq_box">
		<div class="yhq_sel" onclick="app_page('page_payment')">
			<span class="fl c666">支付方式：</span>
			<span class="fr r_jt" style="position:relative">
				<span id="payment_btn" style="padding-right:15px; color:#666"></span><i></i>
			</span>
			<div class="clear"></div>
		</div>
		<div class="yhq_sel1" style="border-bottom:0">
			<span class="yhq_sel1_l c666">订单留言：</span>
			<span class="tjr_input">
				<input type="text" name="order_text"  placeholder="请填写您的其他要求" />
			</span>
			<div class="clear"></div>
		</div>
	</div>
	<div style="margin-bottom:60px;"></div>
	<div class="add_tj">
		<div class="fl mal10 c666">合计：<span class="corg font16">¥ <span class="order_money"><?php echo $info['order_money'] ?></span></span></div>
		<div class="add_tjbtn">
			<input type="hidden" name="address_id" />
			<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
			<input type="hidden" name="pesubmit" />	
			<input type="button" id="order_btn" value="提交订单" />
		</div>
	</div>
</div>
<div id="page_useraddr" class="divhide">
	<div class="add_tt">选择收货地址</div>
	<div class="close_btn" onclick="app_page_close();"></div>
	<div class="dddz_html" id="useraddr_html">
		<script type="text/html" id="useraddr_tpl">
		{{each list as v k}}
		<div class="add_sel js_radio" val="{{v.address_id}}" onclick="useraddr_select('{{v.address_id}}')">	
			<div class="dui_1"></div>
			<!--<div class="edit_add"></div>-->
			<div class="font14 c333">{{v.user_tname}}，{{v.user_phone}}</div>
			<div class="mat5 c999">收货地址：{{v.address_province}} {{v.address_city}} {{v.address_area}} {{v.address_text}}</div>
		</div>
		{{/each}}
		</script>
	</div>
	<a class="add_xj" href="javascript:app_page_close();app_iframe('<?php echo $pe['host_root'] ?>index.php?mod=useraddr&act=add');"><i class="add_jia"></i><i class="jt_r"></i>新建地址</a>
</div>
<div id="page_quan" class="divhide">
	<div class="add_tt">选择优惠券</div>
	<div class="close_btn" onclick="app_page_close();"></div>
	<div class="quan_sel">
	<label class="add_sel js_radio mal10" for="order_quan_0">
		<input type="radio" name="order_quan_id" value="0" id="order_quan_0" class="divhide" quan_money="0.0" quan_name="不使用优惠券" />
		不使用优惠券<div class="dui_1"></div>
	</label>
	<?php foreach($quan_list as $k=>$v):?>	
	<label class="add_sel js_radio mal10" for="order_quan_<?php echo $v['quanlog_id'] ?>">
		<input type="radio" name="order_quan_id" value="<?php echo $v['quanlog_id'] ?>" quan_money="<?php echo $v['quan_money'] ?>" quan_name="省<?php echo $v['quan_money'] ?>元：<?php echo pe_cut($v['quan_name'], 10, '..') ?>" id="order_quan_<?php echo $v['quanlog_id'] ?>" class="divhide" />
		省<?php echo $v['quan_money'] ?>元：<?php echo $v['quan_name'] ?><div class="dui_1"></div>
	</label>
	<?php endforeach;?>
	</div>
</div>
<div id="page_point" class="divhide">
	<div class="add_tt">使用积分抵扣</div>
	<div class="close_btn" onclick="app_page_close();"></div>
	<div class="quan_tc">
		<div class=""><span class="c888">积分余额：</span><?php echo $user['user_point'] ?>个，可抵扣：<?php echo $user_point_money ?>元</div>
		<div class="mat20">
			<span class="fl c888" style="margin-top:3px">本次使用：</span>
			<div class="quan_input fl"><input type="text" name="order_point_use" value="0" class="quan_input" /> <span class="c888">积分</span></div>
			<div class="clear"></div>
			<a href="javascript:;" id="point_usebtn" class="tjbtn" style="margin-top:40px">确认使用</a>
			<div class="clear"></div>
		</div>
	</div>
</div>
<div id="page_payment" class="divhide">
	<div class="add_tt">选择支付方式</div>
	<div class="close_btn" onclick="app_page_close();"></div>
	<div>
		<?php foreach($payment_list as $k=>$v):?>
		<label class="add_sel js_radio" for="order_payment_<?php echo $k ?>">
			<input type="radio" name="order_payment" value="<?php echo $k ?>" payment_name="<?php echo $v['payment_name'] ?>" id="order_payment_<?php echo $k ?>" class="divhide" />
			<div class="fl mar5" style="width:22px; overflow:hidden;"><img src="<?php echo $pe['host_root'] ?>public/plugin/payment/<?php echo $k ?>/logo.png" width="85" /></div>
			<div class="fl mat2"><?php echo $v['payment_name'] ?></div>
			<?php if($v['payment_type'] == 'balance'):?>
			<div class="fl mat2 corg">（余额：<?php echo $user['user_money'] ?>元）</div>
			<?php endif;?>
			<div class="dui_1"></div>
			<div class="clear"></div>
		</label>
		<?php endforeach;?>
	</div>
</div>
</form>
<script type="text/javascript">
$(function(){
	cart_check();
	useraddr_list(0);
	//支付方式
	pe_select_radio('order_payment', $(":input[name='order_payment']:eq(0)").val(), function(json){
		$("#payment_btn").html($(":input[name='order_payment']:checked").attr("payment_name"));
		app_page_close();
	});
	//选择优惠券
	var quan_id = $(":input[name='order_quan_id']").length > 1 ? $(":input[name='order_quan_id']:eq(1)").val() : 0;
	pe_select_radio('order_quan_id', quan_id, function(json){
		$("#order_quan_money").html($(":input[name='order_quan_id']:checked").attr("quan_money"));
		$("#quan_btn").html($(":input[name='order_quan_id']:checked").attr("quan_name"));
		order_money();
		app_page_close();
	});
	//使用积分
	$(":input[name='order_point_use']").keyup(function(){
		var point = pe_num($(this).val(), 'floor');
		if (point > <?php echo $user['user_point'] ?>) {
			point = <?php echo $user['user_point'] ?>;
		}
		$(this).val(point);
	})
	$("#point_usebtn").click(function(){
		var point = pe_num($(":input[name='order_point_use']").val(), 'floor');
		var point_money = '0.0';
		if (<?php echo round($cache_setting['point_money']) ?> > 0) {
			point_money = pe_num(point/<?php echo $cache_setting['point_money'] ?>, 'floor', 1, true);
		}
		if (point) {
			$("#point_btn").html("省"+point_money+"元：使用"+point+"积分");
		}
		else {
			$("#point_btn").html("不使用积分");		
		}
		$("#order_point_money").html(point_money);
		order_money();
		app_page_close();
	})
	$("#order_btn").click(function(){
		app_submit("<?php echo pe_nowurl() ?>", function(json){
			if (json.result) app_open(json.url, 1000);
		})
	})
})
//购物车初始化
function cart_check() {
	if ($(".js_cart").length == 0) {
		$(".wgw_box").show();
		$(".content").hide();
	}
	else {
		$(".wgw_box").hide();
		$(".content").show();	
	}
}
//获取收货地址
function useraddr_list() {
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=useraddr", function(json){
		if (json.result) {
			$("#useraddr_html").html(template('useraddr_tpl', json));
		}
		if (typeof(json.info.address_id) != 'undefined') {
			$(":input[name='address_id']").val(json.info.address_id);
			$("#useraddr_btn").hide();
			$("#useraddr_sel_html").html(template('useraddr_sel_tpl', json));
			$("#useraddr_html .js_radio").removeClass("sel");
			$("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
		}
	});
}
//选择收货地址
function useraddr_select(id) {
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=useraddr&id="+id, function(json){
		if (typeof(json.info.address_id) != 'undefined') {
			$(":input[name='address_id']").val(id);
			$("#useraddr_btn").hide();
			$("#useraddr_sel_html").html(template('useraddr_sel_tpl', json));
			$("#useraddr_html .js_radio").removeClass("sel");
			$("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
			app_page_close();
		}
	});
}
//订单金额
function order_money() {
	var product_money = pe_num($("#order_product_money").html(), 'round', 1);
	var wl_money = pe_num($("#order_wl_money").html(), 'round', 1);
	var quan_money = pe_num($("#order_quan_money").html(), 'round', 1);
	var point_money = pe_num($("#order_point_money").html(), 'round', 1);
	var order_money = product_money + wl_money - quan_money - point_money;
	order_money = order_money >= 0 ? order_money : 0;
	$(".order_money").html(pe_num(order_money, 'round', 1, true));
}
</script>
<?php include(pe_tpl('footer.html'));?>