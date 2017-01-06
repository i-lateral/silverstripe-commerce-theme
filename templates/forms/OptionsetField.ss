<ul $addExtraClass("list-unstyled").AttributesHTML>
	<% loop Options %>
		<li class="radio $Class">
			<label for="$ID"><input id="$ID" name="$Name" type="radio" value="$Value"<% if isChecked %> checked<% end_if %><% if isDisabled %> disabled<% end_if %> /> $Title</label>
		</li>
	<% end_loop %>
</ul>
