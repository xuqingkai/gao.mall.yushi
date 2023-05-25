<?php include(pe_tpl('header.html'));?>
<div class="content" style="padding-top:0">
	<div class="now mat10"><?php echo $nowpath ?></div>
	<div class="pro_box">
		<div class="pro_left">
			<div id="duotu_html">
				<div class="proimg jqzoom MagnifierMain">
					<img src="<?php echo pe_thumb($info['product_logo'], 400, 400) ?>" jqimg="<?php echo pe_thumb($info['product_logo']) ?>" width="381" height="381" />
				</div>
				<div class="clear"></div>
				<span class="spe_leftBtn" style="display:none">&lt;</span>
				<span class="spe_rightBtn" style="display:none">&gt;</span>
				<?php if(count($album_list)):?>
				<div class="spec-items"> 
					<ul>
					<?php foreach($album_list as $k=>$v):?>
					<li <?php if($k==0):?>class="on"<?php endif;?>><img src="<?php echo pe_thumb($v, 400, 400) ?>" bigimg="<?php echo pe_thumb($v) ?>" /></li>
					<?php endforeach;?>
					</ul>
				</div>
				<?php endif;?>
			</div>
			<div class="clear"></div>
			<a href="javascript:collect_add('<?php echo $info['product_id'] ?>');" class="sctj fl">收藏商品</a>
			<div class="mat10 fxlj fr">
				<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
				<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdUrl":"<?php echo pe_url('product-'.$info['product_id'], 'u='.$_s_user_id) ?>","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
			</div>
			<div class="clear"></div>
		</div>
		<div class="fl proinfo">
			<h3><?php echo $info['product_name'] ?></h3>
			<?php if($info['huodong_id']):?>
			<div class="hd_box">
				<span class="fl ico_hd"><?php echo $info['huodong_tag'] ?></span>
				<span class="fr font13">距离结束：<span id="huodong_time" endtime="<?php echo $info['huodong_etime'] ?>"></span></span>
				<div class="clear"></div>
			</div>
			<?php endif;?>
			<div class="proinfo_box">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<?php if($info['huodong_id']):?>
				<tr>
					<td>原价</td>
					<td><s class="num">¥ <span id="product_smoney"><?php echo $info['product_smoney'] ?></span></s></td>
				</tr>
				<?php endif;?>
				<tr>
					<td width="50">价格</td>
					<td>
						<span class="jg_price">
							<span class="font18">¥</span>
							<span id="product_money"><?php echo $info['product_money'] ?></span>
						</span>
					</td>
				</tr>
				</table>
				<div class="pro_ewm"><img src="<?php echo pe_qrcode(pe_nowurl()) ?>" /></div>
			</div>
			<div class="xl_box">
				<span class="xl_li">运费：<?php if($info['product_wlmoney'] == 0):?>包邮<?php else:?>¥ <?php echo $info['product_wlmoney'] ?><?php endif;?></span>
				<span class="xl_li">热销：<?php echo $info['product_sellnum'] ?> 件</span>
				<span class="xl_li" style="border-right:0;">奖励：<span class="cgreen"><?php echo $info['product_point'] ?></span> 积分</span>
				<div class="clear"></div>
			</div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="mat10">
			<?php if(count($quan_list)):?>
			<tr>
				<td>领券</td>
				<td>
					<?php foreach($quan_list as $v):?>
					<a href="<?php echo pe_url('quan-'.$v['quan_id']) ?>" target="_blank"><span class="yhq_btn1"><span class="yhq_q">券</span>¥ <?php echo $v['quan_money'] ?></span></a>
					<?php endforeach;?>
				</td>
			</tr>
			<?php endif;?>
			<!--<tr>
				<td>评分</td>
				<td>
					<div class="fl mat2"><?php echo pe_comment($comment_star) ?></div>
					<span class="fl mal5 corg"><?php echo $comment_star ?> 分</span>
					<span class="fl mal10 c888"><?php echo $info['product_commentnum'] ?>人评价</span>
					<div class="clear"></div>
				</td>
			</tr>-->
			<?php foreach($rule_list as $k=>$v):?>
			<tr>
				<td><div class="mab5"><?php echo $v['name'] ?></div></td>
				<td class="js_rule">			
				<?php foreach($v['list'] as $kk=>$vv):?>
				<span rule_id="<?php echo $v['id'] ?>" ruledata_id="<?php echo $vv['id'] ?>" class="js_ruledata prodata_span"><?php echo $vv['name'] ?></span>
				<?php endforeach;?>
				</td>
			</tr>
			<?php endforeach;?>
			<tr>
				<td>数量</td>
				<td class="shuliang">
					<input type="hidden" name="product_guid" value="<?php echo $product_guid ?>" />
					<span class="img1" onclick="pe_numchange('product_num', '-', 1);"><i></i></span>
					<div class="shuliang_box"><input type="text" name="product_num" value="1" /></div>
					<span class="img2" onclick="pe_numchange('product_num', '+', 999999);"><i></i></span>
					<span class="fl c999 mal10 mat3 font12">库存<span id="product_num"><?php echo $info['product_num'] ?></span>件</span>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<?php if($info['product_state']==2):?>
					<div class="jiagwc_1"><i></i>商品已下架</div>
					<?php elseif($info['product_num']==0):?>
					<div class="jiagwc_1"><i></i>已售罄</div>
					<?php elseif($info['product_type']=='virtual'):?>
					<a href="javascript:buy_btn('buy', '<?php echo $info['product_id'] ?>');" class="fl ljgm">立即购买</a>
					<?php else:?>
					<a href="javascript:buy_btn('buy', '<?php echo $info['product_id'] ?>');" class="fl ljgm">立即购买</a>
					<a href="javascript:buy_btn('add', '<?php echo $info['product_id'] ?>');" class="fl jiagwc"><i></i>加入购物车</a>
					<div class="clear"></div>
					<?php endif;?>
				</td>
			</tr>
			</table>
			<div class="clear"></div>
		</div>
		<div class="proview_tj">
			<div class="proview_tjtt">
				<i></i>
				<span>新品推荐</span>
			</div>
			<?php foreach($product_newlist as $v):?>
			<div class="mat10">
				<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank"><img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" width="180" height="180" class="js_imgload" /></a>
			</div>
			<p class="proview_tjname mat5"><a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank"><?php echo $v['product_name'] ?></a></p>
			<p class="money3 fl">¥<?php echo product_money($v['product_money']) ?></p>
			<div class="c999 fr font12">已售<?php echo $v['product_sellnum'] ?>件</div>
			<div class="clear"></div>
			<?php endforeach;?>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div style="margin-top:20px;"></div>
	<div class="hot_box">
		<h3 class="hot_tt1">热销排行</h3>
		<div class="hotlist">
			<?php foreach($product_hotlist as $v):?>
			<div class="mat20">
				<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank"><img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" width="180" height="180" class="js_imgload" /></a>
			</div>
			<p class="proview_tjname mat10"><a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank"><?php echo $v['product_name'] ?></a></p>
			<p class="money3 fl">¥<?php echo product_money($v['product_money']) ?></p>
			<div class="c999 fr font12">已售<?php echo $v['product_sellnum'] ?>件</div>
			<div class="clear"></div>
			<div class="shixian mat15"></div>
			<?php endforeach;?>
		</div>
	</div>
	<div class="fr xiangqing">
		<div class="caidan1" id="js_menu">
			<ul class="fl">
				<li class="sel"><a href="javascript:;">商品详情</a><i></i></li>
				<li><a href="javascript:;">用户评价 <span class="corg">(<?php echo $info['product_commentnum'] ?>)</span></a><i></i></li>
			</ul>
			<!--<div class="fr c666 mat10 mar10">商品货号：<?php echo $info['product_mark'] ?></div>-->
			<div class="clear"></div>
		</div>
		<!--详情 Start-->
		<div class="promain js_menuhtml"><?php echo $info['product_text'] ?></div>
		<!--详情 end-->
		<!--评论 Start-->
		<div class="promain js_menuhtml" style="display:none">
			<div class="plrate">
				<div class="plrate_l fl"><strong><?php echo $comment_rate_hao ?>%</strong><p class="c888 mat3">好评率</p></div>
				<div class="plrate_m fl">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="60">好评</td>
						<td><div class="gd_box"><div class="gd_1" style="width:<?php echo $comment_rate_hao*2 ?>px;"></div></div></td>
						<td width="50"><?php echo $comment_rate_hao ?>%</td>
					</tr>
					<tr>
						<td>中评</td>
						<td><div class="gd_box"><div style="width:<?php echo $comment_rate_zhong*2 ?>px;"></div></div></td>
						<td><?php echo $comment_rate_zhong ?>%</td>
					</tr>
					<tr>
						<td>差评</td>
						<td><div class="gd_box"><div style="width:<?php echo $comment_rate_cha*2 ?>px;"></div></div></td>
						<td><?php echo $comment_rate_cha ?>%</td>
					</tr>
					</table>
				</div>
				<div class="plrate_r">
					购买过该商品的用户可以进行评价
					<div class="mat8"><a href="<?php echo $pe['host_root'] ?>user.php?mod=order&state=wpj" target="_blank">发表评价<span class="font12 normal mal5"><?php echo $comment_point ?></span></a></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="plmenu" id="js_commentmenu">
				<a href="javascript:;" val="0" class="sel"><label><input name="comment_rate" type="radio" class="inputfix mar5">全部(<?php echo $info['product_commentnum'] ?>)</label></a>
				<a href="javascript:;" val="hao"><label><input name="comment_rate" type="radio" class="inputfix mar5">好评(<?php echo intval($comment_ratearr[0]) ?>)</label></a>
				<a href="javascript:;" val="zhong"><label><input name="comment_rate" type="radio" class="inputfix mar5">中评(<?php echo intval($comment_ratearr[1]) ?>)</label></a>
				<a href="javascript:;" val="cha"><label><input name="comment_rate" type="radio" class="inputfix mar5">差评(<?php echo intval($comment_ratearr[2]) ?>)</label></a>
			</div>
			<div id="js_commenthtml">
				<script type="text/html" id="js_commenttpl">
				{{each list as v k}}
				<div class="pj_box">
					<div class="pj_tx"><img src="{{v.user_logo}}"><p>{{v.user_name}}</p></div>
					<div class="pj_r">
						<ul class="plmain_ul">
							<li>{{v.comment_star}}</li>
						</ul>
						<div class="pingjia font14">{{v.comment_text}}</div>
						<div class="pj_img">
							{{each v.comment_logo as vv kk}}
							<a href="javascript:;"><img src="{{vv.logo}}" /></a>
							{{/each}}
						</div>
						<div class="pj_bigimg"></div>
						<div class="c888">{{v.comment_atime}}</div>
						{{if v.comment_reply == 1}}
						<div class="mjhf">卖家回复：{{v.comment_reply_text}}</div>
						<div class="c888">{{v.comment_reply_time}}</div>
						{{/if}}
					</div>
					<div class="clear"></div>
				</div>
				{{/each}}
				<div class="fenye mat10">{{page}}<div class="clear"></div></div>					
				</script>
			</div>
		</div>
		<!--评论 End-->
	</div>
