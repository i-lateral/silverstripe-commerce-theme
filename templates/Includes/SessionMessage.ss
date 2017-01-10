<% if $Message %>
    <% if $Type == "bad" %>
        <p class="message message-{$Type} alert alert-danger {$ExtraClasses}">$Message</p>
    <% else_if $Type == "success" %>
        <p class="message message-{$Type} alert alert-{$Type} {$ExtraClasses}">$Message</p>
    <% else %>
        <p class="message message-{$Type} alert alert-info {$ExtraClasses}">$Message</p>
    <% end_if %>
<% end_if %>
