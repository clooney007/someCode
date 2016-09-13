<!-- START main content -->
<div class="page-maincontent home" id="content"> 

  $BlockArea(HomePagePromoBlock, 1)
  
  <div class="page-wrapper">
    
    <!-- START content -->

      <!-- START block style 1 -->
      <section class="layout-row">
      
      $BlockArea(PromoBlock1, 2)
        
      </section>
      <!-- END block style 1 -->
     
       <!-- START block style 3 -->
           <div class="hidden" style="display:none;">
    <% if $SearchForm %>
    <div class="search-bar">
        $SearchForm
    </div>      
  <% end_if %>
    </div>
      <section class="layout-row">
      
        <!-- START block -->
        <article class="block-welcome layout-col-2">
          $Introduction
          <div class="liner">
            $Content
          </div>
        </article>
        <!-- END block -->
        
        $BlockArea(PromoBlock2, 2)
        
      </section>
      <!-- END block style 3 -->
      

    <!-- END content -->
    
  </div>
</div>
<!-- END main content -->