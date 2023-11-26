<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt">
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=pay" <?php if($menumark=='pay'):?>class="sel"<?php endif;?>>账户充值<i></i></a>
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=cashout&act=add" <?php if($menumark=='cashout_add'):?>class="sel"<?php endif;?>>申请提现<i></i></a>
			<a href="<?php echo $pe['host_root'] ?>user.php?mod=cashout" <?php if($menumark=='cashout_list'):?>class="sel"<?php endif;?>>提现记录<i></i></a>
		</div>
		<div class="hy_table">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="text-align:right;" width="150">账户余额：</td>
			<td><span class="corg"><?php echo $info['user_money'] ?> 元</span></td>
		</tr>
		<tr>
			<td style="text-align:right;">收款账户：</td>
			<td>
				<select name="userbank_id" class="inputselect">
				<option value="">请选择收款账户</option>
				<?php foreach($userbank_list as $k=>$v):?>
				<!--<option value="<?php echo $v['userbank_id'] ?>"><?php echo $v['userbank_name'] ?>(<?php echo substr($v['userbank_num'], 0, 4) ?>**** ****<?php echo substr($v['userbank_num'], -4) ?>)</option>-->
				<option value="<?php echo $v['userbank_id'] ?>"><?php echo $v['userbank_name'] ?> (<?php echo userbank_num($v['userbank_num']) ?>)</option>
				<?php endforeach;?>
				</select>
				<span id="userbank_id_show"></span>
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">提现金额：</td>
			<td>
				<input type="text" name="cashout_money" class="inputall input100" autocomplete="off" /> 元
				<span id="cashout_money_show" class="mal10"></span>
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">扣手续费：</td>
			<td><span id="cashout_fee">0</span> 元</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
				<input type="hidden" name="pesubmit" />	
				<input type="button" value="提 交"  class="tjbtn" />
			</td>
		</tr>
		</table>
		</form>
		<div class="tixing c888" style="margin-top:70px"><p class="cred mab10">温馨提示：</p>单笔<?php echo $cache_setting['cashout_min'] ?>元起可以提现，每笔扣除<?php echo $cache_setting['cashout_fee']*100 ?>%的手续费</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<script type="text/javascript">
$(function(){
	if (<?php echo count($userbank_list) ?> == 0) {
		pe_alert('请先添加收款账户', function(){
			pe_open('user.php?mod=userbank&act=add&fromto=<?php echo urlencode(pe_nowurl()) ?>');
		});
	}
	$(":input[name='cashout_money']").bind('keyup blur', function(){
		var cashout_money = pe_num($(this).val(), 'round', 1);
		var cashout_fee = pe_num(cashout_money * <?php echo $cache_setting['cashout_fee'] ?>, 'round', 1);
		$("#cashout_fee").html(cashout_fee);
	})
	$(":button").click(function(){
		var cashout_money = pe_num($(":input[name='cashout_money']").val(), 'float', 1);
		if (cashout_money <= 0) {
			pe_tip('请填写提现金额');
			return false;
		}
		pe_submit("user.php?mod=cashout&act=add", function(json){
			if (json.result) {
				pe_open("user.php?mod=cashout", 1000);	
			}
		})
	})
})
</script>
<?php include(pe_tpl('footer.html'));?>