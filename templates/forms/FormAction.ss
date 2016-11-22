<% if UseButtonTag %>
	<button class="btn btn-default" $AttributesHTML>
		<% if ButtonContent %>$ButtonContent<% else %>$Title<% end_if %>
	</button>
<% else %>
	<input class="btn btn-default" $AttributesHTML />
<% end_if %>