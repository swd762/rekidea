<?php
get_header();
?>
<main>
<!--top slider block-->
 <div class="top-slider-wrapper">
     <img src="<?php echo get_template_directory_uri()?>/img/top-slider/top-banner.jpg" alt="">
            <!--        <div class="top-slider">-->
            <!--             --><?php //echo do_shortcode('[slick-slider category="4"
            //             image_size="large"
            //           autoplay="true" autoplay_interval="2000"
            //           image_fit="true"
            //
            //             ]'); ?>
            <!--        </div>-->
 </div>
<!--***************************************-->
<!--Crafts block-->
 <div class="craft-cards-wrapper container">
    <?php
    $query = new WP_Query(array(
            'category_name'=>'cards-block',
            'post_per_page'=>-1,
            'order'=> 'ASC',
            'order_by'=>'date'
    ));
    while ($query->have_posts()) {

     $query->the_post();

    ?>
<!--Card template -->
        <div class="card-craft wow zoomIn">
            <a href="#">
                <img src="<?php the_field('link_thumbnail', get_the_ID());?>" alt="">
                <h3><?php the_title() ?></h3>
            </a>
        </div>
<!--**************-->
    <?php } ?>
 </div>
<!--******************************************-->
<!--Pictures block-->
 <div class="pictures-block-wrapper">
    <div>
        <h3>Картины<br> для дома и офиса</h3>
        <a href="#" class="button">
            посмотреть все
        </a>
    </div>
 </div>
<!--******************************************-->

<!--Stands block-->
 <div class="stands-block-wrapper container">
    <div class="icon-block wow ZoomIn"  data-wow-delay="1s">
        <img src="<?= get_template_directory_uri()?>/img/stands-block/stands.png" alt="">
    </div>
    <div class="description-block">
        <h2 class="wow fadeInDown">застройка <br> и аренда
        стендов на мероприятия</h2>
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
<!--**********************************************-->

