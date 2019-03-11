<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)
</head>
<body class="$ClassName.ShortName">
<header>
    <div class="$ContainerClass header__container py-2 py-md-4">
        <div class="row">
            <div class="col-8 col-md-10 header__logo-holder text-center text-md-left">
                <% if $SiteConfig.MainLogo %>
                    <a href="$Page('home').Link" title="Link to the home page">
                        <img class="img-fluid header__logo-main <% if $SiteConfig.MobileLogo %>d-none d-md-inline<% else %>d-inline<% end_if %>" src="$SiteConfig.MainLogo.First.URL"
                             alt="$SiteConfig.Title <%t PageText.logo 'logo' %>"/>
                    </a>
                <% end_if %>
                <% if $SiteConfig.MobileLogo %>
                    <a href="$Page('home').Link" title="Link to the home page">
                        <img class="img-fluid header__logo-mobile d-inline d-md-none"
                             src="$SiteConfig.MobileLogo.First.URL"
                             alt="$SiteConfig.Title <%t PageText.logo 'logo' %>"/>
                    </a>
                <% end_if %>
            </div>
            <div class="col-4 col-md-2 header__navigation-holder">
                <% include Navigation %>
            </div>
        </div>
    </div>
</header>

<main>
    $Layout

    <% if $Form %>
        <div class="$ContainerClass pt-4">
            <div class="row">
                <div class="col-12">
                    $Form
                </div>
            </div>
        </div>
    <% end_if %>

</main>

<footer>
    <div class="footer__holder" style="background-color: #$SiteConfig.FooterBGColour">
        <div class="$ContainerClass pt-4">
            <div class="row footer__content-holder">
                <% if $SiteConfig.FooterLogo %>
                    <div class="col-md-3 d-none d-md-block footer__logo-holder">
                        <img class="img-fluid footer__logo" src="$SiteConfig.FooterLogo.First.URL"
                             alt="$SiteConfig.Title <%t PageText.logo 'logo' %>"/>
                    </div>
                <% end_if %>
                <div class="col">
                    <% if $FooterMenu %>
                        <div class="row">
                            <div class="footer__navigation-holder col-12 justify-content-end d-flex">
                                <ul class="footer__navigation">
                                    <% loop $FooterMenu %>
                                        <li class="footer__navigation-item <% if $isCurrent %>active<% end_if %>">
                                            <a href="$Link" id="footerlink-{$ID}">$MenuTitle.XML</a>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </div>
                    <% end_if %>
                    <div class="row">
                        <% if $SiteConfig.FooterText %>
                            <div class="col-12 col-md-6 footer__text">
                                $SiteConfig.FooterText
                            </div>
                        <% end_if %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer__copyright-holder" style="background-color: #$SiteConfig.CopyrightBGColour">
        <div class="$ContainerClass">
            <div class="row footer__copyright-holder">
                <div class="col-12 col-sm-6">
                    &copy; $Now.Year $SiteConfig.CopyrightText
                    <br/>$SiteConfig.Address.RAW
                </div>
                <div class="col-12 col-sm-6 pt-3 pt-md-0">
                    <% if $SocialLinks %>
                        <div class="col footer__social-holder">
                            <ul class="footer__social-links">
                                <% loop $SocialLinks %>
                                    <li class="footer__social-item">
                                        <a href="$Link" target="_blank">
                                            <span class="fa-stack fa-2x">
  <i class="fas fa-circle fa-stack-2x"></i>
  <i class="$Class fa-stack-1x fa-inverse"></i>
</span>
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>
    <% if $SiteConfig.ThemeCredits %>
        <div class="container-fluid theme-credit">
            <div class="row">
                <div class="col-12 text-center">
                    Derriford Theme by <a href="https://dorset-digital.net" target="_blank">Dorset Digital</a>
                </div>
            </div>
        </div>
    <% end_if %>
</footer>
<span id="beacon-sm" class="d-block d-md-none"></span>
<span id="beacon-lg" class="d-none d-md-block"></span>
</body>
</html>