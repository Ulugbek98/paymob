<?php

/**
 * Template Name: Contact Page
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




<?php get_footer(); ?>