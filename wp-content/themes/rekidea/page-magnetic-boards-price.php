<?php
get_header();
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Магнитно-маркерные доски</p>
        </div>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper magnetic-boards-price-page  container clearfix">
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
                        и&nbsp;выгодными&nbsp;предложениями.</p>
                </section>
                <?php get_template_part( 'partials/price-menu-mobile.inc'); ?>
                <a href="/magnetic-boards"><h2>магнитно-маркерные доски</h2></a>
                <p>все цены в рублях за 1 шт.</p>
            </div>
        </div>
        <div class="price-table magnetic-boards-price">
            <div class="row">
                <div class="columns">
                    <div class="column">
                        <div class="tit">Ширина х Высота, мм</div>
                        <div class="td">600х900</div>
                        <div class="td">900х1200</div>
                        <div class="td">1000х1500</div>
                        <div class="td">1000х2000</div>
                        <div class="td">1200х1800</div>
                        <div class="td">1200х2000</div>
                        <div class="td">1200х2400</div>
                    </div>
                    <div class="column">
                        <div class="tit">Стоимость, руб</div>
                        <div class="td">6700</div>
                        <div class="td">9800</div>
                        <div class="td">16400</div>
                        <div class="td">23000</div>
                        <div class="td">21500</div>
                        <div class="td">25000</div>
                        <div class="td">28000</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="special-price-containment">
                    <header>В КОМПЛЕКТ ВХОДЯТ:</header>
                    <div class="special-price-containment__items">
                        <div class="special-price-containment__item">
                            <img src="<?= get_template_directory_uri()?>/img/special-price/eraser_icon.png">
                            <span>губка стиратель</span>
                        </div>
                        <div class="special-price-containment__item">
                            <img src="<?= get_template_directory_uri()?>/img/special-price/magnet_icon.png">
                            <span>от 5 неодимовых магнитов</span>
                        </div>
                        <div class="special-price-containment__item">
                            <img src="<?= get_template_directory_uri()?>/img/special-price/marker_icon.png">
                            <span>маркер меловой</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="special-price-desc">
                    <img src="<?= get_template_directory_uri()?>/img/special-price/desc.png">
                    <div class="special-price-ball">
                        <img src="<?= get_template_directory_uri()?>/img/special-price/red-ball.png">
                    </div>
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

<div class="hot-deal__modal">
    <img src="<?= get_template_directory_uri()?>/img/fire.svg" alt="hot deal">
    <h2>ГОРЯЧЕЕ ПРЕДЛОЖЕНИЕ</h2>
    <h3>ОБРАТИТЕ ВНИМАНИЕ НА ЦЕНУ!</h3>
    <h4>НА ВСЮ ЛАЗЕРНУЮ РЕЗКУ ДЕЙСТВУЮТ СКИДКИ*</h4>
    <section>
        <p>от 500 м. п. — скидка 15%</p>
        <p>от 1000 м. п. — скидка 30%</p>
        <span>*скидки уже указаны в стоимости</span>
    </section>

    <div class="close-btn" onclick="closeHotDealModal()"><span></span><span></span></div>
</div>
<?php
get_footer();
?>
