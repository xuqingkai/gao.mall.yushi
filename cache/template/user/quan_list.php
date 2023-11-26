
<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt">
			<a href="javascript:;" class="sel"><?php echo $menutitle ?><span>(<?php echo $tongji['all'] ?>)</span><i></i></a>
			<a href="javascript:duihuan_open();" class="fabu_btn">券码兑换</a>
		</div>
		<div class="hy_tablelist">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>优惠券名称</th>
				<th width="100">面值</th>
				<th width="100">使用条件</th>
				<th width="100">限定商品</th>
				<th width="200">有效日期</th>
				<th width="80">状态</td>
			</tr>
			<?php foreach($info_list as $v):?>
			<tr>
				<td class="aleft"><a href="<?php echo pe_url('quan-'.$v['quan_id']) ?>" title="<?php echo $v['quan_name'] ?>" target="_blank" class="cblue"><?php echo $v['quan_name'] ?></a></td>
				<td><span class="corg">¥<?php echo $v['quan_money'] ?></span></td>
				<td>满<?php echo $v['quan_limit'] ?>元</td>
				<td><?php echo $v['product_id']?'部分商品':'无' ?></td>
				<td><?php echo $v['quan_sdate'] ?> 至 <?php echo $v['quan_edate'] ?></td>
				<td>
					<?php if($v['quanlog_state']==0):?>
					<span class="tag_green">未使用</span>				
					<?php elseif($v['quanlog_state']==1):?>
					<span class="tag_gray">已使用</span>					
					<?php elseif($v['quanlog_state']==2):?>
					<s class="tag_gray" style="color:#bbb">已过期</s>
					<?php endif;?>
				</td>
			</tr>
			<?php endforeach;?>
			</table>
		</div>
		<div class="fenye mat10"><?php echo $db->page->html ?></div>
	</div>
	<div class="clear"></div>
</div>
<script type="text/html" id="duihuan_html">
<form method="post" id="form">
<div class="quan_box" style="text-align:center">
	<input type="text" name="quan_key" value="" class="inputall input200" placeholder="请输入10位优惠券码" />
	<div class="quan_dh">
		<input type="hidden" name="pesubmit" />
		<input type="button" value="兑换券码" onclick="duihuan_btn()" />
	</div>
</div>
</form>
</script>
<script type="text/javascript">
function duihuan_open() {
	layer.open({
		type: 1,
		title: '兑换优惠券',
		area: ['350px', '220px'],
		fixed: false,
		shadeClose: true,
		shade: 0.5,
		content: $("#duihuan_html").html()
	});
}
//兑换优惠券
function duihuan_btn() {
	pe_submit("user.php?mod=quan&act=duihuan", function(json){
		if (json.result) {
			pe_open('reload', 1000);
		}
	});
}
</script>
<?php include(pe_tpl('footer.html'));?>