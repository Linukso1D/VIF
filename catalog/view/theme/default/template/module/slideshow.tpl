<div id="slideshow0" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <div style="position:relative;">
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <a href="<?php echo $banner['link']; ?>" class="btn-brown-inv slidebtn">СМОТРЕТЬ...</a>
    </div>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow0').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: true
});
--></script>