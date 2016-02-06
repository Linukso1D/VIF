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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h1><span class="ctgheading"><?php echo $heading_title; ?></span></h1>
     <?php foreach ($all_news as $news) { ?>
      <div class="row">
          <div class="col-md-3">
              <img style="width: 100%;" src="<?php echo $news['image']; ?>" />
          </div>
          <div class="col-md-9 newsdesc">
              <div class="row">
                  <div class="col-xs-12 col-md-12 ">
                     <div class="row">
                         <div class="col-xs-6"><h3 class="slab"><?php echo $news['title']; ?></h3></div>
                         <div class="col-xs-6"><span class="pull-right vertcenr">  <?php echo $news['date_added']; ?>  </span></div>
                     </div>
                      
                      
                  </div>
                  <div class="col-xs-12 col-md-11 ">
                      <span style="font-size:14pt;"><?php echo $news['description']; ?></span>
                      <a href="<?php echo $news['view']; ?>" style="float:right; padding-right:20px;"> <strong style="font-size:11pt;">Подробнее...</strong></a>
                  </div>
              </div>
          </div>
      </div>
      <?php } ?>
      
      
      
      
      
      
      
	

	
	 
	  <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 