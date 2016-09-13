
<!-- START block -->
<article class="landing-block-style-1 layout-col-3 $ExtraCSSClasses">
  <div class="liner">
    <h1>
      <% if $PageLink %><a href="$PageLink"><% end_if %>
      $Title
      <% if $PageLink %></a><% end_if %>
    </h1>
    <% if $SubTitle %>
      <p class="subtitle">$SubTitle</p>
    <% end_if %>
    $Content
    <% if $PageLink %>
      <p class="more"><a href="$PageLink" class="button"><%if ReadMoreText %>$ReadMoreText<% else %>More<% end_if %></a></p>
    <% end_if %>
  </div>
  <div class="image">
    <% if $PageLink %><a href="$PageLink"><% end_if %>
      <img src="$BlockImage.CroppedImage(394,394).Url" width="197" height="197" alt="$IntroImageAlt" />
    <% if $PageLink %></a><% end_if %>
  </div>
</article>
<!-- END block -->
