<?php include(pe_tpl('header.html'));?>
<div class="wgw_box">
	<div class="wgw_btn"></div>
	<div class="mat20 font16 c666">你的购物车里还没有商品</div>
	<div class="g_btn"><a href="<?php echo $pe['host_root'] ?>">去逛逛</a></div>
</div>
<div class="content">
<form method="post" id="form">
<div class="dd_box">
	<?php if(!$info['order_virtual']):?>
	<div class="liucheng">收货地址</div>
	<div class="order_addbox" style="padding:0 0 0 45px">
		<div class="dddz_l" id="useraddr_html">
			<script type="text/html" id="useraddr_html_tpl">
			{{each list as v k}}
			<div class="addr_list js_radio" val="{{v.address_id}}" onclick="useraddr_select('{{v.address_id}}')">
				<i></i><span class="cred">寄送至　</span>{{v.address_province}} {{v.address_city}} {{v.address_area}} {{v.address_text}} （{{v.user_tname}} 收） <span class="c999">{{v.user_phone}}</span>
			</div>
			{{/each}}
			</script>
		</div>
		<div class="xzdz_btn"><a href="<?php echo $pe['host_root'] ?>index.php?mod=useraddr&act=add" onclick="return pe_dialog(this, '新增地址', 630, 380)">+ 新增收货地址</a></div>
		<div class="clear"></div>
	</div>
	<div class="xuxian mat20"></div>
	<?php endif;?>
	<div class="liucheng">支付方式</div>
	<div class="fkfs">
		<ul>
		<?php foreach($payment_list as $k=>$v):?>
		<li class="js_radio">
			<label for="order_payment_<?php echo $k ?>">
				<input type="radio" name="order_payment" value="<?php echo $k ?>" id="order_payment_<?php echo $k ?>" style="display:none" />
				<img src="<?php echo $pe['host_root'] ?>public/plugin/payment/<?php echo $k ?>/logo.png" class="fl" />
				<?php if($k == 'balance'):?>
				<span class="fr mat5 mal10">余额：<span class="corg"><?php echo $user['user_money'] ?>元</span></span>
				<?php endif;?>
				<div class="clear"></div><i></i>
			</label>
		</li>
		<?php endforeach;?>
		</ul>
		<div class="clear"></div>
	</div>
	<!--<div class="xuxian mat20"></div>
	<div class="liucheng">订单备注</div>
	<div class="mat20" style="margin-left:45px;">
		<input type="text" name="order_text" class="inputall input350" placeholder="填写您的其他要求" />
	</div>-->
	<div class="xuxian mat20"></div>
	<div class="liucheng">商品清单</div>
	<div style="margin:20px 45px 0 45px;">
		<div class="gouwuche">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_tb">
			<tr>
				<th width="100">商品图片</th>
				<th>商品信息</th>
				<th width="150"></th>
				<th width="80">单价</th>
				<th width="120">数量</th>
				<th width="80">小计</th>
			</tr>
			<?php foreach($info_list as $k=>$v):?>
			<tr class="js_cart" id="<?php echo $k ?>">
				<td class="hotimg1"><img src="<?php echo pe_thumb($v['product_logo'], 100, 100) ?>" /></td>
				<td style="text-align:left;padding-left:0">
					<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" target="_blank" class="cblue"><?php echo $v['product_name'] ?></a>
				</td>
				<td style="text-align:left;"><div class="c888"><?php echo order_skushow($v['product_rule']) ?></div></td>
				<td class="num">¥ <?php echo $v['product_money'] ?></td>
				<td><?php echo $v['product_num'] ?></td>
				<td>
					<?php if($v['error']):?>
					<span class="cred"><?php echo $v['error']['show'] ?></span>
					<?php else:?>
					<span class="num corg">¥ <?php echo $v['product_allmoney'] ?></span>
					<?php endif;?>
				</td>
			</tr>
			<?php endforeach;?>
			</table>
		</div>
		<div class="fukuan">
			<div class="fl" style="padding:5px 10px; width:600px;">
				<div class="mat10">
					订单留言：<input type="text" name="order_text" placeholder="请填写您的其他要求" class="ds_input" style="width:320px" />
				</div>
				<div class="mat20">
					<span class="fl">店铺优惠：</span>
					<div class="fl">
						<select name="order_quan_id" class="yhq_select">
						<option value="0" quan_money="0.0">不使用优惠券</option>
						<?php foreach($quan_list  as $k=>$v):?>
						<option value="<?php echo $v['quanlog_id'] ?>}" quan_money="<?php echo $v['quan_money'] ?>">【省<?php echo $v['quan_money'] ?>元】<?php echo $v['quan_name'] ?></option>
						<?php endforeach;?>		
						</select>
					</div>
					<!--<a href="javascript:quan_duihuan_open();" class="mal10 cblue" style="text-decoration:underline">我要兑换</a>-->
					<div class="clear"></div>
				</div>
				<!--<div class="mat15">账户积分：<span class="c888"><?php echo $user['user_point'] ?>积分，可抵：<?php echo $user_point_money ?>元，本次使用：<input type="text" name="order_point_use" class="ds_input"> 积分</span></div>-->
				<?php if($cache_setting['point_state']):?>
				<div class="mat15">本次使用：<input type="text" name="order_point_use" class="ds_input"> 积分</span><span class="c999 mal10">（积分余额：<?php echo $user['user_point'] ?>个，可抵：<?php echo $user_point_money ?>元）</span></div>
				<?php endif;?>
			</div>
			<div class="fk_tb">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>商品金额：</td>
					<td width="80" class="num font14 cfen">¥ <span id="order_product_money"><?php echo $info['order_product_money'] ?></span></td>
				</tr>
				<tr>
					<td>运费：</td>
					<td class="num font14">¥ <span id="order_wl_money"><?php echo $info['order_wl_money'] ?></span></td>
				</tr>
				<tr>
					<td>店铺优惠：</td>
					<td class="num font14">- ¥ <span id="order_quan_money">0.0</span></td>
				</tr>
				<?php if($cache_setting['point_state']):?>
				<tr>
					<td>积分抵扣：</td>
					<td class="num font14">- ¥ <span id="order_point_money">0.0</span></td>
				</tr>
				<?php endif;?>
				<tr>
					<td>应付金额：</td>
					<td class="num font18 cfen strong">¥ <span id="order_money"><?php echo $info['order_money'] ?></span></td>
				</tr>
				</table>
			</div>
			<div class="clear"></div>
		</div>
		<div class="ddtj_btn_box" style="background:none;">
			<input type="hidden" name="address_id" />
			<input type="hidden" name="pesubmit" />
			<input type="button" class="ddtj_btn ddtj_btn1" id="order_btn" value="提交订单" />
			<a href="<?php echo pe_url('cart') ?>" class="fhgw fr">< 返回购物车</a>
		</div>
	</div>
