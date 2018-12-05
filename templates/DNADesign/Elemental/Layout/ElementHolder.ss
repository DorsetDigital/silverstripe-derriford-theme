<% if $ElementConstrainWidth %>
    <div class="element-constrained-holder<% if $PadElement %> element-padded<% end_if %>"<% if $ElementBackgroundColour %>
         style="background-color: #{$ElementBackgroundColour}"<% end_if %>><% end_if %>
    <div class="element $SimpleClassName.LowerCase<% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %><% if $ElementConstrainWidth %> element-constrained<% end_if %>
        <% if $PadElement && not $ElementConstrainWidth%> element-padded<% end_if %>"
         id="$Anchor"<% if $ElementBackgroundColour %>
         style="background-color: #{$ElementBackgroundColour}"<% end_if %>>
        $Element
    </div>
<% if $ElementConstrainWidth %>
    </div>
<% end_if %>