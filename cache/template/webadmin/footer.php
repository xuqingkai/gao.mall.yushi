	<div class="clear"></div>
	
</div>
<script type="text/javascript">
$(function(){
	win_init();
	$(window).resize(function() {
		win_init();
	});
	if ($(".left .sel").length) {
		$(".left").scrollTop(localStorage.getItem('left_scrolltop'));
	}
	else {
		localStorage.setItem('left_scrolltop', 0);
	}
	$(".left").scroll(function(){
		localStorage.setItem('left_scrolltop', $(".left").scrollTop());
	})
	$(".list").find("td").hover(
		function(){
			if ($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
			$(this).parent("tr").children("td[nosel!=1]").css("background-color", "#fbfbfb");
		},
		function(){
			if ($(this).hasClass("bgtt") || $(this).is("[nosel=1]")) return;
			$(this).parent("tr").children("td[nosel!=1]").css("background-color", "#fff");
		}
	)
	$(".right_main").each(function(){
		if ($(this).find(".list tr:visible").length > 1) {
			$(this).css("padding-bottom", 0);	
		}	
	})
	if ($(".right_bottom").height() == 0) {
		$(".right_bottom").remove();
	}
})
function win_init() {
	$(".left").add(".right").css("height", $(window).height() - $(".pagetop").height());
}
pe_loadscript("<?php echo $pe['host_root'] ?>api.php?mod=cron");
</script>
</body>
</html>