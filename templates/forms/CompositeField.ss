<$Tag id="$HolderID" class="CompositeField row $extraClass <% if ColumnCount %>multicolumn<% end_if %>">
	<% if $Tag == 'fieldset' && $Legend %>
		<legend>$Legend</legend>
	<% end_if %>

	<% loop $FieldList %>
		<% if $Up.ColumnCount == 2 %>
			<div class="col-md-6 $FirstLast">
				$Field
			</div>
		<% else_if $Up.ColumnCount == 3 %>
			<div class="col-md-4 $FirstLast">
				$Field
			</div>
		<% else_if $Up.ColumnCount == 4 %>
			<div class="col-md-3 $FirstLast">
				$Field
			</div>
		<% else %>
			<div class="col-sm-12 $FirstLast">
				$Field
			</div>
		<% end_if %>
	<% end_loop %>
</$Tag>
