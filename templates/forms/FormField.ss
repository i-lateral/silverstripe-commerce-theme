<% if isReadonly %>
	<span id="$ID"
	      <% if extraClass %>class="$extraClass"<% end_if %>
	      <% if $Description %>title="$Description"<% end_if %>>
		$Value
	</span>
<% else %>
	<input $.addExtraClass('form-control').AttributesHTML />
<% end_if %>
