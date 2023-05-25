
<?php include(pe_tpl('header.html'));?>
<div class="pagetop">
	<div class="fh"><a href="<?php echo $pe['host_root'] ?>"></a></div>
	<div><?php echo $menutitle ?></div>
	<div class="cd"><a href="javascript:top_menu();"></a></div>
	<?php include(pe_tpl('top_menu.html'));?>
</div>
<form method="post" id="form">
<div class="content" style="margin-top:10px">
	<div class="order_cg">
		<i class="tjcg_dui"></i>
		<?php if($info['order_payment'] == 'cod'):?>
		<div class="tjcg_tt">订单已提交，我们会尽快安排发货！</div>
		<?php else:?>
		<div class="tjcg_tt">订单已提交，请尽快付款！</div>
		<?php endif;?>
	</div>
	<div class="yhq_box">
		<div class="yhq_sel">
			<span class="fl c666">订单编号：</span>
			<span class="fr"><?php echo $info['order_id'] ?></span>
			<div class="clear"></div>
		</div>
		<div class="yhq_sel">
			<span class="fl c666">应付金额：</span>
			<span class="fr">¥ <?php echo $info['order_money'] ?></span>
			<div class="clear"></div>
		</div>
		<div class="yhq_sel">
			<span class="fl c666">支付方式：</span>
			<span class="fr r_jt" style="position:relative;">
				<?php if($info['order_state'] == 'wpay'):?>
				<span style="padding-right:15px;" onclick="app_page('page_payment');" id="payment_btn"><?php echo $info['order_payment_name'] ?></span>
				<i></i>
				<?php else:?>
				<?php echo $info['order_payment_name'] ?>
				<?php endif;?>
			</span>
			<div class="clear"></div>
		</div>
	</div>
	<!--<div class="yhq_box1" id="paypw_html">
		<div class="yhq_sel1">
			<span class="yhq_sel1_l c666">支付密码：</span>
			<span class="tjr_input">
				<input type="text" name="user_paypw"  placeholder="请输入支付密码" />
			</span>
			<div class="clear"></div>
		</div>
	</div>-->
	<div class="zc_box2 mat10" id="user_paypw" <?php if($info['order_payment'] != 'balance'):?> style="display:none;"<?php endif;?>>
		<div class="zc_list">
			<div class="zc_name">支付密码：</div>
			<div class="zc_text"><input type="password" name="user_paypw" value="" placeholder="请输入支付密码" /></div>
			<a class="zc_smsyzm" href="<?php echo $pe['host_root'] ?>user.php?mod=setting&act=paypw&<?php echo pe_fromto() ?>">重置密码</a>
		</div>
	</div>
	<?php if($info['order_state'] == 'wpay'):?>
	<div class="loginbtn" style="margin:15px 12px;">
		<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
		<input type="hidden" name="pesubmit" />	
		<input type="button" value="去付款" onclick="pay_btn()" />
	</div>
	<?php endif;?>	
</div>
<div id="page_payment" class="divhide">
	<div class="add_tt">选择支付方式</div>
	<div class="close_btn" onclick="app_page_close();"></div>
	<div id="payment_list">
		<?php foreach($payment_list as $k=>$v):?>
		<?php if($v['payment_type'] == 'cod' || $v['payment_type'] == 'balance')continue?>
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
<div id="bank_text" style="display:none"><?php echo nl2br($cache_payment['bank']['payment_config']['bank_text']) ?></div>
</form>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/payment/wechat/wechat.js"></script>
<script type="text/javascript">
$(function(){
	//支付方式
	pe_select_radio('order_payment', "<?php echo $info['order_payment'] ?>", function(json){
		$("#payment_btn").html($(":input[name='order_payment']:checked").attr("payment_name"));
		app_page_close();
		if ($(":input[name='order_payment']:checked").val() == 'balance') {
			$("#user_paypw").show();		
		}
		else {
			$("#user_paypw").hide();		
		}
	});
})
//支付提交按钮
function pay_btn() {
	order_payment = $(":input[name='order_payment']:checked").val();	
	/*if (order_payment == 'balance' && $(":input[name='user_paypw']").val() == '') {
		layer.open({
		    content: '请输入支付密码<p><input type="password" name="paypw" id="paypw" /></p>',
		    btn: ['确认支付', '重置支付密码'],
		    shadeClose: false,
		    yes: function(){
				var user_paypw = $('#paypw').val();
				if (user_paypw == '') {
					app_tip('请输入支付密码');
					return false;
				}
				$(":input[name='user_paypw']").val(user_paypw)
				//layer.closeAll();
				pay_btn();
		    }, no: function(index){
		    	app_open("<?php echo $pe['host_root'] ?>user.php?mod=setting&act=paypw")
		    }
		});
		return false;
	}*/
	if (order_payment == 'bank') {
		layer.open({
			content: $("#bank_text").html(),
			btn: '确认'
		});
		return false;	
	}
	app_submit("<?php echo pe_nowurl() ?>", function(json){
		if (json.result) {
			if (order_payment == 'wechat') {
				wx_pay(json.id);
			}
			else {
			    //window.alert(json.url+"&price=<?php echo $info['order_money'] ?>");
				app_open(json.url+"&price=<?php echo $info['order_money'] ?>", 1000);
			}		
		}
	})
}
</script>
<?php include(pe_tpl('footer.html'));?>