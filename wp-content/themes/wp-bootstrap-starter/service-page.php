<?php

/**
 * Template Name: Service Page
 */
if (pll_current_language() == 'ru') {
    $post_id = 2;
} else {
    $post_id = 70;
}
get_header(); ?>

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
                    <h2><?= get_field('zagolovok_bannera', $post_id); ?></h2>
                    <p><?= get_field('podzagolovok_bannera', $post_id); ?></p>
                    <!-- <a href="#" class="pelum-btn" data-scroll-nav="2"><?= get_field('knopka_na_bannere_text', $post_id); ?><span></span></a> -->
                </div>
            </div>
            <div class="col-12 col-md-5">
                <div class="welcome-image">
                    <img src="<?= get_field('fotografiya_produkta_1', $post_id); ?>" alt="welcome" class="animation-jump wow fadeInRight" data-wow-delay="1s">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Welcome Area End -->

<!-- Service Area Start -->
<section class="pelum-features-area" data-scroll-index="6">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-right  wow fadeInRight" data-wow-delay="0.5">
                    <div class="about-heading">
                        <h4><?= get_field('tekst_zagolovka_servis',$post_id); ?></h4>
                        <h2><?= get_field('tekst_podzagolovka_servis',$post_id); ?></h2>
                        <span class="heading_overlay"></span>
                    </div>
                    <?= get_field('tekst_servisa',$post_id); ?>
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

<!-- Faq Area Start -->
<section class="pelum-faq-area" data-scroll-index="8">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="faq-left">
                    <div class="faq-heading wow fadeInLeft" data-wow-duration="2s" data-wow-delay="0.3s">
                        <h4><?= get_field('tekst_zagolovka_faq',$post_id); ?></h4>
                        <h2><?= get_field('tekst_podzagolovka_faq',$post_id); ?></h2>
                        <span class="heading_overlay"></span>
                    </div>
                    <?= get_field('tekst_faq',$post_id); ?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="faq-right wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.4s">
                    <img src="<?= get_template_directory_uri() ?>/assets/img/render_005.png" alt="faqs" class="animation-jump">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Faq Area End -->

<?php get_footer(); ?>