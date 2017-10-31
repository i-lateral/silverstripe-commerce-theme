<$Tag id="$HolderID" class="CompositeField row $extraClass <% if ColumnCount %>multicolumn<% end_if %>">
	<% if $Tag == 'fieldset' && $Legend %>
		<legend class="col-sm-12">$Legend</legend>
	<% end_if %>

	<% loop $FieldList %>
		<% if $Up.ColumnCount == 2 %>
			<div class="col-md-6 $FirstLast">
				$FieldHolder
			</div>
		<% else_if $Up.ColumnCount == 3 %>
			<div class="col-md-4 $FirstLast">
				$FieldHolder
			</div>
		<% else_if $Up.ColumnCount == 4 %>
			<div class="col-md-3 $FirstLast">
				$FieldHolder
			</div>
		<% else %>
			<div class="col-sm-12 $FirstLast">
				$FieldHolder
			</div>
		<% end_if %>
	<% end_loop %>

	<% if $Description %>
		<span class="description col-sm-12">$Description</span>
	<% end_if %>
</$Tag>
