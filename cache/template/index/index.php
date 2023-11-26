<?php include(pe_tpl('header.html'));?>
<div class="content" style="padding-top:5px">
	<div class="jdt_banner">
		<ul class="banList">
			<?php $index_jdt = 1;?>
			<?php foreach($cache_ad['pc']['index_jdt'] as $k=>$v):?>
			<li <?php if($index_jdt++==1):?>class="active1"<?php endif;?>><a href="<?php echo $v['ad_url'] ?>" target="_blank"><img src="<?php echo pe_thumb($v['ad_logo']) ?>"/></a></li>
			<?php endforeach;?>
		</ul>
		<div style="position:relative; width:725px; margin:0 auto; z-index:100">
		<div class="fomW">
			<div class="jsNav">
				<?php $index_jdt = 1;?>
				<?php foreach($cache_ad['pc']['index_jdt'] as $v):?>
				<a href="javascript:;" class="trigger <?php if($index_jdt++==1):?>current<?php endif;?>"></a>
				<?php endforeach;?>
			</div>
		</div>
		</div>
	</div>
	<div class="fr top_right">
		<div class="action_list">
			<div class="action_tt">
				<h3 class="fl"><?php echo $cache_class[1]['class_name'] ?></h3>
				<a class="fr" href="<?php echo pe_url('article-list-1') ?>">更多 ></a>
				<div class="clear"></div>
			</div>
			<ul>
				<?php foreach($notice_list as $k=>$v):?>
				<li <?php if($k>=7):?>style="border-bottom:0"<?php endif;?>><a href="<?php echo pe_url('article-'.$v['article_id']) ?>" title="<?php echo $v['article_name'] ?>" target="_blank"><?php echo $v['article_name'] ?></a><?php echo pe_date($v['article_atime'], 'm-d') ?></li>
				<?php endforeach;?>
			</ul>
		</div>
		<div class="top_fuwu">
			<ul>
			<li>
				<i class="i_1"></i>
				<h3>正品保证</h3>
			</li>
			<li>
				<i class="i_3"></i>
				<h3>闪电发货</h3>
			</li>
			<li style="border-right:0">
				<i class="i_4"></i>
				<h3>退货保障</h3>
			</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
	<!--限时折扣 Start-->
	<?php if(count($product_zhekou)):?>
	<div class="mx_tt">
		<span class="fl">限时折扣</span>
		<a href="<?php echo pe_url('huodong-zhekou') ?>" class="fr">更多></a>
		<div class="clear"></div>
	</div>
	<div class="mx_box">
		<?php foreach($product_zhekou as $k=>$v):?>
		<div class="mx_pro" <?php if(($k+1)%5==0):?>style="padding-right:0; border-right:0"<?php endif?>>
			<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank">
			<div class="ms_pro">
				<img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" width="195" height="195" class="js_imgload" />
				<div class="ms_time">
					剩余 <span class="huodong_time" endtime="<?php echo $v['huodong_etime'] ?>"></span>
				</div>
				<div class="ms_bg"></div>
			</div>
			<div style="padding:5px 0 0">
				<p class="prolist_name1"><?php echo $v['product_name'] ?></p>
				<div class=""><s class="c999 font12">原价：¥<?php echo product_money($v['product_smoney']) ?></s></div>
				<div class="ms_jg">
					<span class="ms_jg_l">
						<span class="money3">¥<?php echo product_money($v['product_money']) ?></span>
					</span> 
					<span class="ms_jg_r">立即抢购</span>
					<div class="clear"></div>
				</div>	
				<div class="clear"></div>
			</div>
			</a>
		</div>
		<?php endforeach;?>
		<div class="clear"></div>
	</div>
	<?php endif;?>
	<!--限时折扣 End-->
	<!--分类1 Start-->
	<?php foreach($category_indexlist as $category):?>
	<div class="prolist_html mat20">
		<div class="prolist_tt">
			<div class="fl"><h3><?php echo $category['category_name'] ?></h3></div>
			<a href="<?php echo pe_url('product-list-'.$category['category_id']) ?>" title="<?php echo $category['category_name'] ?>" target="_blank" class="fr c999">更多 ></a>
			<?php if(is_array($cache_category_arr[$category['category_id']])):?>
			<div class="prolist_ttfl">
				热门分类：
				<span style="overflow:hidden; height:16px;">
				<?php foreach($cache_category_arr[$category['category_id']] as $k=>$v):?>
				<a href="<?php echo pe_url('product-list-'.$k) ?>" title="<?php echo $v['category_name'] ?>" target="_blank"><?php echo $v['category_name'] ?></a>
				<span class="mal10 mar10 xian"></span>
				<?php endforeach;?>
				</span>
			</div>
			<?php endif;?>
			<div class="clear"></div>
		</div>
		<?php foreach($category['product_list'] as $k=>$v):?>
		<div class="prolist" <?php if(($k+1)%4==0):?>style="margin-right:0"<?php endif;?>>
			<a href="<?php echo pe_url('product-'.$v['product_id']) ?>" title="<?php echo $v['product_name'] ?>" target="_blank">
			<div class="pro_bq">
				<img src="<?php echo $pe['host_tpl'] ?>images/pixel.gif" data-url="<?php echo pe_thumb($v['product_logo'], 400, 400) ?>" title="<?php echo $v['product_name'] ?>" width="250" height="250" class="js_imgload" />
				<?php if($v['huodong_tag']):?><div class="bq_name"><?php echo $v['huodong_tag'] ?></div><?php endif;?>
			</div>
			<p class="prolist_name"><?php echo $v['product_name'] ?></p>
			<p class="mat8">
				<span class="money1 fl"><span class="num font18 mar3">¥</span><?php echo product_money($v['product_money']) ?></span></span> 
				<span class="font12 fr c999">已售<?php echo $v['product_sellnum'] ?>件</span>
			</p>
			<div class="clear"></div>
			</a>
		</div>
		<?php endforeach;?>
		<div class="clear"></div>
	</div>
	<?php endforeach;?>
	<!--分类1 End-->
	<div class="yl_list">
		<div class="yl_tt"><span>友情链接</span></div>
		<div class="yl_name">
			<?php foreach($cache_link as $v):?>
			<a href="<?php echo $v['link_url'] ?>" target="_blank" title="<?php echo $v['link_name'] ?>"><?php echo $v['link_name'] ?></a>
			<?php endforeach;?>
		</div>
	</div>
	
	
	
	<link rel="stylesheet" href="https://cdn.staticfile.org/layui/2.6.8/css/layui.css">
    <script src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
	<style>
    .lineBox{
        position: fixed!important;
        bottom: 30%;
        right: 0px;
        left: auto;
        z-index: 999999;
    }
    .lineBox .lineItem{
        cursor: pointer;
        width: 50px;
        height: 55px;
        background: #2d8cf0;
        margin-bottom: 1px;
        color: #fff;
        line-height: 55px;
        text-align: center;
        position: relative;
    }
    .lineItem .layui-icon{
        font-size: 26px;
    }
    .lineItem:hover{
        opacity: 0.8;
    }
    .lineTop{
        margin-top: 4px;
    }
    .lineTip{
        border-radius: 2px;
        box-shadow: 1px 1px 3px rgba(0,0,0,.2);
        position: absolute;
        top:0px;
        right: 59px;
        color: #000;
        padding: 0 10px;
        background: #fff;
        display: none;
    }
    .lineTip:before, .lineTip:after {
        content: "";
        display: block;
        position: absolute;
        width: 0;
        height: 0;
        border: 8px solid transparent;
        border-left-color: rgba(255,255,255,1);
        right: -16px;
        top: 10px;
        z-index: 1;
    }

    .lineTip:after{
        right: -18px;
        border-left-color: rgb(237,237,237);
        z-index: 0;
    }
    .lineWechat{
        width: 100px;
        height: 100px;
        padding: 0px;
    }
</style>
<div class="lineBox">
    <div class="lineItem">
        <i class="layui-icon">&#xe606;</i>
    </div>
   
    <div class="lineItem">
        <i class="layui-icon">&#xe676;</i>
        <div class="lineTip">
           <a href="http://wpa.qq.com/msgrd?v=3&uin=505294128&site=qq&menu=yes" target="_blank">QQ505294128</a>
        </div>
    </div>
    
    <div class="lineItem lineTop" id="launchTopButton">
        <i class="layui-icon">&#xe604;</i>
    </div>
</div>
<script>
    $(function(){
        $("#launchTopButton").click(function() {
            $('body,html').scrollTop(0);
        });
        $(".lineItem").hover(function() {
            $(".lineTip").hide();
            $(this).find(".lineTip").show();
        });
    });
</script>
	
	
	
	
	
	
</div>
<script type="text/javascript" src="<?php echo $pe['host_tpl'] ?>js/jquery.banner.js"></script>
<script type="text/javascript">
$(function(){
	pe_jstime(".huodong_time", '<?php echo time() ?>', 'html');
	$(".jdt_banner").swBanner();
})
</script>
<?php include(pe_tpl('footer.html'));?>