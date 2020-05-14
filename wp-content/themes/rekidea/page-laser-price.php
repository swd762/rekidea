<?php
get_header();

?>
<?php
if ( have_posts() ) {
    // Load posts loop.
    while ( have_posts() ) {
        the_post();

        $prices = getPrices(get_the_ID(), 'laser');
    }
}
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Лазерная резка</p>
        </div>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper laser-price-page  container clearfix">
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
                <a href="/laser"><h2>Лазерная резка</h2></a>
            </div>
        </div>
        <div class="price-table laser-price">
            <div class="horizontal">
                <div class="row">
                    <div class="tit">Лазерная гравировка фанеры</div>
                    <div class="td">1.5 руб кв. см</div>
                </div>
                <div class="row">
                    <div class="tit">Лазерная гравировка оргстекла</div>
                    <div class="td">от 2 руб кв. см</div>
                </div>
            </div>
            <div class="row">
                <div class="tit desc">Лазерная резка фанеры и МДФ</div>
                <div class="tit desc short">Стоимость материала в рублях за м. п.</div>
                <div class="tit desc-mobile">Лазерная резка фанеры и МДФ<br>Стоимость материала в рублях за м. п.</div>
                <div class="columns">
                    <div class="column">
                        <div class="tit">Толщина материала</div>
                        <?php foreach ($prices['mdf']['sizes'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit">до 500 м. п.</div>
                        <?php foreach ($prices['mdf']['prices1'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 500 м. п.</div>
                        <?php foreach ($prices['mdf']['prices2'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 1000 м. п.</div>
                        <?php foreach ($prices['mdf']['prices3'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="tit desc">Лазерная резка оргстекла и акрила</div>
                <div class="tit desc short">Стоимость материала в рублях за м. п.</div>
                <div class="tit desc-mobile">Лазерная резка оргстекла и акрила<br>Стоимость материала в рублях за м. п.</div>
                <div class="columns">
                    <div class="column">
                        <div class="tit">Толщина материала</div>
                        <?php foreach ($prices['akril']['sizes'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit">до 500 м. п.</div>
                        <?php foreach ($prices['akril']['prices1'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 500 м. п.</div>
                        <?php foreach ($prices['akril']['prices2'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 1000 м. п.</div>
                        <?php foreach ($prices['akril']['prices3'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="tit desc">Лазерная резка ПЭТа</div>
                <div class="tit desc short">Стоимость материала в рублях за м. п.</div>
                <div class="tit desc-mobile">Лазерная резка ПЭТа<br>Стоимость материала в рублях за м. п.</div>
                <div class="columns">
                    <div class="column">
                        <div class="tit">Толщина материала</div>
                        <?php foreach ($prices['pet']['sizes'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit">до 500 м. п.</div>
                        <?php foreach ($prices['pet']['prices1'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 500 м. п.</div>
                        <?php foreach ($prices['pet']['prices2'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 1000 м. п.</div>
                        <?php foreach ($prices['pet']['prices3'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="tit desc">Лазерная резка полистирола</div>
                <div class="tit desc short">Стоимость материала в рублях за м. п.</div>
                <div class="tit desc-mobile">Лазерная резка полистирола<br>Стоимость материала в рублях за м. п.</div>
                <div class="columns">
                    <div class="column">
                        <div class="tit">Толщина материала</div>
                        <?php foreach ($prices['polistirol']['sizes'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit">до 500 м. п.</div>
                        <?php foreach ($prices['polistirol']['prices1'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 500 м. п.</div>
                        <?php foreach ($prices['polistirol']['prices1'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
                    </div>
                    <div class="column">
                        <div class="tit hot-icon">от 1000 м. п.</div>
                        <?php foreach ($prices['polistirol']['prices3'] as $item) {?>
                            <div class="td"><?php echo $item?></div>
                        <?php } ?>
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
