<?php
get_header();
?>
<main>
<!--top slider block-->
 <div class="top-slider-wrapper">
     <img src="<?php echo get_template_directory_uri()?>/img/top-slider/top-banner.jpg" alt="">
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
            <a href="/404">
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
        <a href="/404" class="button">
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
        <h2 class="wow fadeInDown">Продажа и аренда мобильных стендов</h2>
        <p>В наше время ни одна презентация или любое мероприятие не обходится без рекламных,
            брендовых или информационных стендов. Если вы планируете собрать большое количество
            людей на ваше мероприятие, то мобильные стенды, роллапы, прессволы, фотозоны, рекламные стойки это то,
            что вам нужно и то, что вы можете заказать у нас.
            Помимо стандартных мобильных стендов и стоек, мы можем предложить разработку оригинальных
            конструкций эксклюзивно для вашего мероприятия.
        </p>
        <a href="/404" class="button">
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
            <h3>Накопленный опыт позволяет нам производить рекламную продукцию любой сложности. Вы всегда можете
                рассчитывать на комфортные и выгодные условия работы. Работая с нами вы получаете
                не поставщика, а партнера!</h3>
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
                        <img src="<?= get_template_directory_uri() ?>/img/services/factory.png" alt="">
                    </div>
                    <h4>Производство</h4>
                    <p>Собственная производственная база позволяет нам в короткие сроки выполнять
                        проекты любой сложности на высоком уровне.</p>
                </div>
                <div class="card wow zoomIn">
                    <div class="icon">
                        <img src="<?= get_template_directory_uri() ?>/img/services/print.png" alt="">
                    </div>
                    <h4>Широкоформатная печать</h4>
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
                <p>Наша компания влaдеет сoбственными пpoизвoдственными и технoлoгическими мoщнoстями,
                    paспoлaгaет тaлaнтливыми дизaйнеpaми, штaтoм менеджеров, технoлoгoв и мaстеpoв. 
                    Ответственный подход к работе, внимание и разумные цены – вот то, что отличает нас и дает
                    возможность помогать вам, достигать высоких целей. Мы всегда готовы помочь вам в создании
                    положительного имиджа вашей компании.</p>
            </div>
            <div class="why-us-block__content">
                <div class="services-list">
                    <ul>
                        <li class="akk-menu-item btn-checked">ПОЛНЫЙ ЦИКЛ ПРОИЗВОДСТВА РЕКЛАМЫ</li>
                        <li  class="akk-menu-content show"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner1.png" alt="">
                            <p>Мы предлагаем профессиональные и современные решения в реализации рекламных проектов и
                                производстве рекламной продукции. Накопленный опыт позволяет нам производить рекламную продукцию любой сложности. Собственная производственная база позволяет нам в короткие сроки выполнять проекты любой сложности на высоком уровне.
                                Наше производство укомплектовано широкоформатными принтерами для интерьерной и наружной рекламы, режущим плоттером, фрезерным станком ЧПУ, лазерной резкой. Мы производим качественную и долговечную продукцию.
                                Вы всегда можете рассчитывать на комфортные и выгодные условия работы.
                                Опытные менеджеры профессионально и бесплатно проконсультируют по вопросам производства рекламной продукции, используемых материалов и технологий.
                                Дизайнеры разработают и визуализируют макет на основе ваших пожеланий.
                                Собственное производство воплотит в жизнь любую задумку.
                                Монтажная бригада доставит и установит вашу рекламу.
                            </p>
                        </li>
                        <li class="akk-menu-item">Собственное производство</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner2.png" alt="">
                            <p>Наше производство оборудовано всем необходимым для быстрого и качественного
                                изготовления любой рекламной продукции. Лазерная и фрезерная резка на станках ЧПУ,
                                широкоформатная печать на пленке, фотобумаге, баннере, холсте,
                                плоттерная резка пленки с возможностью резки по изображению, постпечатная обработка,
                                ламинация печатной продукции, прикатка пленок и печати к любой поверхности, наличие
                                этого оборудования позволяет нам предлагать рекламную продукцию на самом высоком
                                уровне и реализовывать абсолютно любые рекламные идеи. Постоянное наличие на складе
                                необходимых материалов  позволяет не тратить время на закупку и приступать
                                непосредственно к производству, практически сразу после согласования.
                            </p>
                        </li>
                        <li class="akk-menu-item">реальные сроки по договору</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner3.png" alt="">
                            <p>Собственное производство, постоянное наличие материалов на складе, отлаженный рабочий
                                процесс позволяют сдать заказ в кратчайшие сроки в надлежащем объеме и качестве.
                            </p>
                        </li>
                        <li class="akk-menu-item">Гарантия</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner4.png" alt="">
                            <p>Мы предоставляем гарантию на нашу продукцию. Даже если мы не заключили договор и не
                                прописали условия гарантии, мы все равно несем ответственность за нашу работу и за
                                нашу продукцию, поэтому гарантийные условия распространяются на любой заказ.Мы быстро
                                реагируем на запросы и оперативно выезжаем для устранения неисправностей, к примеру
                                перегоревший блок на вывеске мы можем поменять в день обращения.
                                Работая с нами вы защищены от недобросовестного отношения!
                            </p>
                        </li>
                        <li class="akk-menu-item">демократичные цены</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner5.jpg" alt="">
                            <p>Мы предлагаем изготовление любой рекламной продукции по разумной цене.
                                Постоянное партнерство с поставщиками позволяет получить существенные скидки
                                на материалы, наличие на складе необходимых для производства материалов позволяет
                                снизить стоимость закупки. Благодаря использованию разнообразных материалов и
                                технологий производства мы можем предложить несколько вариантов цены на выбор.
                            </p>
                        </li>
                        <li class="akk-menu-item">Своя монтажная бригада</li>
                        <li  class="akk-menu-content"> <img src="<?= get_template_directory_uri()?>/img/why-us/banner6.jpg" alt="">
                            <p>Воспользуйтесь услугами нашей монтажной бригады. Мы поможем установить
                                и подключить вывеску, смонтировать рекламную стойку, оклеить офисные
                                перегородки или витрины, повесить таблички и стенды.У наших монтажников
                                есть допуск на высотные работы, поэтому провести монтаж мы можем на любой
                                высоте. Работая с нами нет необходимости искать дополнительных подрядчиков.
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="services-list-desktop">
                    <ul class="dtop-menu">
                        <li class="dtop-menu-item btn-checked">ПОЛНЫЙ ЦИКЛ ПРОИЗВОДСТВА РЕКЛАМЫ</li>
                        <li class="dtop-menu-item ">Собственное производство</li>
                        <li class="dtop-menu-item ">реальные сроки по договору</li>
                        <li class="dtop-menu-item ">Гарантия</li>
                        <li class="dtop-menu-item ">демократичные цены</li>
                        <li class="dtop-menu-item ">Своя монтажная бригада</li>
                    </ul>
                    <article class="dtop-menu-content show">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner1.png" alt="">
                        <p>Мы предлагаем профессиональные и современные решения в реализации рекламных проектов и
                            производстве рекламной продукции. Накопленный опыт позволяет нам производить рекламную продукцию любой сложности. Собственная производственная база позволяет нам в короткие сроки выполнять проекты любой сложности на высоком уровне.
                            Наше производство укомплектовано широкоформатными принтерами для интерьерной и наружной рекламы, режущим плоттером, фрезерным станком ЧПУ, лазерной резкой. Мы производим качественную и долговечную продукцию.
                            Вы всегда можете рассчитывать на комфортные и выгодные условия работы.
                            Опытные менеджеры профессионально и бесплатно проконсультируют по вопросам производства рекламной продукции, используемых материалов и технологий.
                            Дизайнеры разработают и визуализируют макет на основе ваших пожеланий.
                            Собственное производство воплотит в жизнь любую задумку.
                            Монтажная бригада доставит и установит вашу рекламу.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner2.png" alt="">
                        <p>Наше производство оборудовано всем необходимым для быстрого и качественного
                            изготовления любой рекламной продукции. Лазерная и фрезерная резка на станках ЧПУ,
                            широкоформатная печать на пленке, фотобумаге, баннере, холсте,  плоттерная резка пленки
                            с возможностью резки по изображению, постпечатная обработка, ламинация печатной продукции,
                            прикатка пленок и печати к любой поверхности, наличие этого оборудования позволяет нам
                            предлагать рекламную продукцию на самом высоком уровне и реализовывать абсолютно любые
                            рекламные идеи. Постоянное наличие на складе необходимых материалов  позволяет не тратить
                            время на закупку и приступать непосредственно к производству, практически сразу после
                            согласования.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner3.png" alt="">
                        <p>Работая с несколькими сетевыми магазинами и кафе, мы понимаем всю важность соблюдения
                            сроков. Магазин не может открыться без вывески, сроки проведения рекламной кампании
                            не могут быть перенесены из-за неготовности рекламных материалов, запланированное
                            мероприятие не может начаться без прессвола. Мы ценим ваше время и ваши усилия!
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner4.png" alt="">
                        <p>Мы предоставляем гарантию на нашу продукцию. Даже если мы не заключили договор
                            и не прописали условия гарантии, мы все равно несем ответственность за нашу работу
                            и за нашу продукцию, поэтому гарантийные условия распространяются на любой заказ.Мы
                            быстро реагируем на запросы и оперативно выезжаем для устранения неисправностей, к
                            примеру перегоревший блок на вывеске мы можем поменять в день обращения.
                            Работая с нами вы защищены от недобросовестного отношения!
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner5.jpg" alt="">
                        <p>Мы предлагаем изготовление любой рекламной продукции по разумной цене. Постоянное
                            партнерство с поставщиками позволяет получить существенные скидки на материалы,
                            наличие на складе необходимых для производства материалов позволяет снизить
                            стоимость закупки. Благодаря использованию разнообразных материалов и технологий
                            производства мы можем предложить несколько вариантов цены на выбор.
                        </p>
                    </article>
                    <article class="dtop-menu-content">
                        <img src="<?= get_template_directory_uri()?>/img/why-us/banner6.jpg" alt="">
                        <p>Воспользуйтесь услугами нашей монтажной бригады. Мы поможем установить и подключить
                            вывеску, смонтировать рекламную стойку, оклеить офисные перегородки или
                            витрины, повесить таблички и стенды.У наших монтажников есть допуск на
                            высотные работы, поэтому провести монтаж мы можем на любой высоте. Работая
                            с нами нет необходимости искать дополнительных подрядчиков.
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
                <div class="card wow zoomIn">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/businesswoman-call.png" alt="">
                    </div>
                    <h3>1 шаг</h3>
                    <h4>Оставьте заявку</h4>
                    <p>Или позвоните по телефону
                        и наш менеджер свяжется с Вами
                        в течение 30 секунд!</p>
                </div>
                <div class="card wow zoomIn" data-wow-delay="1s">
                    <div class="thumbnail">
                        <img src="<?= get_template_directory_uri()?>/img/three-steps/business-people-meeting.png" alt="">
                    </div>
                    <h3>2 шаг</h3>
                    <h4>Мы вышлем просчет и макет</h4>
                    <p>Оперативно просчитаем Ваш заказ!
                        Вышлем коммерческое предложение
                        и макет на согласование</p>
                </div>
                <div class="card wow zoomIn" data-wow-delay="2s">
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
            <p>Мы работаем с брендами разного уровня. Это позволяет нам находить индивидуальный подход
                к каждому клиенту. Наша компания не просто производит рекламную продукцию:
                нашими идеями и разработками мы успешно и эффективно решаем ваши задачи и
                проблемы. Ознакомьтесь с нашими проектами!</p>
        </div>
        <div class="portfolio-block__content">
                <?php
                $query = new WP_Query(array (
                        'category_name'=>'common',
                        'post_per_page'=>-1
                ));
                while ($query->have_posts())
                    $query->the_post();
                ?>
                <div class="content-big">
                    <a href="<?php the_field('portfolio-image1', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-big-1.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image2', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-big-2.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image3', get_the_ID())?>" class="single_image hidden-mobile">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-big-3.png" alt="">
                    </a>
                </div>
                <div class="content-small">
                    <a href="<?php the_field('portfolio-image4', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-1.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image5', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-2.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image6', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-3.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image7', get_the_ID())?>" class="single_image">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-4.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image8', get_the_ID())?>" class="single_image hidden-mobile">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-5.png" alt="">
                    </a>
                    <a href="<?php the_field('portfolio-image9', get_the_ID())?>" class="single_image hidden-mobile">
                        <img src="<?= get_template_directory_uri()?>/img/portfolio-block/gal-small-6.png" alt="">
                    </a>
                </div>
        </div>
        <a href="/404" class="button">Посмотреть больше наших работ</a>

    <!--            Tooklit for gallery-->
    <script>
        jQuery(function($) {
            $(".single_image").fancybox();
        });
    </script>
    <!--*******************************-->