</div>
<link type="text/css" rel="stylesheet" href="<?php echo $pe['host_root'] ?>public/plugin/jqzoom/style.css" />
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/jqzoom/jquery.jqzoom.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo $pe['host_root'] ?>public/plugin/duotu/duotu.css" />
<script type="text/javascript" src="<?php echo $pe['host_root'] ?>public/plugin/duotu/duotu.js"></script>
<script type="text/javascript">
var menu_top = $("#js_menu").offset().top;
template.config('escape', false);
$(function(){
	<?php if(count($album_list)):?>
	MagnifierF("duotu_html");
	<?php endif;?>
	$(".jqzoom").jqueryzoom();
	$(":input[name='product_num']").keyup(function(){
		if (!$(this).val().match(/^[1-9]+[0-9]*$/)) $(this).val(1);
	})
	pe_jstime("#huodong_time", '<?php echo time() ?>', 'html');
	//标签切换
	$("#js_menu").find("li").click(function(){
		var num = $(this).index();
		$("#js_menu li").removeClass("sel").eq(num).addClass("sel");
		$(".js_menuhtml").hide().eq(num).show();
		if (num == 1) {
			comment_page(1);
		}
		else if(num == 2) {
			ask_page(1);
		}
		else {
			$("body,html").scrollTop(menu_top);	
		}
	})
	//评价切换
	$("#js_commentmenu").find("a").click(function(){
		$("#js_commentmenu").find("a").removeClass("sel");
		$(this).addClass("sel");
		comment_page(1);
	})
	//晒图预览
	$(".pj_img img").live("click", function(){
		var pj_bigimg = $(this).parents(".pj_img").next(".pj_bigimg");
		$(this).parents(".pj_img").find("img").removeClass("sel");
		if (pj_bigimg.find("img").attr("src") == $(this).attr("src")) {
			pj_bigimg.empty();
		}
		else {
			$(this).addClass("sel");
			pj_bigimg.html('<img src="'+$(this).attr("src")+'" />');
		}
	})
	//规格选择
	prodata_check();
	$(".js_ruledata").click(function(){
		if ($(this).hasClass("prodata_lock")) return;
		if ($(this).hasClass("prodata_sel")) {
			$(this).removeClass("prodata_sel");
		}
		else {
			$(this).parent(".js_rule").find(".js_ruledata").removeClass("prodata_sel");
			$(this).addClass("prodata_sel");
		}
		prodata_check();
	})
})
//收藏商品
function collect_add(id) {
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=product&act=collect&id="+id, function(json){
		$("#js_collectnum").html('（' + json.num + '）');
	});
}
//评价翻页
function comment_page(page){
	var star = $("#js_commentmenu").find(".sel").attr("val");
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=comment&id=<?php echo $product_id ?>&star="+star+"&page="+page, function(json){
		$("#js_commenthtml").html(template('js_commenttpl', json));
		$("body,html").scrollTop(menu_top);
	});
}
//评价跳转
function comment_jump() {
	$("#js_menu").find("li").eq(1).click();
}
//立即购买/加入购物车按钮
function buy_btn(act, id) {
	if ('<?php echo user_checkguest() ?>' == false) {
		pe_open("<?php echo $pe['host_root'] ?>user.php?mod=do&act=login&<?php echo pe_fromto() ?>");
		return;
	}
	if ($(":input[name='product_guid']").val() == '') {
		pe_tip('请选择商品规格', 'error');
		return;		
	}
	pe_getinfo("<?php echo $pe['host_root'] ?>index.php?mod=cart&act="+act+"&id="+id+"&guid="+$(":input[name='product_guid']").val()+"&num="+$(":input[name='product_num']").val(), function(json){
		if (json.result == true) {
			if (act == 'buy') {
				pe_open("<?php echo $pe['host_root'] ?>index.php?mod=order&act=add&id="+json.id);
			}
			else {
				$("#cart_num").html(json.cart_num);
				layer.open({
					type: 1,
					title: false,
					closeBtn: 1,
					id: 'order_add',
					content: '<div class="gw"><p>商品已加入购物车！</p><a class="gw2" href="<?php echo pe_url("cart") ?>">去结算</a><a class="gw1" href="javascript:layer.closeAll();">继续购物</a><div class="clear"></div></div>'
				});
			}
		}
	})
}
//规格检测
function prodata_check() {
	var prodata_list = <?php echo $prodata_list ?>;
	$(".js_ruledata").each(function(){
		var sel_arr = new Array();
		var rule_id = $(this).attr("rule_id");
		var ruledata_id = $(this).attr("ruledata_id");
		sel_arr.push(ruledata_id);	
		$(".prodata_sel[rule_id!="+rule_id+"]").each(function(){
			sel_arr.push($(this).attr("ruledata_id"));
		})
		for (var i in prodata_list) {
			var match_num = 0;
			var product_ruleid = prodata_list[i]['product_ruleid'].split(',');
			for (id in sel_arr) {
				if (jQuery.inArray(sel_arr[id], product_ruleid) >= 0) match_num++;		
			}
			if (match_num == sel_arr.length) {
				var match_result = true; 
				break;
			}
			else {
				var match_result = false;
			}
		}
		if (match_result) {
			$(this).removeClass('prodata_lock');
		}
		else {
			$(this).addClass('prodata_lock');
		}
	})
	//更新选中规格组合
	var prodata_sel = new Array();
	$(".prodata_sel").each(function(){
		prodata_sel.push($(this).attr("ruledata_id"));
	})
	var product_ruleid = prodata_sel.join(',');
	$(":input[name='product_ruleid']").val('');
	//循环规格选中的有效列表
	for (var i in prodata_list) {
		//如果选中规格组合完成
		if (prodata_list[i]['product_ruleid'] == product_ruleid) {
			$(":input[name='product_guid']").val(prodata_list[i]['product_guid']);
			$("#product_money").html(prodata_list[i]['product_money']);
			$("#product_mmoney").html(prodata_list[i]['product_mmoney']);
			$("#product_num").html(prodata_list[i]['product_num']);
		}
	}
}
</script>
<?php include(pe_tpl('footer.html'));?>