<?php
get_header();
?>
    <main>
        <!--Breadcrumbs block *******************-->
        <div class="breadcrumbs">
            <div class="container">
                <!--        <p>Главная  > Цены</p>-->
                <p><a href="/">Главная</a> > Цены</p>
            </div>
        </div>
        <!--*************************************-->

        <!--*********Price header************************-->
        <div class="price-header container">
            <h1>ознакомьтесь с&nbsp;нашими ценами</h1>
            <section>
                <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими ценами и&nbsp;выгодными
                    предложениями.</p>
            </section>
            <section>
                <p>Мы&nbsp;предлагаем изготовление любой рекламной продукции по&nbsp;разумной цене. Постоянное
                    партнерство с&nbsp;поставщиками позволяет получить
                    существенные скидки на&nbsp;материалы. А&nbsp;наличие на&nbsp;складе необходимых для производства
                    материалов позволяет снизить стоимость закупки.</p>
            </section>


        </div>
        <!--*********************************-->

        <!--*********Price cards************************-->
        <div class="price-cards__wrapper container">

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic1.png" alt="">
                    <h3>вывески</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic2.png" alt="">
                    <h3>световые панели</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/wide-printing">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic3.png" alt="">
                    <h3>широкоформатная печать</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic4.png" alt="">
                    <h3>ростовые фигуры</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic5.png" alt="">
                    <h3>мобильные стенды</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic6.png" alt="">
                    <h3>фотозона</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic7.png" alt="">
                    <h3>магнитно-маркерные доски</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/laser-price">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic8.png" alt="">
                    <h3>лазерная резка</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/protter-cutting">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic15.png" alt="">
                    <h3>Плоттерная резка</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic9.png" alt="">
                    <h3>картины для дома и<br class="br-remove"> офиса</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic14.png" alt="">
                    <h3>инфостенды
                        и режимы работы</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic10.png" alt="">
                    <h3>оклейка витрин
                        и офисных перегородок</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic11.png" alt="">
                    <h3>брендирование<br> транспорта</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic12.png" alt="">
                    <h3>штендеры</h3>
                </a>
            </div>

            <div class="price-card wow zoomIn">
                <a href="/404">
                    <img src="<?= get_template_directory_uri() ?>/img/price-page/pic13.png" alt="">
                    <h3>аренда рекламных
                        конструкций</h3>
                </a>
            </div>
        </div>
        <!--******************************************-->

        <!--consultant block ***********************************-->
        <div class="questions-contact__wrapper container">
            <div class="questions-contact__content">
                <h2>Затрудняетесь с выбором?</h2>
                <p>Мы сэкономим ваше время! Звоните для консультаций
                    или оставьте заявку на обратный звонок.
                </p>
                <div class="questions-contact__content-contacts">
                    <h4>+ 7 (495) 369-20-79</h4>
                    <a href="#" class="button call-me-js">ПЕРЕЗВОНИТЬ МНЕ</a>
                </div>
            </div>
            <img src="<?= get_template_directory_uri() ?>/img/404/operator.png" alt="" class="question-operator">
            <!--    <img src="-->
            <? //= get_template_directory_uri()?><!--/img/404/operator.png" alt="" class="question-operator-mobile">-->
        </div>
        <!--****************************************************-->
    </main>
<?php
get_footer();
?>