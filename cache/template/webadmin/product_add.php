<?php include(pe_tpl('header.html','admin'));?>
<div class="right">
	<div class="now">
		<a href="javascript:;" class="sel"><?php echo $menutitle ?><i></i></a>
		<div class="clear"></div>
	</div>
	<form method="post" enctype="multipart/form-data">
	<div class="right_main">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat20 mab20">
		<tr>
			<td align="right">商品类型：</td>
			<td><?php echo $ini['product_type'][$info['product_type']] ?><input type="hidden" name="info[product_type]" value="<?php echo $info['product_type'] ?>" /></td>
		</tr>
		<tr>
			<td align="right">商品名称：</td>
			<td><input type="text" name="info[product_name]" value="<?php echo $info['product_name'] ?>" class="inputall input600" /></td>
		</tr>
		<tr>
			<td align="right" width="150">商品分类：</td>
			<td>
				<select name="info[category_id]" class="inputselect" style="width:250px">
				<option value="0">-- 商品分类 --</option>
				<?php foreach($category_treelist as $v):?>
				<option value="<?php echo $v['category_id'] ?>" <?php if($v['category_id']==$info['category_id']):?>selected="selected"<?php endif;?>><?php echo $v['category_showname'] ?></option>
				<?php endforeach;?>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">品牌名称：</td>
			<td>
				<select name="info[brand_id]" class="inputselect" style="width:250px">
				<option value="0">-- 请选择 --</option>
				<?php foreach($cache_brand as $v):?>
				<option value="<?php echo $v['brand_id'] ?>" <?php if($v['brand_id']==$info['brand_id']):?>selected="selected"<?php endif;?>>[<?php echo $v['brand_word'] ?>] <?php echo $v['brand_name'] ?></option>
				<?php endforeach;?>
				</select>
			</td>
		</tr>
		<?php if($info['product_type'] == 'normal'):?>
		<tr>
			<td align="right">商品规格：</td>
			<td>
				<a href="javascript:;" class="admin_btn mar10" onclick="rule_open()">选择规格</a>
				<a href="javascript:;" class="admin_btn" onclick="rule_close()">关闭规格</a>
			</td>
		</tr>
		<tr id="rule_html" style="display:none">
			<td align="right">规格信息：<input type="hidden" id="ruledata_id" value="<?php echo $ruledata_id ?>" /></td>
			<td id="rule_list">
				<script type="text/html" id="rule_list_tpl">
				<table width="100%" class="list" style="width:620px;">
				<tr>
					{{each rule_list as v}}
					<th class="bgtt">{{v.name}}
						<input type='hidden' name='rule_id[]' value='{{v.id}}' />
						<input type='hidden' name='rule_name[]' value='{{v.name}}' />
					</th>
					{{/each}}
					<th class="table_td bgtt" width="100">价格(元)<a href="javascript:rule_bat('product_smoney');" class="cblue mal5">[批]</a></th>
					<!--<th class="table_td bgtt" width="70">市场价<a href="javascript:rule_bat('product_mmoney');" class="cblue mal5">[批]</a></th>-->
					<th class="table_td bgtt" width="100">库存(件)<a href="javascript:rule_bat('product_num');" class="cblue mal5">[批]</a></th>
				</tr>
				{{each prodata_list as v k}}
				<tr>
					{{each v.name_arr as vv kk}}
					{{if rowspan_list[k][kk] > 0}}<td rowspan="{{rowspan_list[k][kk]}}">{{vv}}</td>{{/if}}
					{{/each}}
					<td class="table_td"><input type="text" name="product_smoney[]" value="{{v.smoney}}" class="inputtext input50" /></td>
					<!--<td class="table_td"><input type="text" name="product_mmoney[]" value="{{v.mmoney}}" class="inputtext input50" /></td>-->
					<td class="table_td">
						<input type="text" name="product_num[]" value="{{v.num}}" class="inputtext input40" />
						<input type="hidden" name="product_ruleid[]" value="{{v.id}}" />
						<input type="hidden" name="product_rulename[]" value="{{v.name}}" />
					</td>
				</tr>
				{{/each}}
				</table>
				</script>
			</td>		
		</tr>
		<?php endif;?>
		<tr id="base_html">
			<td align="right">商品价格：</td>
			<td>
				<input type="text" name="info[product_smoney]" value="<?php echo floatval($info['product_smoney']) ?>" class="inputall input100" /> <span class="c888">元</span></span>，	
				库存：<input type="text" name="info[product_num]" value="<?php echo $info['product_num'] ?>" class="inputall input100" /> <span class="c888">件</span>
			</td>
		</tr>
		<!--<tr id="base_html">
			<td align="right">基本信息：</td>
			<td>	
				<table width="100%" class="list" style="width:702px;border:1px #eee solid">
				<tr>
					<th class="bgtt" width="70">本店价</th>
					<th class="bgtt" width="70">市场价</th>
					<th class="bgtt" width="70">库存</th>
				</tr>
				<tr>
					<td><input type="text" name="info[product_smoney]" value="<?php echo floatval($info['product_smoney']) ?>" class="inputtext input100" /> 元</td>
					<td><input type="text" name="info[product_mmoney]" value="<?php echo floatval($info['product_mmoney']) ?>" class="inputtext input100" /> 元</td>
					<td><input type="text" name="info[product_num]" value="<?php echo $info['product_num'] ?>" class="inputtext input100" /> 件</td>
				</tr>
				</table>
			</td>
		</tr>-->
		<!--<tr>
			<td align="right">商品货号：</td>
			<td><input type="text" name="info[product_mark]" value="<?php echo $info['product_mark'] ?>" class="inputall input100" /></td>
		</tr>-->
		<?php if($info['product_type'] == 'normal'):?>
		<tr>
			<td align="right">运　　费：</td>
			<td><input type="text" name="info[product_wlmoney]" value="<?php echo floatval($info['product_wlmoney']) ?>" class="inputall input100" /> <span class="c888">元</span></td>
		</tr>
		<?php endif;?>
		<tr>
			<td align="right">赠送积分：</td>
			<td><input type="text" name="info[product_point]" value="<?php echo floatval($info['product_point']) ?>" class="inputall input100" /> <span class="c888">个</span></td>
		</tr>
		</table>
	</div>
	<div class="right_main">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat10 mab10">
		<tr>
			<td align="right" width="150">商品图片：</td>
			<td>
				<?php foreach(array(0,1,2,3,4) as $k=>$v):?>
				<?php $logo = $album_list[$k] ? pe_thumb($album_list[$k], '_400', '_400') : $pe['host_admintpl']."images/up_bg.jpg"?>
				<div class="upload_html fl">
					<input type="hidden" name="product_album[]" value="<?php echo $album_list[$k] ?>" class="upload_value" />
					<a href="javascript:;" class="upload_btn"><img src="<?php echo $logo ?>" class="upload_logo" style="width:125px; height:125px;" /></a>
					<div class="upload_jindu"></div>
					<div class="upload_bg"></div>
					<div class="upload_do">
						<a href="javascript:;" class="upload_left"></a>
						<a href="javascript:;" class="upload_right"></a>
						<a href="javascript:;" class="upload_del"></a>
					</div>	
				</div>
				<?php endforeach;?>					
			</td>
		</tr>
		</table>
	</div>
	<div class="right_main">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat10 mab10">
		<tr>
			<td align="right" width="150">商品详情：</td>
			<td style="padding:5px">
                <script id="editor" type="text/plain" name="info[product_text]" style="width:900px;height:450px;">
				<?php echo $info['product_text'] ?>
				</script>	
			</td>
		</tr>
		</table>
	</div>
	<!--<div class="right_main2">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat10 mab10">
		<tr>
			<td align="right" width="150">页面关键词：</td>
			<td><input type="text" name="info[product_keys]" value="<?php echo $info['product_keys'] ?>" class="inputall input500" /> <span class="c888">（SEO选项）</span></td>
		</tr>
		<tr>
			<td align="right">页面描述：</td>
			<td><textarea name="info[product_desc]" style="width:500px;height:100px;"><?php echo $info['product_desc'] ?></textarea> <span class="c888">（SEO选项）</span></td>
		</tr>
		</table>
	</div>
	<div class="right_main"  style="display:none">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wenzhang mat10 mab10">
		<tr>
			<td align="right" width="140">页面关键词：</td>
			<td><input type="text" name="info[product_keys]" value="<?php echo $info['product_keys'] ?>" class="inputall input500" /> <span class="c888">（SEO选项）</span></td>
		</tr>
		<tr>
			<td align="right">页面描述：</td>
			<td><textarea name="info[product_desc]" style="width:500px;height:100px;"><?php echo $info['product_desc'] ?></textarea> <span class="c888">（SEO选项）</span></td>
		</tr>
		</table>
	</div>-->
	<div class="center mat20 mab20">
		<input type="hidden" name="pesubmit" />
		<input type="hidden" name="pe_token" value="<?php echo $pe_token ?>" />
		<input type="button" value="提 交" class="tjbtn" />
	</div>
	</form>
