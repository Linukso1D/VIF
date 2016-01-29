<div class="row">
    <div class="col-md-12 fs14 CLbrown center wh ptb10 slab" style="z-index:2; ">НОВИНКИ</div>
 <div id="carouselfuture" class="owl-carousel">
        <?php foreach ($products as $product) { ?>
            <div class="item text-center">
  <a class="thetestt" href="<?php echo $product['href']; ?>" style="
display:block;
   
  height:320px; 
">
  <img style="margin: auto;" src="<?php echo $product['thumb']; ?>" alt="" class="img-responsive" />
<div class="textfeature"><?php echo $product['name']; ?></div>
</a>

     </div>
      <?php } ?>
    </div>
</div>
<script type="text/javascript">
    <!--
    $('#carouselfuture').owlCarousel({
        items: 4,
        autoPlay: 5000,
        navigation: false,
        pagination: false
    });
    -->

</script>
