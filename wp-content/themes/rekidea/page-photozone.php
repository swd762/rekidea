<?php
get_header();

if(have_posts()) {
    while (have_posts()){
        the_post();
    }
}
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Фотозона</p>
        </div>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper photozone-wrapper container clearfix">
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
            </div>
        </div>
        <div class="wo-price-page photozone-page">
            <div class="text-part">
                <div class="describe-page-link">
                    <a href="/404"><h2>Фотозона</h2></a>
                </div>
                <section class="first-text">
                    <?php the_content(); ?>
                </section>
                <section class="second-text">
                    <p>Мы работаем с брендами разного уровня.</p>
                    <p>Это позволяет нам находить индивидуальный подход к каждому клиенту.</p>
                    <p>Наша компания не просто производит рекламную продукцию: нашими идеями и разработками мы успешно и эффективно решаем ваши задачи и проблемы.</p>
                    <p>Ознакомьтесь с нашими проектами!</p>
                </section>
            </div>
            <div class="callback-form-part">
                <div class="callback-form">
                    <div class="call-us">
                        <h4>Позвоните нам!</h4>
                        <a href="tel:+74953692079">+ 7 (495) 369-20-79</a>
                        <a href="tel:+79265832351">+ 7 (926) 583-23-51</a>
                        <div class="working-regime">
                            Ежедневно с 10:00 до 19:00<br>
                            Без перерывов и выходных
                        </div>
                    </div>
                    <div class="we-call">
                        <h4>или Оставьте телефон
                            мы вам перезвоним</h4>
                    </div>
                    <div class="feedback-form">
                        <div role="form" class="wpcf7" id="wpcf7-f274-o2" dir="ltr" lang="ru-RU">
                            <div class="screen-reader-response"></div>
                            <form action="/laser/#wpcf7-f274-o2" method="post" class="wpcf7-form"
                                  novalidate="novalidate">
                                <div style="display: none;">
                                    <input type="hidden" name="_wpcf7" value="274">
                                    <input type="hidden" name="_wpcf7_version" value="5.1.6">
                                    <input type="hidden" name="_wpcf7_locale" value="ru_RU">
                                    <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f274-o2">
                                    <input type="hidden" name="_wpcf7_container_post" value="0">
                                </div>
                                <div class="feedback-field">
                                    <span class="wpcf7-form-control-wrap feedback-name"><input type="text"
                                                                                               name="feedback-name"
                                                                                               value="" size="40"
                                                                                               class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                               aria-required="true"
                                                                                               aria-invalid="false"
                                                                                               placeholder="Имя"></span>
                                </div>
                                <div class="feedback-field">
                                    <span class="wpcf7-form-control-wrap feedback-phone"><input type="tel"
                                                                                                name="feedback-phone"
                                                                                                value="" size="40"
                                                                                                class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel"
                                                                                                aria-required="true"
                                                                                                aria-invalid="false"
                                                                                                placeholder="Телефон"></span>
                                </div>
                                <div class="feedback-field">
                                    <span class="wpcf7-form-control-wrap message-name"><input type="text"
                                                                                              name="message-name"
                                                                                              value="" size="40"
                                                                                              class="wpcf7-form-control wpcf7-text"
                                                                                              aria-invalid="false"
                                                                                              placeholder="Сообщение"></span>
                                </div>
                                <div class="feedback-submit">
                                    <input type="submit" value="Перезвоните мне"
                                           class="wpcf7-form-control wpcf7-submit"><span class="ajax-loader"></span>
                                </div>
                                <div class="private_term_agree">
                                    Нажимая кнопку «Перезвонить мне», я <a href="/privacy-policy">даю свое согласие</a>
                                    на обработку персональных данных.
                                </div>
                                <div class="wpcf7-response-output wpcf7-display-none"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="price-table pictures-price">
            <div class="row">
                <div class="column">
                    <div class="tit">Плакаты на фотобумаге</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">70</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">140</div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">220</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">400</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ПВХ 5мм</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">500</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">1000</div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">1500</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">3000</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ал. раме</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">850</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">1500</div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">3000</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">4500</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit hot-icon">Картины на хосте / см</div>
                    <div class="td tall">Натуральный холст<br>галерейная натяжка на подрамник</div>
                </div>
                <div class="column">
                    <div class="tit">30х42</div>
                    <div class="td">1000</div>
                </div>
                <div class="column">
                    <div class="tit">42х60</div>
                    <div class="td">1800</div>
                </div>
                <div class="column">
                    <div class="tit">50х50</div>
                    <div class="td">2500</div>
                </div>
                <div class="column">
                    <div class="tit">60х80</div>
                    <div class="td">4000</div>
                </div>
            </div>
        </div>
        <div class="price-table pictures-price mobile">
            <div class="row">
                <div class="column">
                    <div class="tit">Плакаты на фотобумаге</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">70</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">140</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Плакаты на фотобумаге</div>
                    <div class="td empty"></div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">220</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">400</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ПВХ 5мм</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">500</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">1000</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ПВХ 5мм</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">1500</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">3000</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ал. раме</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А3</div>
                    <div class="td">850</div>
                </div>
                <div class="column">
                    <div class="tit">А2</div>
                    <div class="td">1500</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Постеры на ал. раме</div>
                    <div class="td">золото/серебро</div>
                </div>
                <div class="column">
                    <div class="tit">А1</div>
                    <div class="td">3000</div>
                </div>
                <div class="column">
                    <div class="tit">А0</div>
                    <div class="td">4500</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit">Картины на хосте / см</div>
                    <div class="td tall">Натуральный холст<br>галерейная натяжка на подрамник</div>
                </div>
                <div class="column">
                    <div class="tit">30х42</div>
                    <div class="td">1000</div>
                </div>
                <div class="column">
                    <div class="tit">42х60</div>
                    <div class="td">1800</div>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <div class="tit hot-icon">Картины на хосте / см</div>
                    <div class="td tall">Натуральный холст<br>галерейная натяжка на подрамник</div>
                </div>
                <div class="column">
                    <div class="tit">50х50</div>
                    <div class="td">2500</div>
                </div>
                <div class="column">
                    <div class="tit">60х80</div>
                    <div class="td">4000</div>
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
    <h2>Специальное предложение</h2>
    <h3>Натягиваем холст на подрамник бесплатно!</h3>
    <div class="close-btn" onclick="closeHotDealModal()"><span></span><span></span></div>
</div>
<?php
get_footer();
?>
