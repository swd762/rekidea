<?php
get_header();

?>
<?php
if ( have_posts() ) {
    // Load posts loop.
    while ( have_posts() ) {
        the_post();


    }
}
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Мобильные стенды</p>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper mobile-stands-price-page-categories container clearfix">
    <div class="wide-printing__nav">
        <?php get_template_part( 'partials/price-menu.inc'); ?>
    </div>
    <div class="price__content">
        <div class="row">
            <div class="price__content-title">
                <h1>ознакомьтесь с нашими ценами</h1>
                <section>
                    <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                    <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими ценами
                        и&nbsp;выгодными предложениями.</p>
                </section>
                <?php get_template_part( 'partials/price-menu-mobile.inc'); ?>
                <a href="/404"><h2>Мобильные стенды</h2></a>
            </div>
        </div>
        <div class="price-categories mobile-stands-price-categories">
            <div class="price-category">
                <a href="/price/mobile-stands-price-categories/roll-up">
                    <div class="price-category-img">
                        <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/rollup-140x196.jpg">
                    </div>
                    <div class="price-category-title">
                        Roll up
                    </div>
                </a>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/popup 196x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Pop up</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/presswall-196x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Press Wall</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/gotovieresheniya-196x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Готовые решения</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/banner-xyz-140x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Баннерные стенды<br> X-L-Y</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/bukletnica-140x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Буклетницы</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/promostoika-140x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Промостойки</a>
                </div>
            </div>
            <div class="price-category">
                <div class="price-category-img">
                    <img src="<?= get_template_directory_uri()?>/img/mobile-stands-price-categories/acsess-140x196.jpg">
                </div>
                <div class="price-category-title">
                    <a href="/404">Аксессуары</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--*************************************-->




<!--consultant block ***********************************-->
    <?php get_template_part( 'partials/bottom-consultation-block.inc'); ?>
<!--****************************************************-->
</main>
<?php
get_footer();
?>
