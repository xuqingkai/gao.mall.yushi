<?php include(pe_tpl('header.html'));?>
<div class="huiyuan_content">
	<?php include(pe_tpl('user_menu.html'));?>
	<div class="fr huiyuan_main">
		<div class="hy_tt"><a href="javascript:;" class="sel"><?php echo $menutitle ?><i></i></a></div>
		<div class="hy_table" style="text-align:center">
			<form method="post" id="form">
			<div class="upload_html" style="width:200px;margin:20px auto 40px;">
				<input type="hidden" name="user_logo" value="<?php echo $info['user_logo'] ?>" class="upload_value" />
				<a href="javascript:;" class="upload_btn"><img src="<?php echo pe_thumb($info['user_logo'], '_200', '_200', 'avatar') ?>?time=<?php echo time() ?>" class="upload_logo" style="width:200px; height:200px;" /></a>
				<div class="upload_jindu"></div>
				<div class="upload_bg"></div>
				<div class="upload_do">
					<a href="javascript:;" class="upload_left"></a>
					<a href="javascript:;" class="upload_right"></a>
					<a href="javascript:;" class="upload_del"></a>
				</div>	
			</div>
			<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
			<input type="hidden" name="pesubmit" />	
			<input type="button" value="提 交"  class="tjbtn" />
			</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<link rel="stylesheet" type="text/css" href="<?php echo $pe['host_root'] ?>public/plugin/webuploader/webuploader.css">
<script charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/webuploader/webuploader.min.js"></script>
<script charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/webuploader/upload.js"></script>
<script type="text/javascript">
$(function(){
	$("body").pe_upload('pc', 5);
	$(":button").click(function(){
		pe_submit('user.php?mod=setting&act=logo');
	})
});
</script>
<?php include(pe_tpl('footer.html'));?>