<!--Services block-->
 <div class="services-block-wrapper">
    <div class="container">
        <div class="services-block">
            <h2>мы предлагаем комплекс услуг</h2>
            <h3>Покажем больше выгод, группируя контент.. Максимум 2-3 предложения на мотивацию.</h3>
            <img src="<?= get_template_directory_uri()?>/img/services/logo-copy.png" alt="" class="logo-copy wow slideInUp" data-wow-delay="1s">
            <div class="icon-cards">
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/zamer.png" alt="">
                    </div>
                    <h4>Бесплатный замер</h4>
                    <p>Профессиональный замерщик сделает необходимые замеры объекта</p>
                </div>
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/arenda.png" alt="">
                    </div>
                    <h4>Аренда</h4>
                    <p>Сдаем в аренду стенды и пресс-волы</p>
                </div>
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/print.png" alt="">
                    </div>
                    <h4>Печать</h4>
                    <p>Отличное качество печати на
                        профессиональном оборудовании
                        обеспечит наш печатник</p>
                </div>
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/dostavka.png" alt="">
                    </div>
                    <h4>Доставка</h4>
                    <p>При оформлении заказа можно
                        заказать доставку товара
                        и подъём на этаж</p>
                </div>
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/montage.png" alt="">
                    </div>
                    <h4>Ремонт. Монтаж и Демонтаж</h4>
                    <p>Наши специалисты качественно
                        и быстро произведут ремонт,
                        монтаж или демонтаж продукции</p>
                </div>
                <div class="card wow zoomIn">
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
<!--*******************************************************************-->

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
                        <li class="akk-menu-item btn-checked">ПОЛНЫЙ ЦИКЛ ПРОИЗВОДСТВА РЕКЛАМЫ</li>
                        <li  class="akk-menu-content show"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner1.png" alt="">
                            <p>Компания «РекИдея» - рекламное агентство полного цикла в Москве.
                                Основное направление нашей деятельности – комплексное визуальное оформление мест продаж и
                                выставочных площадей. Производственная база компании позволяет печатать до 2000 кв. м.
                                широкоформатной печати в сутки. Цех полноцветной широкоформатной печати оборудован плоттерами
                                для производства постеров, баннеров и пантона основе экосольвентных, водных, сублимационных чернил.
                                Мы готовы предложить нашим клиентам не только изготовление, а так же аренду бюджетных и
                                премиальных мобильных стендов производства компании Megadisplay и компании Maxibit и Expand.
                                Также к Вашим услугам бюро оперативной полиграфии, которое поможет изготовить визитки, буклеты,
                                плакаты, листовки, календари.
                            </p>
                        </li>
                        <li class="akk-menu-item">цех фрезеровальных работ</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner2.png" alt="">
                            <p>Цех фрезеровальных работ и лазерной резки позволяет изготавливать широкий выбор POS
                                материалов из оргстекла, фанеры, дсп, пвх: тейбл тенты, холдеры (держатели), шелфтокеры,
                                мобайлы, информационные доски, элементы навигации. Цех послепечатной обработки готов
                                предоставить услуги по ламинированию и резки печатной продукции.
                            </p>
                        </li>
                        <li class="akk-menu-item">реальные сроки по договору</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner3.png" alt="">
                            <p>Собственное производство, постоянное наличие материалов на складе, отлаженный рабочий
                                процесс позволяют сдать заказ в кратчайшие сроки в надлежащем объеме и качестве.
                            </p>
                        </li>
                        <li class="akk-menu-item">помощь в согласовании</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner4.png" alt="">
                            <p>Наша компания оказывает услуги по подготовке и подаче всех необходимых документов
                                для получения разрешительной документации на установку наружной рекламы.
                            </p>
                        </li>
                        <li class="akk-menu-item">демократичные цены</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner5.jpg" alt="">
                            <p>Мы предлагаем изготовление любой продукции по разумной цене. Постоянное партнерство с
                                поставщиками позволяет получить существенные скидки на материалы, что отражается на
                                итоговой цене.
                            </p>
                        </li>
                        <li class="akk-menu-item">своя строительная организация</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner6.jpg" alt="">
                            <p>Дополнительно, мы можем предложить строительные услуги: фасадные и отделочные работы,
                                электромонтаж, входные группы, козырьки. Работая с нами, нет необходимости искать
                                дополнительных подрядчиков.
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="services-list-desktop">
                    <ul class="dtop-menu">
                        <li class="dtop-menu-item btn-checked">ПОЛНЫЙ ЦИКЛ ПРОИЗВОДСТВА РЕКЛАМЫ</li>
                        <li class="dtop-menu-item ">цех фрезеровальных работ</li>
                        <li class="dtop-menu-item ">реальные сроки по договору</li>
                        <li class="dtop-menu-item ">помощь в согласовании</li>
                        <li class="dtop-menu-item ">демократичные цены</li>
                        <li class="dtop-menu-item ">своя строительная организация</li>
                    </ul>
                    <article class="dtop-menu-content show">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner1.png" alt="">
                        <p>Компания «РекИдея» - рекламное агентство полного цикла в Москве.
                            Основное направление нашей деятельности – комплексное визуальное оформление мест продаж и
                            выставочных площадей. Производственная база компании позволяет печатать до 2000 кв. м.
                            широкоформатной печати в сутки. Цех полноцветной широкоформатной печати оборудован плоттерами
                            для производства постеров, баннеров и пантона основе экосольвентных, водных, сублимационных чернил.
                            Мы готовы предложить нашим клиентам не только изготовление, а так же аренду бюджетных и
                            премиальных мобильных стендов производства компании Megadisplay и компании Maxibit и Expand.
                            Также к Вашим услугам бюро оперативной полиграфии, которое поможет изготовить визитки, буклеты,
                            плакаты, листовки, календари.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner2.png" alt="">
                        <p>Цех фрезеровальных работ и лазерной резки позволяет изготавливать широкий выбор POS
                            материалов из оргстекла, фанеры, дсп, пвх: тейбл тенты, холдеры (держатели), шелфтокеры,
                            мобайлы, информационные доски, элементы навигации. Цех послепечатной обработки готов
                            предоставить услуги по ламинированию и резки печатной продукции.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner3.png" alt="">
                        <p>Собственное производство, постоянное наличие материалов на складе, отлаженный рабочий
                            процесс позволяют сдать заказ в кратчайшие сроки в надлежащем объеме и качестве.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner4.png" alt="">
                        <p>Наша компания оказывает услуги по подготовке и подаче всех необходимых документов
                            для получения разрешительной документации на установку наружной рекламы.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner5.jpg" alt="">
                        <p>Мы предлагаем изготовление любой продукции по разумной цене. Постоянное партнерство с
                            поставщиками позволяет получить существенные скидки на материалы, что отражается на
                            итоговой цене.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner6.jpg" alt="">
                        <p>Дополнительно, мы можем предложить строительные услуги: фасадные и отделочные работы,
                            электромонтаж, входные группы, козырьки. Работая с нами, нет необходимости искать
                            дополнительных подрядчиков.
                        </p>
                    </article>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var menuItem = document.getElementsByClassName("akk-menu-item");

    for (let i = 0;i < menuItem.length;i++) {
        var btnCheck = document.getElementsByClassName('btn-checked');
        var showCheck = document.getElementsByClassName('show');
        menuItem[i].addEventListener('click', function () {

            btnCheck[0].classList.remove('btn-checked');
            showCheck[0].classList.remove('show');
            this.classList.add('btn-checked');
            this.nextElementSibling.classList.toggle('show');
        })
    }
