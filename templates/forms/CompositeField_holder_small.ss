<$Tag id="$HolderID" class="field CompositeField row $extraClass <% if ColumnCount %>multicolumn<% end_if %>">
	<% if $Tag == 'fieldset' && $Legend %>
		<legend>$Legend</legend>
	<% end_if %>

	<% loop $FieldList %>
		<% if $Up.ColumnCount == 2 %>
			<div class="col-md-6 $FirstLast">
				$SmallFieldHolder
			</div>
		<% else_if $Up.ColumnCount == 3 %>
			<div class="col-md-4 $FirstLast">
				$SmallFieldHolder
			</div>
		<% else_if $Up.ColumnCount == 4 %>
			<div class="col-md-3 $FirstLast">
				$SmallFieldHolder
			</div>
		<% else %>
			<div class="col-sm-12 $FirstLast">
				$SmallFieldHolder
			</div>
		<% end_if %>
	<% end_loop %>
</$Tag>
