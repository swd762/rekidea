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
    <link href="<?= get_template_directory_uri()?>/img/rekidea-favicon.svg" rel="icon" type="image/svg+xml" />
    <?php wp_head(); ?>
    <script src="//code-ya.jivosite.com/widget/GRZZqvy1xe" async></script>
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
     <header class="main-header">
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
                <div class="header__phone-wrapper" id="phone-modal">
                    <div class="fade"></div>
                    <a href="#" class="header__phone-logo">
                        <img class="logo" src="<?= get_template_directory_uri()?>/img/phone-logo.png" alt="">
                        +7 (495) 369-20-79
                    </a>
<!--                    phone modal-->
                    <div class="header__phone-modal">
                        <div class="phone-bold">
                            <a href="tel:+74953692079">+ 7 (495) 369-20-79</a>
                        </div>
                        <div class="phone-bold">
                            <a href="tel:+79265832351">+7 (926) 583-23-51</a>
                        </div>
                        <div class="working-regime">
                            Ежедневно с 10:00 до 19:00<br>
                            Без перерывов и выходных
                        </div>

                            <hr>
                            <div class="phone-link">
                                <a href="#" id="feedback-phone">
                                    <img src="<?= get_template_directory_uri()?>/img/modal/smartphone.svg" alt="">
                                    Перезвоните мне
                                </a>
                            </div>
                            <div class="phone-link">
                                <a href="/feedback" >
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
<!--                 script for modal on phone number click-->
                 <script>
                     let phoneModal = document.querySelector('.header__phone-modal'),
                         feedbackModal = document.querySelector('.header__feedback-modal'),
                         fade = document.querySelector('.fade'),
                         phoneBlock = document.querySelector('#phone-modal'),
                         phoneLogo = document.querySelector('.header__phone-logo');

                     document.querySelector('.header__phone-logo').addEventListener('click', function (e) {
                         e.preventDefault();
                         e.target.classList.toggle('header__phone-logo-arrow');

                         if(phoneModal.classList.contains('active') || feedbackModal.classList.contains('active')) {
                             phoneModal.classList.remove('active');
                             feedbackModal.classList.remove('active');
                             fade.classList.remove('active');
                             phoneLogo.classList.remove('header__phone-logo-bkg');
                         } else {
                             phoneModal.classList.add('active');
                             fade.classList.add('active');
                             phoneBlock.classList.add('active');
                             phoneLogo.classList.add('header__phone-logo-bkg');
                         }
                     });

                     document.querySelector('#feedback-phone').addEventListener('click', function (e) {
                         e.preventDefault();
                         phoneModal.classList.remove('active');
                         feedbackModal.classList.add('active');
                         fade.classList.add('active');
                         phoneBlock.classList.add('active');
                     });

                     document.querySelector('.feedback-link').addEventListener('click', function (e) {
                         e.preventDefault();
                         phoneModal.classList.add('active');
                         feedbackModal.classList.remove('active');
                         fade.classList.add('active');
                         phoneBlock.classList.add('active');
                     });

                     document.addEventListener('click', e => {
                         let target = e.target;
                         let itsPhone = target == phoneBlock || phoneBlock.contains(target);
                         let itsFade = target == fade;
                         let phoneIsActive = phoneBlock.classList.contains('active');

                         if ((!itsPhone || itsFade) && phoneIsActive) {
                             phoneModal.classList.remove('active');
                             feedbackModal.classList.remove('active');
                             fade.classList.remove('active');
                             phoneBlock.classList.remove('active');
                             phoneLogo.classList.remove('header__phone-logo-arrow');
                             phoneLogo.classList.remove('header__phone-logo-bkg');
                         }
                     })
                 </script>
<!--******************************************************************-->
<!--                <div class="header__email-wrapper">-->
<!--                 <div class="header__address-wrapper">-->
<!--                    --><?// the_field('email', get_the_ID());?><!--<br>-->
<!--                    --><?// the_field('address', get_the_ID());?>
<!--                </div>-->
                 <div class="header__meta_tablet">
                     <span><? the_field('email', get_the_ID());?></span>
                     <span><? the_field('address', get_the_ID());?></span>
                 </div>
                <div class="shop-cart-widget">
                    <?php
                    global $woocommerce; ?>
                    <a href="<?php echo $woocommerce->cart->get_cart_url() ?>" class="shop-cart-widget__btn">
                        <div class="shop-cart-widget__btn-icon">
                            <span class="basket-btn__label">Корзина</span>
                            <span class="basket-btn__counter"><?php echo sprintf($woocommerce->cart->cart_contents_count); ?></span>
                        </div>
                        <div class="shop-cart-widget__btn-amount">
                          <span>Сумма: </span>
                          <span class="basket-btn__amount"><?php echo sprintf(
                                  str_replace(',00','',$woocommerce->cart->get_cart_total()));
                              ?></span>
                        </div>



                    </a>
                </div>
<!--                 <div class="header__meta_tablet">-->
<!--                    <span>--><?// the_field('email', get_the_ID());?><!--</span>-->
<!--                     <span>--><?// the_field('address', get_the_ID());?><!--</span>-->
<!--                 </div>-->
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
                 <div class="shop-cart-widget__mobile">
                     <a href="<?php echo $woocommerce->cart->get_cart_url() ?>" class="shop-cart-widget__mobile-icon">
                         <img src="<?= get_template_directory_uri()?>/img/shopping-cart-mob.svg" alt="">
                         <span class="basket-btn__counter"><?php echo sprintf($woocommerce->cart->cart_contents_count); ?></span>


                     </a>
                 </div>
                 <div class="header-mobile__search">
                    <img src="<?= get_template_directory_uri()?>/img/search.svg">
                 </div>
                 <div class="header-mobile__contacts">
                     <a href="tel:+79265832351"><img src="<?= get_template_directory_uri()?>/img/phone.svg"></a>
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
<!--  Mobile submenu-->
  <script>
      let menuItemsWithChildren = document.querySelectorAll('.top-menu-mobile .menu-item-has-children');
      menuItemsWithChildren.forEach(function (e) {
          e.querySelector('a').addEventListener('click', function (event) {
              event.preventDefault();
              e.classList.toggle('bold');
            e.querySelector('.sub-menu').classList.toggle('active');
          })
      })
  </script>