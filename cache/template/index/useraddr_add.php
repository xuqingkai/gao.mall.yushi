<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $seo['title'] ?></title>
<meta name="keywords" content="<?php echo $seo['keywords'] ?>" />
<meta name="description" content="<?php echo $seo['description'] ?>" />
<link type="text/css" rel="stylesheet" href="<?php echo $pe['host_tpl'] ?>css/style.css" />
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/global.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/layer/layer.js"></script>
</head>
<body style="background:#fff;padding:5px; font-family:宋体;">
<form method="post" id="form">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20 addr_zj">
<tr>
	<td style="text-align:right;" width="120">收货人：</td>
	<td>
		<input type="text" name="user_tname" value="<?php echo $info['user_tname'] ?>" class="inputall input200" />
		<span id="user_tname_show"></span>			
	</td>
</tr>
<tr>
	<td style="text-align:right;">手机号码：</td>
	<td>
		<input type="text" name="user_phone" value="<?php echo $info['user_phone'] ?>" class="inputall input200" />
		<span id="user_phone_show"></span>
	</td>
</tr>
<tr>
	<td style="text-align:right;">所在城市：</td>
	<td id="cityselect">
		<select name="address_province" class="js_prov inputselect"></select>
		<select name="address_city" class="js_city inputselect"></select>
		<select name="address_area" class="js_area inputselect"></select>
		<span id="address_province_show"></span>
		<span id="address_city_show"></span>
		<span id="address_area_show"></span>			
	</td>
</tr>
<tr>
	<td style="text-align:right;">详细地址：</td>
	<td>
		<input type="text" name="address_text" value="<?php echo $info['address_text'] ?>" class="inputall input400" />
		<span id="address_text_show"></span>
	</td>
</tr>
<tr>
	<td style="text-align:right;"></td>
	<td style="padding-top:0; padding-bottom:0; line-height:14px;height:14px;">
		<label for="default">
			<input type="checkbox" name="address_default" value="1" <?php if($info['address_default']):?>checked="checked"<?php endif;?> class="inputfix mar5" id="default" />
			<span>设为默认收货地址</span>
		</label>
	</td>
</tr>
<tr>
	<td style="text-align:right;"></td>
	<td>
		<input type="hidden" name="pesubmit" />
		<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
		<input type="button" value="提 交" class="tjbtn" />
	</td>
</tr>
</table>
</form>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/formcheck.js"></script>
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/js/shengshi.js"></script>
<script type="text/javascript">
$(function(){
	$("#cityselect").shengshi({
	    prov:"<?php echo $info['address_province'] ?>",
	    city:"<?php echo $info['address_city'] ?>",
	    area:"<?php echo $info['address_area'] ?>"
	});
})
var useraddr_add = function () {
	pe_submit("<?php echo $pe['host_root'] ?>index.php?mod=useraddr&act=add", function(json){
		if (json.result) {
			window.parent.useraddr_list(json.id);
			window.parent.layer.closeAll();
		}
	})
}
var form_info = [
	{"name":"address_province", "mod":"str", "act":"change", "arg":"", "show_id":"address_province_show","show_error":"省份必选"},
	{"name":"address_city", "mod":"str", "act":"change", "arg":"", "show_id":"address_city_show","show_error":"城市必选"},
	{"name":"address_area", "mod":"str", "act":"change", "arg":"", "show_id":"address_area_show","show_error":"区/县必选"},
	{"name":"address_text", "mod":"str", "act":"blur", "arg":"", "show_id":"address_text_show","show_error":"必填"},
	{"name":"user_tname", "mod":"str", "act":"blur", "arg":"", "show_id":"user_tname_show","show_error":"必填"},
	{"name":"user_phone", "mod":"match", "act":"blur", "arg":"phone", "show_id":"user_phone_show","show_error":"格式有误"}
]
$(":button").pe_submit(form_info, useraddr_add);
</script>
</body>
</html>