</div>
<script charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/my97/WdatePicker.js"></script>
<script type="text/javascript" charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/u8editor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/u8editor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/u8editor/lang/zh-cn/zh-cn.js"></script>
   
<link rel="stylesheet" type="text/css" href="<?php echo $pe['host_root'] ?>public/plugin/webuploader/webuploader.css">
<script charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/webuploader/webuploader.min.js"></script>
<script charset="utf-8" src="<?php echo $pe['host_root'] ?>public/plugin/webuploader/upload.js"></script>
<script type="text/javascript" charset="utf-8">
//实例化编辑器
var ue = UE.getEditor('editor');


$(function(){
	rule_list("<?php echo $info['product_id'] ?>", 'datalist');
	$("body").pe_upload('pc', 5);
	$(".now a").click(function(){
		var _index = $(this).index();
		$(".now a").removeClass("sel");	
		$(this).addClass("sel");
		if (_index == 0) {
			$(".right_main:eq(0), .right_main2").show();
			$(".right_main:eq(1)").hide();
		}
		else {
			$(".right_main:eq(0), .right_main2").hide();
			$(".right_main:eq(1)").show();
		}
	})
	$(":button").click(function(){
		var kong_num = rule_num = 0;
		if ($(":input[name='product_ruleid[]']").length > 0) {
			$("#rule_html").find(":input").each(function(){
				if ($(this).attr("disabled") == "disabled" || $(this).is(":hidden")) return true;
				if ($(this).val() == '') kong_num++;
			})
			if (kong_num > 0) {
				alert('规格属性尚未填写完全');
				return;
			}
		}
		$("form").submit();
	})
});
//打开规格框
function rule_open() {
	url = "webadmin.php?mod=product&act=rule";
	if ($(":input[name='product_ruleid[]']").length > 0) {
		var product_ruleid = new Array();
		$(":input[name='product_ruleid[]']").each(function(){
			product_ruleid.push($(this).val());
		})
		product_ruleid = product_ruleid.join(',');
		url += "&id="+ product_ruleid;
	}
	pe_dialog(url, '选择规格', 1000, 550);
}
//关闭规格
function rule_close() {
	$("#rule_html").hide();
	$("#rule_html tr").remove();
	$("#base_html").show();
}
//显示规格列表
function rule_list(id, act) {
	$.getJSON("webadmin.php?mod=product&act="+act+"&id="+id, function(json){
		if (json.result) {
			$("#rule_html").show();
			$("#base_html").hide();
			pe_jsontpl('rule_list', json);
		}
	})
}
//删除规格列表
function rule_del(id) {
	if ($("#rule_html tr").length <= 2) {
		rule_close();
	}
	else {
		$("#"+id).remove();
	}
}
//批量设置价格
function rule_bat(name) {
	if (name == 'product_smoney') text = '价格';
	if (name == 'product_mmoney') text = '市场价';
	if (name == 'product_num') text = '库存数';
	var num = window.prompt("批量设置" + text, "");
	if (num == '') {
		alert('不能为空!');		
		return;
	}
	if (num == null) {return;}
	$(":input[name='" + name + "[]']").val(num);
}
</script>
<style type="text/css">
#rule_html table th, #rule_html table td{border:1px #f1f1f1 solid;}
</style>
<?php include(pe_tpl('footer.html','admin'));?>