
<h1>{$page->title}</h1>

<h2>For <a href="{$smarty.const.WWW_TOP}/details/{$rel.searchname|escape:'htmlall'}/viewnzb/{$rel.guid}">{$rel.searchname|escape:'htmlall'}</a></h2>

<form id="fileform" method="POST">
<table style="width:100%;" class="data Sortable highlight">

	<tr>
		<th>#</th>
		<th></th>
		<th>filename</th>
		<th>size</th>
		<th>date</th>
	</tr>

	{foreach item=i name=iteration from=$binaries item=binary}
	<tr class="{cycle values=",alt"}">
		<td width="20" title="Original Part ({$binary.relpart}/{$binary.reltotalpart})">{$smarty.foreach.iteration.index+1}</td>
		<td width="20" class="selection"><input name="fileID_{$binary.ID}" id="fileID_{$binary.ID}" value="{$binary.ID}" type="checkbox"/></td>
		<td title="{$binary.name|escape:'htmlall'}"><a href="#" class="data_filename">{$binary.filename}</a></td>
		<td class="less">{$binary.size|fsize_format:"MB"}</td>
		<td class="less" title="{$binary.date}">{$binary.date|date_format}</td>
	</tr>
	{/foreach}

</table>	
</form>

<div class="checkbox_operations">
	Selection:
	<a href="#" class="select_all">All</a>
	<a href="#" class="select_none">None</a>
	<a href="#" class="select_invert">Invert</a>
	<a href="#" class="select_range">Range</a>
</div>

<div style="padding-top:20px;">
	<a href="#" id="viewfilelist_download_selected" title="Download selected files as a partial Nzb">Download selected</a>
</div>
