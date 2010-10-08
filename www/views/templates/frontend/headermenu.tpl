<div id="menucontainer">
	<div id="menulink"> 
		<ul>
		{foreach from=$parentcatlist item=parentcat}
			<li><a title="Browse {$parentcat.title}" href="{$smarty.const.WWW_TOP}/browse?t={$parentcat.ID}">{$parentcat.title}</a>
				<ul>
				{foreach from=$parentcat.subcatlist item=subcat}
					<li><a title="Browse {$subcat.title}" href="{$smarty.const.WWW_TOP}/browse?t={$subcat.ID}">{$subcat.title}</a></li>
				{/foreach}
				</ul>
			</li>
		{/foreach}
		</ul>
	</div>
	
	<div id="menusearchlink">
	<form id="headsearch_form" action="{$smarty.const.WWW_TOP}/search" method="get">
		<label style="display:none;" for="headsearch">Search Text</label>
		<input id="headsearch" name="search" value="{if $header_menu_search == ""}Enter keywords{else}{$header_menu_search|escape:"htmlall"}{/if}" style="width:85px;" type="text" /> 
		<label style="display:none;" for="headcat">Search Category</label>
		<select id="headcat" name="t">
			<option class="grouping" value="-1">-- Everything --</option>
		{foreach from=$parentcatlist item=parentcat}
			<option {if $header_menu_cat==$parentcat.ID}selected="selected"{/if} class="grouping" value="{$parentcat.ID}">{$parentcat.title}</option>
			{foreach from=$parentcat.subcatlist item=subcat}
				<option {if $header_menu_cat==$subcat.ID}selected="selected"{/if} value="{$subcat.ID}">&nbsp;&nbsp;&nbsp;{$subcat.title}</option>
			{/foreach}
		{/foreach}
		</select>
		<input id="headsearch_go" type="submit" value="Go"/>
	</form>
	</div>
</div>