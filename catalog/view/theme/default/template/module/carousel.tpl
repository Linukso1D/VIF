
 

  <div class="row">
    <div class="col-md-12 CLbrown center wh ptb10 slab" style="margin-bottom:20px;z-index:2; " >НОВИНКИ</div>
    

                 <div id="carousel<?php echo $module; ?>" class="owl-carousel">
                  <?php foreach ($banners as $banner) { ?>
                  <div class="item text-center">
                    <?php if ($banner['link']) { ?>
                    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                    <?php } else { ?>
                    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                    <?php } ?>
                  </div>
                  <?php } ?>
                </div>


 </div> 


<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 4,
	autoPlay: 5000,
	navigation: false,
	pagination: false
});
--></script>