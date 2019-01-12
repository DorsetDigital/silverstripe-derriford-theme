<nav class="text-right" id="main-nav">
    <button id="mobiletoggler" class="hamburger hamburger--spin navbar-toggler mb-3" type="button"
            data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
            aria-label="Toggle navigation">
<span class="hamburger-box">
    <span class="hamburger-inner"></span>
  </span>
    </button>

    <div class="" id="navbarNav">
        <ul class="navbar-nav">
            <% loop $Menu(1) %>
                <li class="nav-item<% if $isCurrent || $isSection %> active<% end_if %> mainnav-$URLSegment">
                    <a id="MainNav-$URLSegment" class="nav-link" href="$Link">$MenuTitle.XML</a>
                </li>
            <% end_loop %>
        </ul>
    </div>
</nav>