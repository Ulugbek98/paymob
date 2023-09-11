<?php

/**
 * Template Name: Front-page
 */
$mainassets = get_template_directory_uri();
get_header();
$lang = pll_current_language();
?>
<!-- Welcome Area Start -->
<section class="pelum-welcome-area fix" data-scroll-index="0">
   <!-- Shape Start -->
   <div class="shapes-container">
      <div class="bg-shape"></div>
   </div>
   <!-- Shape End -->
   <div class="container">
      <div class="row align-items-center">
         <div class="col-12 col-md-7">
            <div class="welcome-text">
               <h2><?= get_field('zagolovok_bannera'); ?></h2>
               <p><?= get_field('podzagolovok_bannera'); ?></p>
               <a href="<?php // get_field('knopka_na_bannere_link'); 
                        ?>" class="pelum-btn" data-scroll-nav="2"><?= get_field('knopka_na_bannere_text'); ?><span></span></a>
            </div>
         </div>
         <div class="col-12 col-md-5">
            <div class="welcome-image">
               <img src="<?= get_field('fotografiya_produkta_1'); ?>" alt="welcome" class="animation-jump wow fadeInRight" data-wow-delay="1s">
            </div>
         </div>
      </div>
   </div>
</section>
<!-- Welcome Area End -->

<!-- Features Area Start -->
<section class="pelum-features-area" data-scroll-index="1">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="site-heading">
               <h4><?= get_field('tekst_zagolovka_features'); ?></h4>
               <h2><?= get_field('tekst_podzagolovka_features'); ?></h2>
               <span class="heading_overlay"></span>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-lg-3 col-md-6">
            <div class="single-feature wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.3s">
               <div class="feature-icon">
                  <i class="fa fa-cubes"></i>
               </div>
               <div class="feature-text">
                  <h3><?= get_field('preimushhestvo_title_1'); ?></h3>
                  <p><?= get_field('preimushhestvo_text_1'); ?></p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="single-feature wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.5s">
               <div class="feature-icon">
                  <i class="fa fa-shopping-basket"></i>
               </div>
               <div class="feature-text">
                  <h3><?= get_field('preimushhestvo_title_2'); ?></h3>
                  <p><?= get_field('preimushhestvo_text_2'); ?></p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="single-feature wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.8s">
               <div class="feature-icon">
                  <i class="fa fa-credit-card"></i>
               </div>
               <div class="feature-text">
                  <h3><?= get_field('preimushhestvo_title_3'); ?></h3>
                  <p><?= get_field('preimushhestvo_text_3'); ?></p>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="single-feature wow fadeInLeft" data-wow-duration="2s" data-wow-delay="1.3s">
               <div class="feature-icon">
                  <i class="fa fa-feed"></i>
               </div>
               <div class="feature-text">
                  <h3><?= get_field('preimushhestvo_title_4'); ?></h3>
                  <p><?= get_field('preimushhestvo_text_4'); ?></p>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- Features Area End -->

<!-- About Area Start -->
<section class="pelum-about-area" data-scroll-index="2">
   <div class="container">
      <div class="row">
         <div class="col-lg-6">
            <div class="about-left  wow fadeInLeft" data-wow-delay="0.5s">
               <img src="<?= get_field('fotografiya_produkta_2'); ?>" alt="about" class="animation-jump">
            </div>
         </div>
         <div class="col-lg-6">
            <div class="about-right  wow fadeInRight" data-wow-delay="0.5">
               <div class="about-heading">
                  <h4><?= get_field('tekst_podzagolovka'); ?></h4>
                  <h2><?= get_field('tekst_zagolovka'); ?></h2>
                  <span class="heading_overlay"></span>
               </div>
               <?= get_field('tehnicheskie_harakateristiki'); ?>
               <!--  -->
               <?php if ($lang == 'ru') { ?> <button class="show-more-button pelum-btn">Подробнее</button><?php } else { ?>
                  <button class="show-more-button pelum-btn">Batafsil</button><?php } ?>
               <!--  -->
            </div>
         </div>
      </div>
   </div>
