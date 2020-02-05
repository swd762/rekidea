<?php

//** Header */
?>
<?php
wp_head();
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?> >
<head>
    <title><?php echo wp_get_document_title();?></title>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11" />
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
  <?php
    $query = new WP_Query(array (
            'category_name'=>'common',
            'post_per_page'=>-1
    ));
    while ($query->have_posts()) {
        $query->the_post();
    }
  ?>
     <header>
         <div class="header">
             <div class="container header__top-content">
                <div class="header__logo">
                    <a href="/"><img src="<?= get_template_directory_uri()?>/img/logo_rekidea.png" alt="Рекидея лого"></a>
                </div>
                <div class="header__search-bar">
                    <form class="" action="">
                        <div class="header__search-field">
                            <input id="title-search-input" type="text" placeholder="Найти лучшее для вашей рекламы..."
                                   class="header__search-input">
                            <button class="header__search-btn" type="submit"></button>
                        </div>
                    </form>
                </div>
                <div class="header__phone-wrapper">

                    <a href="#" class="header__phone-logo">
                        <img class="logo" src="<?= get_template_directory_uri()?>/img/phone-logo.png" alt="">
                        +7 (495) 369-20-79
                    </a>
<!--                    phone modal-->
                    <div class="header__phone-modal">
                            <div class="phone-bold">
                                <a href="#">+ 7 (495) 369-20-79</a>
                            </div>
                            <div class="phone-bold">
                                <a href="#">+ 7 (495) 369-20-79</a>
                            </div>
                            <div class="working-regime">
                                Ежедневно с 10:00 до 19:00<br>
                                Без перерывов и выходных
                            </div>
                            <hr>
                            <div class="phone-link">
                                <a href="#">
                                    <img src="<?= get_template_directory_uri()?>/img/modal/smartphone.svg" alt="">
                                    Перезвоните мне
                                </a>
                            </div>
                            <div class="phone-link">
                                <a href="#" id="feedback-phone">
                                    <img src="<?= get_template_directory_uri()?>/img/modal/envelope.svg" alt="">
                                    Обратная связь
                                </a>
                            </div>
                    </div>
<!--                    ***************-->

<!--                    feedback modal -->
                    <div class="header__feedback-modal">
                        <div class="feedback-link">
                            <a href="#"><img src="<?= get_template_directory_uri()?>/img/modal/left.svg" alt=""> Другие варианты связи</a>
                        </div>
                        <hr>
                        <div class="feedback-form-header">
                            <h3>Хотите поговорить?</h3>
                            <p>Оставьте телефон, мы Вам перезвоним</p>
                        </div>
                        <div class="feedback-form">
                            <?= do_shortcode('[contact-form-7 id="185" title="phone-feedback-top-main"]'); ?>
                        </div>
                    </div>
<!--                    ****************-->
                </div>
                 <script>
                     jQuery(function($) {
                         $('.header__phone-logo').on('click', function(event) {
                             event.preventDefault();
                             $('.header__phone-logo').toggleClass('header__phone-logo-arrow');
                            if ($('.header__phone-modal').is('.active')) {
                                $('.header__phone-modal').removeClass('active');
                            } else {
                                if ($('.header__feedback-modal').is('.active')) {
                                    $('.header__feedback-modal').removeClass('active');
                                } else $('.header__phone-modal').addClass('active');
                            }
                         });

                         $('#feedback-phone').on('click', function (e) {
                            e.preventDefault();
                             $('.header__feedback-modal').addClass('active');
                             $('.header__phone-modal').removeClass('active');
                         });

                         $('.feedback-link').on('click', function (e) {
                            e.preventDefault();
                            $('.header__feedback-modal').removeClass('active');
                            $('.header__phone-modal').addClass('active');
                         })
                     });
                 </script>
                <div class="header__email-wrapper">
                    <? the_field('email', get_the_ID());?>
                </div>
                <div class="header__address-wrapper">
                    <? the_field('address', get_the_ID());?>
                </div>
                 <div class="header__meta_tablet">
                    <span><? the_field('email', get_the_ID());?></span>
                     <span><? the_field('address', get_the_ID());?></span>
                 </div>
            </div>
         </div>
         <div class="header-mobile">
             <div class="header-mobile__hamburger">
                 <span></span>
                 <span></span>
                 <span></span>
             </div>
             <div class="header-mobile__logo">
                 <a href="/"><img src="<?= get_template_directory_uri()?>/img/rekidea-mobile.svg" alt="Рекидея лого"></a>
             </div>
             <div class="header-mobile__meta">
                 <div class="header-mobile__search">
                    <img src="<?= get_template_directory_uri()?>/img/search_icon.png">
                 </div>
                 <div class="header-mobile__contacts">
                     <img src="<?= get_template_directory_uri()?>/img/phone_icon.png">
                 </div>
             </div>
         </div>
         <div class="nav-wrapper">
             <div class="container top-menu-desktop">
               <?php
               wp_nav_menu( [
                   'theme_location'  => 'top',
                   'menu'            => '',
                   'container'       => 'div',
                   'container_class' => '',
                   'container_id'    => '',
                   'menu_class'      => 'menu',
                   'menu_id'         => '',
                   'echo'            => true,
                   'fallback_cb'     => 'wp_page_menu',
                   'before'          => '',
                   'after'           => '',
                   'link_before'     => '',
                   'link_after'      => '',
                   'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                   'depth'           => 0,
                   'walker'          => '',
               ] );
               ?>
             </div>
             <div class="container top-menu-mobile">
                 <?php
                 wp_nav_menu( [
                     'theme_location'  => 'top-mobile',
                     'menu'            => '',
                     'container'       => 'div',
                     'container_class' => '',
                     'container_id'    => '',
                     'menu_class'      => 'menu',
                     'menu_id'         => '',
                     'echo'            => true,
                     'fallback_cb'     => 'wp_page_menu',
                     'before'          => '',
                     'after'           => '',
                     'link_before'     => '',
                     'link_after'      => '',
                     'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                     'depth'           => 0,
                     'walker'          => '',
                 ] );
                 ?>
             </div>
         </div>
     </header>