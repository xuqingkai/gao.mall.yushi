<div class="clear"></div>
<div class="celan">
	<a href="<?php echo pe_url('cart') ?>" style="margin-top:90px;">
		<div class="cl_sl"><?php echo user_cartnum() ?></div>
		<div class="ico_gwc"><i></i></div>
		<div class="font14 mat8">购<br />物<br />车</div>
	</a>
	
	<a href="javascript:;" style="position:relative" id="qrcode_btn">
		<div class="cl_weixin"><i></i></div>
		<div class="cl_ewm" id="qrcode_show"><img src="<?php echo pe_thumb($cache_setting['web_qrcode']) ?>"></div>
	</a>
	<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $cache_setting['web_qq'] ?>&site=qq&menu=yes" target="_blank">
		<div class="cl_qq"><i></i></div>
	</a>
	<a href="javascript:;" style="position:relative" id="tel_btn">
		<div class="font14">电话</div>
		<div class="cl_tel" id="tel_show"><?php echo $cache_setting['web_phone'] ?></div>
	</a>
	<a href="javascript:right_scrolltop();" class="topback"><i></i></a>
</div>
<div class="foot">
	<div class="subnav">
		Copyright <span class="num">©</span> <?php echo $cache_setting['web_copyright'] ?> All Rights Reserved <?php echo $cache_setting['web_icp'] ?> <?php echo $cache_setting['web_tongji'] ?>&nbsp;
		Powered by <a href="http://www.qiye1000.com" target="_blank" title="系统">xiaoyao<?php echo $ini['xaoyao']['version'] ?></a>
	</div>
</div>




<script type="text/javascript">
$(function(){
	//二维码显示
	$("#qrcode_btn").hover(function(){
        $("#qrcode_show").show();
	}, function(){
        $("#qrcode_show").hide();
	})
	//电话显示
	$("#tel_btn").hover(function(){
        $("#tel_show").show();
	}, function(){
        $("#tel_show").hide();
	})
});
function right_scrolltop() {
	$("body,html").animate({"scrollTop":0});	
}
pe_loadscript("<?php echo $pe['host_root'] ?>api.php?mod=cron");
</script>
</body>
</html>