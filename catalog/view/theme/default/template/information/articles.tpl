<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
  <div class="news_style_information">
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    
     
     
     
     
     
     <div class="row">
         <div class="col-sm-12 col-xs-12 img-container" style="    margin-bottom: 50px;">
              <?php if ($image) { ?>
                  
                  <img  class="pull-left" src="<?php echo $image; ?>" style="max-width:100%;" alt="<?php echo $heading_title; ?>" />
                  
            <?php } ?>
         </div>
         <div class="col-sm-2 col-md-2 col-xs-4 ">
             <?php if ($ava) { ?>
              <img class="pull-left" src="<?php echo $ava; ?>" alt="<?php echo $heading_title; ?>" style ="max-width:100%; border-radius: 125px;"/>
        	  <?php } ?>
         </div>
         <div class="col-sm-10 col-md-10 col-xs-8">
             
             <h1 class="name_news"> <span class="ctgheading"><?php echo $heading_title; ?></span></h1>
         </div>
         
         <div class="col-sm-9 col-xs-12">
         
            
            
             <p><?php echo $description; ?></p>
         </div>
        
     </div>
     
     
     
     
     
     
     
      
	 
	 
	
	  
	 
	  
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?>
  </div>
  </div>
  <div class="row">
      <div class="col-xs-6" >
          <!-- AddThis Button BEGIN -->
           <div style="padding-top:10px;">
            <div class="addthis_toolbox addthis_default_style" >
            <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
             
              <a class="addthis_counter addthis_pill_style"></a>
              </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                       <script type="text/javascript" src="catalog/view/javascript/question.js"></script>
                                                        <script type="text/javascript" src="catalog/view/javascript/jquery.simplemodal.js"></script>
            <!-- AddThis Button END -->
            </div>
      </div>

 
    <!-- <?php if($button) { ?>
      <div class="col-xs-6"><a class="buttonbl" href="<?php echo $button_link; ?>" style="float:right;"><?php echo $button; ?></a></div>
      <?php } ?> 
    -->
  </div>
</div>
<?php echo $footer; ?> 
