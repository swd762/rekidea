<?php

//** Header */
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
<body>
     <header>
         <div class="header">
             <div class="container-flex">
                <div class="header__logo">
                    <a href="/"><img src="<?= get_template_directory_uri()?>/img/logo_rekidea.png" alt="Рекидея лого"></a>
                </div>
                <div class="header__search-bar">

                </div>
                <div class="header__phone-wrapper">
                    <img class="logo" src="<?= get_template_directory_uri()?>/img/phone-logo.png" alt="">

                    <a href="#">+7 (495) 369-20-79</a>
                    <img class="arrow" src="<?= get_template_directory_uri()?>/img/phone-arrow.png" alt="">
                </div>
                <div class="header__email-wrapper">
                    info@rekidea.ru
                </div>
                <div class="header__address-wrapper">
                    ул. Электрозаводская, 21
                </div>
            </div>
         </div>
         <div class="nav-wrapper">
             <nav class="container-flex">
                 <a href="#">Каталог рекламы</a>
                 <a href="#">Акции</a>
                 <a href="#">Услуги</a>
                 <a href="#">Цены</a>
                 <a href="#">Портфолио</a>
                 <a href="#">Оплата и доставка</a>
                 <a href="#">Статьи</a>
             </nav>
         </div>
     </header>