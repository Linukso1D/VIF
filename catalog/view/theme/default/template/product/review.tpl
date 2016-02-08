<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>


    
 
 <div class="row">
    
    <div class="col-sm-12">
     <div class="comment"><span class="" style="font-size:11pt;"><?php echo $review['author']; ?></span> <span class="pull-right"><?php echo $review['date_added']; ?></span></div>
     </div>
     <div class="col-sm-12 ">
     <p><?php echo $review['text']; ?></p>
     </div>
     <div class="col-sm-12">
         <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } else { ?>
      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } ?>
      <?php } ?> 
     </div>
 </div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>

