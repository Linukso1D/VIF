<?php echo $header; ?>
    <div class="container">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>">
                        <?php echo $breadcrumb['text']; ?>
                    </a>
                </li>
                <?php } ?>
        </ul>
        <div class="row">
<?php echo $column_left; ?>
<?php if ($column_left && $column_right) { ?>
<?php $class = 'col-sm-12'; ?>
<?php } elseif ($column_left || $column_right) { ?>
<?php $class = 'col-sm-12'; ?>
<?php } else { ?>
<?php $class = 'col-sm-12'; ?>
<?php } ?>
    <div class="news_list_style">
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            <h1><span class="ctgheading">Отзывы</span></h1>
              
                
                <div class="row">
                <?php foreach ($all_articles as $articles) { ?>
                    
                        <div class="col-xs-12 col-md-6" style="margin-bottom:15px;">
                               <div class="row ">
                                <div class="col-md-3">
                                    <a href="<?php echo $articles['view']; ?>">
                                        
                                        <img style="border-radius:150px" src="<?php echo $articles['ava']; ?>" />
                                    </a>
                                </div>
                                <div class="col-md-9">  
                                   <h4><strong style="color:#313131;"> <?php echo $articles['title']; ?></strong> </h4> 
                                    <i style="color:#a7a7a7;">
                                        <?php echo $articles['description']; ?>
                                    </i>
                                   
                                       <a class="buttonbl" href="<?php echo $articles['view']; ?>" style="float:right; padding-right:20px;"> <strong>Читать...  </strong></a>
                                   
                                </div> 
                                </div>
                        </div>
                   

                    <?php } ?>
 </div>


                        <div class="row">
                            <div class="col-sm-6 text-left">
                                <?php echo $pagination; ?>
                            </div>
                            <div class="col-sm-6 text-right">
                                <?php echo $results; ?>
                            </div>
                        </div>
                        <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
    </div>
        </div>
    </div>
    <?php echo $footer; ?>