</div>
</form>
<script type="text/html" id="quan_duihuan_html">
<form method="post" id="quan_form" style="text-align:center;margin-top:50px">
<input type="text" name="quan_key" value="" placeholder="请输入10位优惠券码" class="inputall input200" />
<input type="hidden" name="pesubmit" />
<p class="mat30"><input type="button" value="兑 换" class="tjbtn" onclick="quan_duihuan()" /></p>
</form>
</script>
</div>
<script type="text/javascript">
$(function(){
	cart_check();
	useraddr_list(0);
	//支付方式
	pe_select_radio('order_payment', $(":input[name='order_payment']:eq(0)").val());
	//选择优惠券
	$(":input[name='order_quan_id']").live("change", function(){	
		$("#order_quan_money").html($(this).find("option:selected").attr("quan_money"));
		order_money();
	})
	//使用积分
	$(":input[name='order_point_use']").keyup(function(){
		var point = pe_num($(this).val(), 'floor');
		var point_money = '0.0';
		if (point > <?php echo $user['user_point'] ?>) {
			point = <?php echo $user['user_point'] ?>;
		}
		$(this).val(point);
		if (<?php echo round($cache_setting['point_money']) ?> > 0) {
			point_money = pe_num(point/<?php echo $cache_setting['point_money'] ?>, 'floor', 1, true);
		}
		$("#order_point_money").html(point_money);
		order_money();
	})
	$("#order_btn").click(function(){
		pe_submit("<?php echo pe_nowurl() ?>", function(json){
			if (json.result) pe_open(json.url, 1000);
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
function useraddr_list(id) {
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=useraddr&id="+id, function(json){
		if (json.result) {
			$(":input[name='address_id']").val(json.info.address_id);			
			pe_jshtml('useraddr_html', json);
			$("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
		}
	});
}
//选择收货地址
function useraddr_select(id) {
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=useraddr&id="+id, function(json){
		if (typeof(json.info.address_id) != 'undefined') {
			$(":input[name='address_id']").val(id);
			$("#useraddr_html .js_radio").removeClass("sel")
			$("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
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
	$("#order_money").html(pe_num(order_money, 'round', 1, true));
}
</script>
<?php include(pe_tpl('footer.html'));?>