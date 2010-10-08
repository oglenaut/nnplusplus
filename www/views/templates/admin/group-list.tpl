<div id="group_list">

    <h1>{$page->title}</h1>

    {if $grouplist}
    <div id="message">hi mom!</div>
    <table class="data Sortable highlight">

        <tr>
            <th>group</th>
            <th>First Post</th>
						<th>Last Post</th>
            <th>last updated</th>
            <th>active</th>
            <th>releases</th>
            <th>Backfill Days</th>
						<th>options</th>
        </tr>
        
        {foreach from=$grouplist item=group}
        <tr id="grouprow-{$group.ID}" class="{cycle values=",alt"}">
            <td>
							<a href="{$smarty.const.WWW_TOP}/group-edit.php?id={$group.ID}">{$group.name|replace:"alt.binaries":"a.b"}</a>
							<div class="hint">
								{$group.description}
							</div>
						</td>
            <td class="less">{$group.first_record_postdate|timeago}</td>
			<td class="less">{$group.last_record_postdate|timeago}</td>
            <td class="less">{$group.last_updated|timeago} ago</td>
            <td class="less" id="group-{$group.ID}">{if $group.active=="1"}<a href="javascript:ajax_group_status({$group.ID}, 0)" class="group_active">Deactivate</a>{else}<a href="javascript:ajax_group_status({$group.ID}, 1)" class="group_deactive">Activate</a>{/if}</td>
            <td class="less">{$group.num_releases}</td>
            <td class="less">{$group.backfill_target}</td>
            <td class="less" id="groupdel-{$group.ID}"><a title="Reset this group" href="javascript:ajax_group_reset({$group.ID})" class="group_reset">Reset</a> | <a href="javascript:ajax_group_delete({$group.ID})" class="group_delete">Delete</a></td>
        </tr>
        {/foreach}

    </table>
    {else}
    <p>No groups available (eg. none have been added).</p>
    {/if}

</div>		