</section>
<!-- About Area End -->

<!-- Aquiring Area Start-->
<section class="pelum-features-area" data-scroll-index="3">
   <div class="container">
      <div class="site-heading">
         <h4><?= get_field('tekst_zagolovka_sotrudnichestva'); ?></h4>
         <h2><?= get_field('tekst_podzagolovka_sotrudnichestva'); ?></h2>
         <span class="heading_overlay"></span>
      </div>
      <div class="row row-cols-1 row-cols-md-3 g-4">
         <?php for ($i = 1; $i <= 18; $i++) { ?>
            <?php if (!empty(get_field("partner_img_$i"))) { ?>
               <div class="col-3 col-sm-3 col-xs-3 col-md-2">
                  <div class="card h-100">
                     <img src="<?= get_field("partner_img_$i"); ?>" class="img-fluid" alt="Partner <?= $i ?>">
                  </div>
               </div>
            <?php } ?>
         <?php } ?>
      </div>
   </div>
</section>
<!-- Aquiring Area END-->

<!-- Partners Area Start-->
<section class="pelum-features-area">
   <div class="container">
      <div class="site-heading">
         <h4><?= get_field('tekst_zagolovka_bank'); ?></h4>
         <h2><?= get_field('tekst_podzagolovka_bank'); ?></h2>
         <span class="heading_overlay"></span>
      </div>
      <div class="row text-center">
         <?php for ($j = 1; $j <= 8; $j++) { ?>
            <?php if (!empty(get_field("banki_img_$j"))) { ?>
               <div class="col-3 col-sm-3 col-xs-3 col-md-2">
                  <div class="card h-100">
                     <img src="<?= get_field("banki_img_$j"); ?>" class="img-fluid" alt="Bank<?= $j ?>">
                  </div>
               </div>
            <?php } ?>
         <?php } ?>
         <!-- Add more partners as needed -->
      </div>
   </div>
</section>
<!-- Partners Area END-->

<!-- Video Area Start -->
<section class="pelum-video-area" data-scroll-index="4">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="video-box">
               <div class="video-inn">
                  <a class="popup-youtube" href="<?= get_field('video_link'); ?>">
                     <i class="flaticon-play"></i>
                  </a>
                  <h2><?= get_field('tekst_zagolovka_instruction'); ?></h2>
                  <span class="heading_overlay"></span>
                  <p><?= get_field('tekst_podzagolovka_instruction'); ?></p>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- Video Area End -->

<!-- Service Area Start -->
<section class="pelum-features-area" data-scroll-index="6">
   <div class="container">
      <div class="row">
         <div class="col-lg-6">
            <div class="about-right  wow fadeInRight" data-wow-delay="0.5">
               <div class="about-heading">
                  <h4><?= get_field('tekst_zagolovka_servis'); ?></h4>
                  <h2><?= get_field('tekst_podzagolovka_servis'); ?></h2>
                  <span class="heading_overlay"></span>
               </div>
               <?= get_field('tekst_servisa'); ?>
            </div>
         </div>
         <div class="col-lg-6">
            <div class="about-left  wow fadeInLeft" data-wow-delay="0.5s">
               <img src="<?= get_template_directory_uri() ?>/assets/img/render_001.png" alt="about" class="animation-jump">
            </div>
         </div>

      </div>
   </div>
</section>
<!-- Service Area Start -->

