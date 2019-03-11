<% if $Level(2) %>
    <div class="$BreadcrumbContainerClass">
        <div class="row breadcrumb__container">
            <div class="col-12">
                $Breadcrumbs
            </div>
        </div>
    </div>
<% end_if %>
<% if $Title && $SiteConfig.ShowTitles == 1 && $URLSegment != 'home' %>
<div class="$TitleContainerClass">
    <div class="row">
        <div class="col-12 pt-4">
            <h1>$Title</h1>
        </div>
    </div>
</div>
<% end_if %>

<div class="row no-gutters">
 <div class="col-12">
   $ElementalArea
 </div>
</div>