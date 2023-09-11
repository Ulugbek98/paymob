<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- META TAGS -->
    <meta charset="utf-8">
    <meta name="author" content="Ulugbek Islamov">
    <meta name="viewport" content="width=device-width, initial-scale=1,
            maximum-scale=1">

    <!-- STYLES -->
    <!-- Bootstrap -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/bootstrap.css" rel="stylesheet">
    <!-- FontAwesome -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/font-awesome.min.css" rel="stylesheet">
    <!-- FlatIcon -->
    <link href="<?= get_template_directory_uri() ?>/assets/flaticon/flaticon.css" rel="stylesheet">
    <!-- Animations -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/animate.min.css" rel="stylesheet">
    <!-- Magnific popup -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Owl-Carousel -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/owl.carousel.min.css" rel="stylesheet">
    <link href="<?= get_template_directory_uri() ?>/assets/css/owl.theme.default.min.css" rel="stylesheet">
    <!-- Main Stylesheet -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/style.css" rel="stylesheet">
    <!-- Responsive Stylesheet -->
    <link href="<?= get_template_directory_uri() ?>/assets/css/responsive.css" rel="stylesheet">
    <?php wp_head(); ?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
</head>


<body>


    <!-- Preloader Start -->
    <div class="preloader">
        <div class="loader">
            <div class="shadow"></div>
            <div class="box"></div>
        </div>
    </div>
    <!-- Preloader End -->


    <!--Navbar Start-->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <!-- LOGO -->
            <a class="navbar-brand logo" href="index.html.htm">
                <img src="<?= get_field('logo',57); ?>" alt="pelum">
            </a>
            <a class="navbar-brand logo HideScroll" href="index.html.htm">
                <img src="<?= get_field('logo',57); ?>" alt="pelum">
            </a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span>
            </button>
            <div class="navbar-collapse collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <?php
                    wp_nav_menu(array(
                        'theme_location'    => 'primary',
                        'container_id'    => 'navbarContent12 ',
                        'container_class' => 'header-nav',
                        'menu_id'         => false,
                        'menu_class'      => 'header-menu menu',
                        'depth'           => 3,
                        'fallback_cb'     => 'wp_bootstrap_navwalker::fallback',
                        'walker'          => new wp_bootstrap_navwalker(),
                        'container' => '',
                        'items_wrap' => '%3$s'

                    ));
                    ?>
                    <!-- <li class="nav-item">
                        <a href="#" class="nav-link active" data-scroll-nav="0">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-scroll-nav="1">Продукты</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-scroll-nav="2">Сервис</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-scroll-nav="3">Контакты</a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    <!--Navbar End-->