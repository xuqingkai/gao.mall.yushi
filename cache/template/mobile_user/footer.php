<link rel="stylesheet" href="<?php echo $pe['host_root'] ?>public/plugin/jqweui/weui.min.css">
<link rel="stylesheet" href="<?php echo $pe['host_root'] ?>public/plugin/jqweui/jquery-weui.min.css">
<script src="<?php echo $pe['host_root'] ?>public/plugin/jqweui/jquery-weui.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/layer_mobile/layer.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/app.js"></script>
<script type="text/javascript">
//顶部菜单点击
function top_menu() {
	if ($("#top_menu").is(":hidden")) {
		$("#top_menu").show();
	}
	else {
		$("#top_menu").hide();	
	}
	$("#top_menu a").live("click", function(){
		$("#top_menu").hide();
	})
}
pe_loadscript("<?php echo $pe['host_root'] ?>api.php?mod=cron");
</script>
</body>
</html>