</script>
    <script>
        var menuItemDesk = document.querySelectorAll(".dtop-menu-item");
        var menuContentDesk = document.querySelectorAll(".dtop-menu-content");
        for (let i = 0;i < menuItemDesk.length;i++) {


            menuItemDesk[i].addEventListener('click', function () {
                var btnCheckDesk = document.querySelectorAll('.dtop-menu .btn-checked');
                var showCheckDesk = document.querySelectorAll('.services-list-desktop .show');
                btnCheckDesk[0].classList.remove('btn-checked');
                showCheckDesk[0].classList.remove('show');
                this.classList.add('btn-checked');
                menuContentDesk[i].classList.add('show');
            })
        }
    </script>
<!--Three steps block-->
<div class="three-steps-block-wrapper">
    <div class="container">
        <div class="three-steps-block">
            <h2><span>3</span> простых шага работы с нами</h2>
            <div class="three-steps-block__content">
                <div class="card wow fadeInUp">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/businesswoman-call.png" alt="">
                    </div>
                    <h3>1 шаг</h3>
                    <h4>Оставьте заявку</h4>
                    <p>Или позвоните по телефону
                        и наш менеджер свяжется с Вами
                        в течение 30 секунд!</p>
                </div>
                <div class="card wow fadeInUp" data-wow-delay="1s">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/business-people-meeting.png" alt="">
                    </div>
                    <h3>2 шаг</h3>
                    <h4>Мы вышлем просчет и макет</h4>
                    <p>Оперативно просчитаем Ваш заказ!
                        Вышлем коммерческое предложение
                        и макет на согласование</p>
                </div>
                <div class="card wow fadeInUp" data-wow-delay="2s">
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
<!--***************************************-->
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
            <div class="content-big">
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_big_1.png" alt=""></a>
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_big_2.png" alt=""></a>
                <a href="#" class="no-mobile"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_big_3.png" alt=""></a>
            </div>
            <div class="content-small">
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_small_1.png" alt=""></a>
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_small_2.png" alt=""></a>
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_small_3.png" alt=""></a>
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal_small_4.png" alt=""></a>
                <a href="#" class="no-mobile"><img src="<?= get_template_directory_uri() ?>/img/portfolio-block/gal_small_5.png"alt=""></a>
                <a href="#" class="no-mobile"><img src="<?= get_template_directory_uri() ?>/img/portfolio-block/gal_small_6.png"alt=""></a>
            </div>
        </div>
        <a href="#" class="button">Посмотреть больше наших работ</a>
</div>
<!--****************************************-->
<!--Out partners block-->
<div class="our-partners-block-wrapper">
    <div class="container">
        <div class="our-partners-block">
           <?= do_shortcode('[slick-carousel-slider category="8" 
           dots="false" arrows="false"  
           image_size="large"
           autoplay="true" autoplay_interval="2000" 
           image_fit="true" sliderheight="100"  ]'); ?>
        </div>
    </div>
</div>
</main>
<!--********************************************-->
<script>
    new WOW().init();
</script>


<?php
get_footer();
?>