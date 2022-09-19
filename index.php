<?php
/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define( 'WP_USE_THEMES', true );

/**
 * OQILA WP debug mode switching.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if(file_exists(__DIR__ . '/DEBUG'))
{
    ini_set('display_errors', true);
    error_reporting(-1);

    define('WP_DEBUG', true);

    // Enable Debug logging to the /wp-content/debug.log file
    define('WP_DEBUG_LOG', true);

    // Enable display of errors and warnings
    define('WP_DEBUG_DISPLAY', true);
}
/* End of OQILA WP debug mode switching */

/** Loads the WordPress Environment and Template */
require __DIR__ . '/wp-blog-header.php';