<!-- Product Area Start -->
<!-- <section class="pelum-product-area" data-scroll-index="7">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="site-heading wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
               <h4>Наши Продукты</h4>
               <h2>We Have Lots of Excellent And High Quality Products.</h2>
               <span class="heading_overlay"></span>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-lg-12">
            <div class="product-slider owl-carousel wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
               <div class="product-item">
                  <div class="row">
                     <div class="product-image col-lg-6">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/product-5.png" alt="product">
                     </div>
                     <div class="product-text col-lg-6">
                        <h3><a href="#">Mdr-9cx headphones</a></h3>
                        <div class="product-meta">
                           <p>2.76" HD driver unit</p>
                           <p>Resonance-free housing</p>
                           <p>water resistance</p>
                           <p>1 year guarantee</p>
                        </div>
                        <h4>$128</h4>
                        <a href="#" class="pelum-btn">Buy Now<span></span></a>
                     </div>
                  </div>
               </div>
               <div class="product-item">
                  <div class="row">
                     <div class="product-image col-lg-6">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/product-2.png" alt="product">
                     </div>
                     <div class="product-text col-lg-6">
                        <h3><a href="#">Mdr-7zx headphones</a></h3>
                        <div class="product-meta">
                           <p>2.70" HD driver unit</p>
                           <p>Resonance-free housing</p>
                           <p>water resistance</p>
                           <p>1 year guarantee</p>
                        </div>
                        <h4>$120</h4>
                        <a href="#" class="pelum-btn">Buy Now<span></span></a>
                     </div>
                  </div>
               </div>
               <div class="product-item">
                  <div class="row">
                     <div class="product-image col-lg-6">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/product-4.png" alt="product">
                     </div>
                     <div class="product-text col-lg-6">
                        <h3><a href="#">Mdr-7zx headphones</a></h3>
                        <div class="product-meta">
                           <p>2.70" HD driver unit</p>
                           <p>Resonance-free housing</p>
                           <p>water resistance</p>
                           <p>1 year guarantee</p>
                        </div>
                        <h4>$110</h4>
                        <a href="#" class="pelum-btn">Buy Now<span></span></a>
                     </div>
                  </div>
               </div>
               <div class="product-item">
                  <div class="row">
                     <div class="product-image col-lg-6">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/product-3.png" alt="product">
                     </div>
                     <div class="product-text col-lg-6">
                        <h3><a href="#">Mdr-7zx headphones</a></h3>
                        <div class="product-meta">
                           <p>2.70" HD driver unit</p>
                           <p>Resonance-free housing</p>
                           <p>water resistance</p>
                           <p>1 year guarantee</p>
                        </div>
                        <h4>$120</h4>
                        <a href="#" class="pelum-btn">Buy Now<span></span></a>
                     </div>
                  </div>
               </div>
               <div class="product-item">
                  <div class="row">
                     <div class="product-image col-lg-6">
                        <img src="<?= get_template_directory_uri() ?>/assets/img/product-1.png" alt="product">
                     </div>
                     <div class="product-text col-lg-6">
                        <h3><a href="#">Mdr-7zx headphones</a></h3>
                        <div class="product-meta">
                           <p>2.70" HD driver unit</p>
                           <p>Resonance-free housing</p>
                           <p>water resistance</p>
                           <p>1 year guarantee</p>
                        </div>
                        <h4>$120</h4>
                        <a href="#" class="pelum-btn">Buy Now<span></span></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section> -->
<!-- Product Area End -->

<!-- Faq Area Start -->
<section class="pelum-faq-area" data-scroll-index="8">
   <div class="container">
      <div class="row">
         <div class="col-lg-6">
            <div class="faq-left">
               <div class="faq-heading wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.3s">
                  <h4><?= get_field('tekst_zagolovka_faq'); ?></h4>
                  <h2><?= get_field('tekst_podzagolovka_faq'); ?></h2>
                  <span class="heading_overlay"></span>
               </div>
               <?= get_field('tekst_faq'); ?>
            </div>
         </div>
         <div class="col-lg-6">
            <div class="faq-right wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.4s">
               <img src="<?= get_template_directory_uri() ?>/assets/img/render_004.png" alt="faqs" class="animation-jump">
            </div>
         </div>
      </div>
   </div>
</section>
<!-- Faq Area End -->



<?php get_footer(); ?>