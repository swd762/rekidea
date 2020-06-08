<?php
add_theme_support( 'post-thumbnails' );
//add_theme_support( 'excerpt' );

function add_styles_and_scripts () {
    //  ** Load styles **
    wp_enqueue_style('animate', get_theme_file_uri('/animate.min.css'));
    wp_enqueue_style('style', get_stylesheet_directory_uri(). '/style.css', [], 27);
    wp_enqueue_style('fancybox', get_stylesheet_directory_uri(). '/jquery.fancybox.css');
    wp_enqueue_style('flexi', get_stylesheet_directory_uri(). '/addons/flexi/css/flexi.css');
    wp_enqueue_style('uptop', get_theme_file_uri('/addons/uptop/css/ui.totop.css'));
    wp_enqueue_style('slick', get_theme_file_uri('/addons/slick/slick.css'));
    wp_enqueue_style('slick1', get_theme_file_uri('/addons/slick/slick-theme.css'));

    // ** Load scripts **
    wp_enqueue_script('wow', get_theme_file_uri('/js/wow.min.js'), array('jquery') );
    wp_enqueue_script('fancybox', get_theme_file_uri('/js/jquery.fancybox.js'), array('jquery') );
    wp_enqueue_script('flexi', get_theme_file_uri('/addons/flexi/js/jquery.flexisel.js'), array('jquery') );
    wp_enqueue_script('up', get_theme_file_uri('/addons/uptop/js/jquery.ui.totop.js'), array('jquery'));
    wp_enqueue_script('up_easing', get_theme_file_uri('/addons/uptop/js/easing.js'), array('jquery'));
    wp_enqueue_script('slick', get_theme_file_uri('/addons/slick/slick.min.js'), array('jquery'));


}

add_action('wp_enqueue_scripts', 'add_styles_and_scripts');
// ** Register menu **
register_nav_menu('top', 'главное меню');
register_nav_menu('top-mobile', 'главное меню мобилка');
register_nav_menu('price', 'Меню цен');
register_nav_menu('price-mobile', 'Меню цен мобилка');

add_filter('wpcf7_form_elements', 'contact_form_remove_checkbox_wrapping' );
function contact_form_remove_checkbox_wrapping( $content ) {
    preg_match_all('/<span class="wpcf7-form-control-wrap[a-zA-Z ]*"><span class="wpcf7-form-control wpcf7-[checkbox|radio]+" id="([^\"]+)"><span class="[^\"]+">(<input type="[checkbox|radio]+" name="[^\"]+" value="[^\"]*" \/>)<span class="wpcf7-list-item-label">[^\"]+<\/span><\/span><\/span><\/span>/i', $content, $out );
    if ( !empty( $out[0] ) ) {
        $count = count( $out[1] );
        for ( $i = 0; $i<$count; $i++ ) {
            $out[2][ $i ] = str_replace(' value=', 'id="' . $out[1][ $i ] . '" value=', $out[2][$i] );
        }

        return str_replace( $out[0], $out[2], $content );
    }

    return $content;
}


function getPrices($postId, $target) {
    $prices = get_fields($postId);

    foreach ($prices as $key=>$price) {
        $prices[$key] = explode(PHP_EOL, $price);

        $sizes = [];
        $prises1 = [];
        $prises2 = [];
        $prises3 = [];

        foreach ($prices[$key] as $item) {
            if($item) {
                $temp = explode('|', $item);
                $sizes[] = $temp[0];
                $prises1[] = $temp[1];
                $prises2[] = $temp[2];
                $prises3[] = $temp[3];
            }
        }

        $prices[$key] = [];
        $prices[$key]['sizes'] = $sizes;
        $prices[$key]['prices1'] = $prises1;
        $prices[$key]['prices2'] = $prises2;
        $prices[$key]['prices3'] = $prises3;
    }

    return $prices;
}

//add_theme_support( 'woocommerce' );


// Перехватываем
add_filter('woocommerce_checkout_fields', 'custom_override_checkout_fields');

// Наша перехваченная функция - $fields проходит через фильтр!
function custom_override_checkout_fields($fields)
{
    $fields['order']['order_comments']['placeholder'] = 'Мой новый текст в примечании к товару';

    $fields['billing']['billing_first_name']['label'] = "Ф.И.О.:";
    $fields['billing']['billing_first_name']['class'][0] = "form-row-wide";

    $fields['billing']['billing_phone']['label'] = "Телефон:";
    $fields['billing']['billing_email']['label'] = "E-Mail:";

    $fields['shipping']['shipping_city']['priority'] = 10;
    $fields['shipping']['shipping_city']['required'] = false;
    $fields['shipping']['shipping_city']['label'] = 'Город:';
    $fields['shipping']['shipping_address_1']['priority'] = 20;
    $fields['shipping']['shipping_address_1']['label'] = 'Улица:';
    $fields['shipping']['shipping_address_1']['placeholder'] = '';
    $fields['shipping']['shipping_address_1']['required'] = false;

    $fields['order']['order_comments']['placeholder'] = '';

    // remove unnecessary fields
    unset($fields['billing']['billing_last_name']);
    unset($fields['billing']['billing_company']);
    unset($fields['billing']['billing_country']);
    unset($fields['billing']['billing_address_1']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['billing']['billing_city']);
    unset($fields['billing']['billing_state']);
    unset($fields['billing']['billing_postcode']);

    unset($fields['shipping']['shipping_first_name']);
    unset($fields['shipping']['shipping_last_name']);
    unset($fields['shipping']['shipping_company']);
    unset($fields['shipping']['shipping_country']);
    unset($fields['shipping']['shipping_address_2']);
    unset($fields['shipping']['shipping_state']);
    unset($fields['shipping']['shipping_postcode']);

    //add custom fields
    $fields['shipping']['house'] = array(
        'label' => 'Дом:',
        'required' => false,
        'class' => array('house_field'),
        'priority' => 30
    );

    $fields['shipping']['entrance'] = array(
        'label' => 'Подъезд:',
        'required' => false,
        'class' => array('entrance_field'),
        'priority' => 40
    );

    $fields['shipping']['apartment'] = array(
        'label' => 'Квартира:',
        'required' => false,
        'class' => array('apartment_field'),
        'priority' => 50
    );

    $fields['shipping']['floor'] = array(
        'label' => 'Этаж:',
        'required' => false,
        'class' => array('floor_field'),
        'priority' => 60
    );

    $fields['shipping']['lift'] = array(
        'type' => 'checkbox',
        'label' => 'Грузовой лифт',
        'required' => false,
        'class' => array('lift_field'),
        'priority' => 70
    );

    return $fields;
}


remove_action( 'woocommerce_checkout_order_review', 'woocommerce_checkout_payment', 20 );
add_action( 'woocommerce_review_order_after_shipping', 'woocommerce_checkout_payment', 20 );




