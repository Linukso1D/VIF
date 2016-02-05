<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

   <!--Категории -->  

            <div class="row homecategory">

                <?php $i=0; foreach ($categories as $category) { if($i<3) {?>
            <div class="col-md-4">
                <div class = "browncategory"  >
                 <a href="<?php echo $category['href'] ?>" >
                      <img src="<?php echo $category['image'] ?>" alt="">
                      <div class="btnbrown">
                        <span>
                         <?php echo $category['name'] ?> 
                         </span>
                      </div>
                 </a>
                 </div>

            </div>
             <?php $i++; }} ?>
             </div>
    
            
    <?php echo $content_bottom; ?>
<!--Отзывы -->
<div class="row">

    <div class="col-md-12 CLbrown center wh ptb10 slab fs14" style="margin-bottom:20px; " >ОТЗЫВЫ</div>
    <?php $i=0; foreach ($all_articles as $article) { if($i<4) {?>
<div class="col-md-3 col-sm-6 col-xs-12 mgb15">
        <div class="row mgb15">
           <div class="col-md-2 col-xs-3">
                <img src="<?php echo $article['ava']; ?>" class="elipseimg" alt="">
           </div>
            <div class="col-md-9  col-md-offset-1 col-xs-8 col-xs-offset-1 titlarthome vertcenr"><a href="<?php echo $article['link']; ?>"> <?php echo $article['title']; ?></a> <a href="<?php echo $article['link']; ?>"> <i style="float: right;" class="fa fa-long-arrow-right"></i></a></div>

        </div>
        
        <div class="row mgb15">
            <div class="col-md-12">
                <p style="line-height:25px;"> <?php echo $article['description']; ?> </p>
            </div>
        </div>
        <div class="row mgb15">
         <div class="col-md-12">
          <a href="<?php echo $article['link']; ?>"> <img src="<?php echo $article['image']; ?>" style="width: 100%;" alt=""> </a> 
          </div>
        </div>
</div>
 <?php $i++; }} ?>
 </div>
<!--О КОМПАНИИ -->
<div class="row">
    <div class="col-md-12 CLbrown center wh ptb10 slab fs14" style="margin-bottom:20px; " >О КОМПАНИИ</div>
   <div class="col-md-12">
    <?php echo $description; ?>
    </div>
    
</div>

    
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
