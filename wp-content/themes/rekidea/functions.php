<?php
add_theme_support( 'post-thumbnails' );
//add_theme_support( 'excerpt' );

function add_styles_and_scripts () {
    //  ** Load styles **
  //  wp_enqueue_style('bootstrap-css', get_theme_file_uri('/bootstrap.min.css'));

    wp_enqueue_style('style', get_stylesheet_directory_uri(). '/style.css');

    // ** Load scripts **
//    wp_enqueue_script('jquery', get_theme_file_uri('/js/jquery-1.12.0.min.js') );

}

add_action('wp_enqueue_scripts', 'add_styles_and_scripts');
// ** Register menu **
//register_nav_menu('top', 'главное меню');










