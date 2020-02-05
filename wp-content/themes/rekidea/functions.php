<?php
add_theme_support( 'post-thumbnails' );
//add_theme_support( 'excerpt' );

function add_styles_and_scripts () {
    //  ** Load styles **
    wp_enqueue_style('animate', get_theme_file_uri('/animate.min.css'));
    wp_enqueue_style('style', get_stylesheet_directory_uri(). '/style.css');
    wp_enqueue_style('fancybox', get_stylesheet_directory_uri(). '/jquery.fancybox.css');
    wp_enqueue_style('slick', get_stylesheet_directory_uri(). '/addons/slick/slick.css');

    // ** Load scripts **
    wp_enqueue_script('wow', get_theme_file_uri('/js/wow.min.js'), array('jquery') );
    wp_enqueue_script('fancybox', get_theme_file_uri('/js/jquery.fancybox.js'), array('jquery') );
    wp_enqueue_script('slick', get_theme_file_uri('/addons/slick/slick.min.js'), array('jquery') );
}

add_action('wp_enqueue_scripts', 'add_styles_and_scripts');
// ** Register menu **
register_nav_menu('top', 'главное меню');
register_nav_menu('top-mobile', 'главное меню мобилка');










