<% if Title %>
<div id="$Name" class="form-group<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="control-label" for="$ID">$Title</label><% else %><label class="control-label" for="$ID"></label><% end_if %>
	<div class="controls">
		$Field
	</div>
	<% if $RightTitle %><label class="pull-right text-right" for="$ID"><small>$RightTitle</small></label><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
<% else %>
        $Field
<% end_if %>