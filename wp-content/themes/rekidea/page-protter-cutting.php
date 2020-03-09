<?php
get_header();
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Плоттерная резка</p>
        </div>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper container clearfix">
    <div class="wide-printing__nav">
        <?php get_template_part( 'partials/price-menu.inc'); ?>
    </div>
    <div class="price__content">
        <div class="row">
            <div class="price__content-title">
                <h1>ознакомьтесь с нашими ценами</h1>
                <section>
                    <p>Для вашего удовства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                    <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими ценами
                        и&nbsp;выгодными предложениями.</p>
                </section>
                <?php get_template_part( 'partials/price-menu-mobile.inc'); ?>
                <a href="/404"><h2>Плоттерная резка</h2></a>
                <p>все цены в рублях за 1 кв. м</p>
            </div>
        </div>
        <div class="price-table protter-cutting-price">
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На Вашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td hot-icon">100</div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">250</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На нашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td">500</div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">600</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Выборка пленки</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td">400</div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">1000</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit alone">Монтажная пленка</div>
                </div>
                <div class="column">
                    <div class="td">200</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit alone">Комплексная резка</div>
                </div>
                <div class="column">
                    <div class="td hot-icon">900</div>
                </div>
                <div class="column">
                    <div class="td hot-icon">1800</div>
                </div>
            </div>
        </div>
        <div class="price-table protter-cutting-price mobile">
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На Вашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td hot-icon">100</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На Вашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">250</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На нашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td">500</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Плоттерная резка</div>
                    <div class="td">На нашей пленке</div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">600</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Выборка пленки</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">Крупные элементы</div>
                    <div class="td">400</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Выборка пленки</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">Мелкие эллементы до 1 см</div>
                    <div class="td">1000</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit alone">Монтажная пленка</div>
                </div>
                <div class="column">
                    <div class="td">200</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit alone">Комплексная резка</div>
                </div>
                <div class="column">
                    <div class="td hot-icon">900</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit alone">Комплексная резка</div>
                </div>
                <div class="column">
                    <div class="td hot-icon">1800</div>
                </div>
            </div>
        </div>
        <div class="adds-info">
            Пленка + выборка + монтажка
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
    <h2>горячее предложение</h2>
    <h3>обратите внимание на цену!</h3>
    <section>
        <p>Ламинация всего — 160 ₽/м2</p>
        <p>Печать от 10 м2 — скидка 5%</p>
        <p>Печать от 30 м2 — скидка 7%</p>
    </section>
    <div class="close-btn" onclick="closeHotDealModal()"><span></span><span></span></div>
</div>
<?php
get_footer();
?>
