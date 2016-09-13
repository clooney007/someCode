<!-- START main content -->
<div class="page-maincontent blog blog-article" id="content">
  <div class="page-wrapper"> 
    
    <!-- START blog intro -->
    <div class="blog-intro">
      <p class="blog-section-title"><a href="$Parent.Link"><strong>$SiteConfig.BlogSectionSubtitle</strong> $SiteConfig.BlogSectionTitle</a></p>
      <% include BlockSharingBlog %>
      
      <h1><span>$Title</span></h1>
      <!-- START hero image -->
      <div class="blog-hero"> <img src="$IntroPic.CroppedImage(2012,1128).Url" alt="$IntroImageAlt" width="1006" height="564" /> </div>
      <!-- END hero image -->
    </div>
    <!-- END intro --> 
    
    <!-- START content -->
    <div class="content-wrapper"> 
      
      <!-- START left col -->
      <div class="layout-col-2"> 

        <!-- START blog meta -->
        <div class="blog-article-details<% if $BlogAuthorDefault.AuthorPicID %> with-pic<% end_if %>">
          <% if $BlogAuthorDefault %>
            <% if $BlogAuthorDefault.AuthorPic %>
              <img class="author-pic" src="$BlogAuthorDefault.AuthorPic.CroppedImage(80,80).Url" width="40" height="40" alt="$AuthorName" />
            <% end_if %>
            <p class="author-name">By $BlogAuthorDefault.AuthorName</p>
            <% if $BlogAuthorDefault.AuthorBio %>
              <p class="author-bio">$BlogAuthorDefault.AuthorBio</p>
            <% end_if %>
          <% end_if %>
          <p class="date">$DateCreated.DaYOfMonth $DateCreated.Month $DateCreated.Year</p>
        </div>
        <!-- END blog meta -->
        
        <!-- START blog category -->
        <% if BlogCategories %>
        <div class="blog-article-categories">
          <h2 class="title">Filed under:</h2>
          <ul>
            <% loop BlogCategories.Sort(Name) %>
            <li><a href="$CategoryLink">$Name</a></li>
            <% end_loop %>
          </ul>
        </div>
        <% end_if %>
        <!-- END blog category -->
        
        <!-- START blog pagination -->
        <nav class="nav-blog-pagination">
          <ul>
            <li class="previous"><a href="$TopLevelParentLink">Latest articles</a></li>
            <li class="previous"><a href="$TopLevelParentLink\categories">All categories</a></li>
          </ul>
        </nav>
        <!-- END blog pagination -->

      </div>
      <!-- END left col --> 
      
      <!-- START right col -->
      <div class="layout-col-4">
        
        <% if SpecialDeal %>
          <div class="special-deal">Special Deal</div>
        <% end_if %>
            
        <div class="intro">
          $Introduction
        </div>
        $Content
        
        
        <!-- START facebook comments  (this block must have the social media block below to work) -->
        <div class="block-facebook-comments">
          <% if $SocialMediaText %>
            <h2 class="h3">$SocialMediaText</h2>
          <% end_if %>
          <div class="fb-comments" data-href="$AbsoluteLink" data-numposts="5" data-colorscheme="light"></div>
        </div>
        <!-- END facebook comments  -->
        
      </div>
      <!-- END right col --> 
      
     
      
    </div>
    <!-- END content --> 
    
    <% include BlockSocialMedia %>
    
    
  </div>
</div>
<!-- END main content -->