<?php
get_header();
?>
    <main>
        <!--Breadcrumbs block *******************-->
        <div class="breadcrumbs">
            <div class="container">
                <p><a href="/">Главная</a> > <a href="/price">Цены</a> > <a href="">Мобильные стенды</a> > Roll Up</p>
            </div>
        </div>
        <!--*************************************-->

        <!--*************************************-->
        <div class="price__wrapper mobile-stands-price-page container clearfix">
            <div class="wide-printing__nav">
                <?php get_template_part('partials/price-menu.inc'); ?>
            </div>
            <div class="shop__content">
                <div class="row">
                    <div class="price__content-title">
                        <h1>ознакомьтесь с нашими ценами</h1>
                        <section>
                            <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                            <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими
                                ценами
                                и&nbsp;выгодными предложениями.</p>
                        </section>
                        <?php get_template_part('partials/price-menu-mobile.inc'); ?>
                        <a href="/404"><h2>Мобильные стенды</h2></a>
                    </div>
                </div>
                <div class="price-categories mobile-stands-price-categories">
                    
                </div>
            </div>
        </div>
        <!--*************************************-->

        <!--consultant block ***********************************-->
        <?php get_template_part('partials/bottom-consultation-block.inc'); ?>
        <!--****************************************************-->
    </main>
<?php
get_footer();
?>