<?php
get_header();
?>
<!--top slider block-->
 <div class="top-slider-wrapper">
     <?php echo do_shortcode('[slick-slider category="4"]'); ?>
     <!--    <div class="container">-->
        <div class="top-slider">
             <?php echo do_shortcode('[slick-slider category="4"]'); ?>
        </div>
<!--    </div>-->
 </div>
<!--Crafts block-->
 <div class="craft-cards-wrapper container">
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
    <div class="card">
        <a href="#">
            <img src="<?= get_template_directory_uri() ?>/img/craft-cards/signs.png" alt="">
            <h3>Вывески</h3>
        </a>
    </div>
 </div>
<!--Pictures block-->
 <div class="pictures-block-wrapper">
    <div class="container">

    </div>
 </div>
<!--Stans block-->
 <div class="stands-block-wrapper container">
    <div class="icon-block">
        <img src="<?= get_template_directory_uri()?>/img/stands-block/stands.png" alt="">
    </div>
    <div class="description-block">
        <h2>застройка и аренда</h2>
        <h2>стендов на мероприятия</h2>
        <p>Вы ставите нам задачу, а мы, в свою очередь, предлагаем оптимальные варианты решений. Имея собственные
            производственные мощности мы готовы помочь с созданием эксклюзивных и типовых проектов, оригинальной
            широкоформатной печатью, прокатом и арендой каркасов и конструкций, доставкой и монтажом
            стендов на любой площадке Москвы и Московской области.
        </p>
        <a href="#" class="button">
            посмотреть все
        </a>
    </div>
 </div>
<!--Services block-->
 <div class="services-block-wrapper">
    <div class="container">
        <div class="services-block">
            <h2>мы предлагаем комплекс услуг</h2>
            <h3>Покажем больше выгод, группируя контент.. Максимум 2-3 предложения на мотивацию.</h3>
            <img src="<?= get_template_directory_uri()?>/img/services/logo-copy.png" alt="" class="logo-copy">
            <div class="icon-cards">
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/zamer.png" alt="">
                    </div>
                    <h4>Бесплатный замер</h4>
                    <p>Профессиональный замерщик сделает необходимые замеры объекта</p>
                </div>
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/arenda.png" alt="">
                    </div>
                    <h4>Аренда</h4>
                    <p>Сдаем в аренду стенды и пресс-волы</p>
                </div>
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/print.png" alt="">
                    </div>
                    <h4>Печать</h4>
                    <p>Отличное качество печати на
                        профессиональном оборудовании
                        обеспечит наш печатник</p>
                </div>
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/dostavka.png" alt="">
                    </div>
                    <h4>Доставка</h4>
                    <p>При оформлении заказа можно
                        заказать доставку товара
                        и подъём на этаж</p>
                </div>
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/montage.png" alt="">
                    </div>
                    <h4>Ремонт. Монтаж и Демонтаж</h4>
                    <p>Наши специалисты качественно
                        и быстро произведут ремонт,
                        монтаж или демонтаж продукции</p>
                </div>
                <div class="card">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/garantia.png" alt="">
                    </div>
                    <h4>Гарантия</h4>
                    <p>Предоставим гарантию на все виды работ</p>
                </div>
            </div>
        </div>

    </div>
</div>
<!--Why us block-->
<div class="why-us-block-wrapper">
    <div class="container">
        <div class="why-us-block">
            <div class="why-us-block__header">
                <h2>почему выбирают именно нас</h2>
                <p>Покажем больше выгод, группируя контент.. Максимум 2-3 предложения на мотивацию.</p>
            </div>
            <div class="why-us-block__content">
                <div class="services-list">
                    <ul>
                        <li>ПОЛНЫЙ ЦИКЛ ПРОИЗВОДСТВА РЕКЛАМЫ</li>
                        <li>цех фрезеровальных работ</li>
                        <li>реальные сроки по договору</li>
                        <li>помощь в согласовании</li>
                        <li>демократичные цены</li>
                        <li>своя строительная организация</li>
                    </ul>
                </div>
                <div class="services-content">
                    <img src="<?= get_template_directory_uri()?>/img/why-us/banner1.png" alt="">
                    <p>Компания «РекИдея» - рекламное агентство полного цикла в Москве.
                        Основное направление нашей деятельности – комплексное визуальное оформление мест продаж и
                        выставочных площадей. Производственная база компании позволяет печатать до 2000 кв. м.
                        широкоформатной печати в сутки. Цех полноцветной широкоформатной печати оборудован плоттерами
                        для производства постеров, баннеров и пантона основе экосольвентных, водных, сублимационных чернил.
                        Мы готовы предложить нашим клиентам не только изготовление, а так же аренду бюджетных и
                        премиальных мобильных стендов производства компании Megadisplay и компании Maxibit и Expand.
                        Также к Вашим услугам бюро оперативной полиграфии, которое поможет изготовить визитки, буклеты,
                        плакаты, листовки, календари.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Three steps block-->
<div class="three-steps-block-wrapper">
    <div class="container">
        <div class="three-steps-block">
            <h2><span>3</span> простых шага работы с нами</h2>
            <div class="three-steps-block__content">
                <div class="card">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/businesswoman-call.png" alt="">
                    </div>
                    <h3>1 шаг</h3>
                    <h4>Оставьте заявку</h4>
                    <p>Или позвоните по телефону
                        и наш менеджер свяжется с Вами
                        в течение 30 секунд!</p>
                </div>
                <div class="card">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/business-people-meeting.png" alt="">
                    </div>
                    <h3>2 шаг</h3>
                    <h4>Мы вышлем просчет и макет</h4>
                    <p>Оперативно просчитаем Ваш заказ!
                        Вышлем коммерческое предложение
                        и макет на согласование</p>
                </div>
                <div class="card">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/close-up-business-meeting-handshake.png" alt="">
                    </div>
                    <h3>3 шаг</h3>
                    <h4>Получите свой заказ!</h4>
                    <p>Вас устроила цена и Вы согласовали макет?
                        Поздравляем! Мы выполним и доставим Ваш заказ,
                        произведем монтажные работы точно в срок!</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Portfolio block-->
<div class="portfolio-block-wrapper">
    <div class="portfolio-block__header container">
        <h2>наше портфолио</h2>
        <p>Работа с разными брендами от дешевого до премиум сегмента.Насколько хорошо мы умеем находить подход
            к каждому клиенту. Главная часть нас - это проекты, которые мы делаем и задачи, которые мы решаем.Обращаясь
            к нам вы получаете качественные проекты. Галерея будет адаптивно настраиваемая и анимированная. Картинки
            с водяным знаком при увеличении или нет?</p>
    </div>
    <div class="portfolio-block__content">
        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/slide.png" alt="">
        <a href="#">Посмотреть больше наших работ</a>
    </div>
</div>
<!--Out partners block-->
<div class="our-partners-block-wrapper">
    <div class="container">
        <div class="our-partners-block">
            <img src="<?= get_template_directory_uri()?>/img/our-partners/logo-elize.png" alt="">
            <img src="<?= get_template_directory_uri()?>/img/our-partners/logo-gorzdrav.png" alt="">
            <img src="<?= get_template_directory_uri()?>/img/our-partners/logo-mars.png" alt="">
            <img src="<?= get_template_directory_uri()?>/img/our-partners/logo-leofarm.png" alt="">
            <img src="<?= get_template_directory_uri()?>/img/our-partners/logo-sletatru.png" alt="">
        </div>
    </div>
</div>










<?php
get_footer();
?>