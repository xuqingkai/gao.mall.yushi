<?php include(pe_tpl('header.html','admin'));?>
<div class="right">
	<div class="now">
		<a href="webadmin.php?mod=category" class="sel">分类列表（<?php echo $tongji['all'] ?>）<i></i></a>
		<a href="webadmin.php?mod=category&act=add" id="fabu">添加分类</a>
		<div class="clear"></div>
	</div>
	<div class="right_main">
		<form method="post" id="form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="list">
		<tr>
			<th class="bgtt" width="20"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'category_id')" /></th>
			<th class="bgtt" width="50">ID号</th>
			<th class="bgtt" width="60">排序</th>
			<th class="bgtt">分类名称</th>
			<th class="bgtt" width="175">操作</th>
		</tr>
		<?php foreach($info_list as $v):?>
		<tr>
			<td><input type="checkbox" name="category_id[]" value="<?php echo $v['category_id'] ?>" /></td>
			<td><?php echo $v['category_id'] ?></td>
			<td><input type="text" name="category_order[<?php echo $v['category_id'] ?>]" value="<?php echo $v['category_order'] ?>" class="inputtext input30 center" /></td>
			<td class="aleft"><a href="<?php echo pe_url('product-list-'.$v['category_id']) ?>" target="_blank"><?php echo $v['category_showname'] ?></a></td>
			<td>
				<a href="webadmin.php?mod=category&act=edit&id=<?php echo $v['category_id'] ?>" class="admin_edit mar3">修改</a>
				<a href="webadmin.php?mod=category&act=del&id=<?php echo $v['category_id'] ?>&token=<?php echo $pe_token ?>" class="admin_del mar3" onclick="return pe_cfone(this, '删除')">删除</a>
				<a href="webadmin.php?mod=product&act=move&category_id=<?php echo $v['category_id'] ?>" class="admin_btn" onclick="return pe_dialog(this, '批量转移商品', 400, 230)">转移商品</a>
			</td>
		</tr>
		<?php endforeach;?>
		</table>
		</form>
	</div>
	<div class="right_bottom">
		<span class="fl mal10">
			<input type="checkbox" name="checkall" onclick="pe_checkall(this, 'category_id')" />
			<button href="webadmin.php?mod=category&act=del&token=<?php echo $pe_token ?>" onclick="return pe_cfall(this, 'category_id', 'form', '批量删除')">批量删除</button>
			<button href="webadmin.php?mod=category&act=order&token=<?php echo $pe_token ?>" onclick="pe_doall(this,'form')">更新排序</button>
		</span>
		<span class="fr fenye"><?php echo $db->page->html ?></span>
		<div class="clear"></div>
	</div>
</div>
<?php include(pe_tpl('footer.html','admin'));?>