</div>

<!--Our partners block ********************************************************-->
<!--<div class="flexi-carousel-partners__wrapper">-->
<!--       <div class="container">-->
<!--           <ul id="flexi-carousel-partners">-->
<!--               <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/logo-elize.png" /></li>-->
<!--               <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/logo-leofarm.png" /></li>-->
<!--               <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/logo-gorzdrav.png" /></li>-->
<!--               <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/logo-mars.png" /></li>-->
<!--               <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/logo-sletatru.png" /></li>-->

<!--           </ul>-->
<!--       </div>-->
<!--</div>-->
<!--    <script>-->
<!--        jQuery(function($) {-->
<!--            $("#flexi-carousel-partners").flexisel({-->
<!--                visibleItems: 5,-->
<!--                itemsToScroll: 1,-->
<!--                animationSpeed: 200,-->
<!--                infinite: true,-->
<!--                navigationTargetSelector: null,-->
<!--                autoPlay: {-->
<!--                    enable: true,-->
<!--                    interval: 4000,-->
<!--                    pauseOnHover: true-->
<!--                }-->
<!--            });-->
<!--        });-->
<!---->
<!--    </script>-->
    <div class="flexi-carousel-partners__wrapper desk-flexi">
        <div class="container">
            <ul id="flexi-carousel-partners">
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group1.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group2.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group3.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group4.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group5.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/group6.png" /></li>
<!--                <li><img src="--><?//= get_template_directory_uri()?><!--/img/our-partners/bw/group7.png" /></li>-->
            </ul>
        </div>
    </div>
    <div class="flexi-carousel-partners__wrapper mobile-flexi">
        <div class="container">
            <ul id="flexi-carousel-partners-mobile">
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/azimut.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/botsadmgu.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/doshirak.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/eapteka-logo.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/essence.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/inmarko.png" /></li>

                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/ladycollection.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/ligastavok.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logo1xbet.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logounilever.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/Layer1.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/Layer2.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logoburgerking.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logocoraltravel.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logodeutz.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logoimperiapizza.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logomysnitskiryad.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logoscholl.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/logotrialsport.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/maytoni.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/mosgortrance.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/sunlight.png" /></li>
                <li><img src="<?= get_template_directory_uri()?>/img/our-partners/bw/velostrana-logo.png" /></li>
            </ul>
        </div>
    </div>
    <script>
        jQuery(function($) {
            $("#flexi-carousel-partners").flexisel({
                visibleItems: 1,
                itemsToScroll: 1,
                animationSpeed: 200,
                infinite: true,
                navigationTargetSelector: null,
                autoPlay: {
                    enable: true,
                    interval: 4000,
                    pauseOnHover: true
                },
                responsiveBreakpoints: {
                    portrait: {
                        changePoint:480,
                        visibleItems: 1,
                        itemsToScroll: 1
                    },
                    landscape: {
                        changePoint:640,
                        visibleItems: 1,
                        itemsToScroll: 1
                    },
                    tablet: {
                        changePoint:768,
                        visibleItems: 1,
                        itemsToScroll: 1
                    }
                }
            });
            $("#flexi-carousel-partners-mobile").flexisel({
                visibleItems: 2,
                itemsToScroll: 1,
                animationSpeed: 200,
                infinite: true,
                navigationTargetSelector: null,
                autoPlay: {
                    enable: true,
                    interval: 4000,
                    pauseOnHover: true
                },
                responsiveBreakpoints: {
                    portrait: {
                        changePoint:480,
                        visibleItems: 2,
                        itemsToScroll: 1
                    },
                    landscape: {
                        changePoint:640,
                        visibleItems: 2,
                        itemsToScroll: 1
                    },
                    tablet: {
                        changePoint:768,
                        visibleItems: 2,
                        itemsToScroll: 1
                    }
                }
            });
        });
    </script>
<!--**********************************************************************************-->


</main>
<!--********************************************-->
<!--Init wow effects-->
<script>
    new WOW().init();
</script>
<!--*****************-->

<?php
get_footer();
?>