<?php
 get_header();
 ?>
<main xmlns="http://www.w3.org/1999/html">
<!--Breadcrumbs block *******************-->
    <div class="breadcrumbs">
      <div class="container">
<!--         <p>Главная  > </p>-->
          <p><a href="/">Главная</a> > Магнитно - маркерные доски</p>
      </div>
    </div>
<!--*************************************-->

<!--*****Magnetic top banner****************-->
<div class="magnetic-top-banner__wrapper">
    <div class="container" >
        <div class="magnetic-top-banner__header wow zoomIn">
            <h2>скидка — 10% на все магнитно-маркерные доски до 01.04.2020</h2>
        </div>
        <div class="magnetic-top-banner__content">
            <section style="overflow: hidden">
                <h1 class="wow zoomIn" data-wow-delay=".5s">стеклянная<br>магнитно-маркерная доска</h1>
                <div class="magnetic-top-banner__content-text wow zoomIn" data-wow-delay="1.2s">
                    <p>Инновационная магнитно-маркерная доска из закаленного стекла
                        с любым фоном. Преобразите свое рабочее пространство!
                    </p>
                    <p>Сделайте его эффективным и эффектным!</p>
                    <p>Стеклянная магнитно-маркерная доска изготавливается из нескольких
                        слоев: закаленное стекло толщиной 4 мм, декоративный слой с фоновым
                        изображением и металлическая основа.
                    </p>
                    <p>На таком стекле можно и писать маркерами, и использовать магниты.</p>
                </div>
                <div class="flag-banner red wow slideInLeft" data-wow-delay="2.5s">
                    <span class="wow zoomInUp" data-wow-delay="3s">Срок службы маркерной доски практически неограничен</span>
                </div>
                <div class="flag-banner blue wow slideInLeft" data-wow-delay="3.5s">
                     <span class="wow zoomInUp" data-wow-delay="4s">Брендированные доски и магниты с&nbsp;вашим логотипом</span>
                </div>
                <div class="flag-banner red wow slideInLeft" data-wow-delay="4.5s">
                    <span class="wow zoomInUp" data-wow-delay="5s">На доске не остаются разводы и пятна</span>
                </div>
                <div class="flag-banner blue wow slideInLeft" data-wow-delay="5.5s">
                    <span class="wow zoomInUp" data-wow-delay="6s"><span>Доставка и монтаж.</span> <span>Срок изготовления до 5 рабочих дней</span> </span>
                </div>
            </section>
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/top-banner-logo.jpg" alt="" class="magnetic-banner-logo wow zoomIn" data-wow-delay="1.7s">
        </div>
    </div>
</div>
<!--********************************************************************************************************************-->

<!--************************************-craft boards block *************************************************************-->
    <div class="craft-boards-wrapper">
        <div class="slide1">
            <div class="samples-slider">
                <div class="slide">
                    <img src="<?= get_template_directory_uri()?>/img/magnetic-page/craft-left-1.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="<?= get_template_directory_uri()?>/img/magnetic-page/craft-left-2.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="content">
            <h3>изготовим брендированные доски и&nbsp;магниты с&nbsp;вашим логотипом
            </h3>
            <p>
                Уникальная технология позволяет персонализировать маркерную
                доску и&nbsp;магниты, нанеся под стекло изображение, логотип, фоновый рисунок, разлиновку
                или отдельные элементы корпоративного стиля.
            </p>
            <a href="#" class="laser-btn-order">Заказать</a>
        </div>
        <div class="slide2">
            <div class="samples-slider">
                <div class="slide">
                    <img src="<?= get_template_directory_uri()?>/img/magnetic-page/craft-left-2.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="<?= get_template_directory_uri()?>/img/magnetic-page/craft-left-1.jpg" alt="">
                </div>
            </div>
        </div>

    </div>

    <script>
        jQuery(function($) {
            $('.samples-slider').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                dots: false,
                autoplay: true,
                autoplaySpeed: 2000
                // centerMode: true,
                // adaptiveHeight: true,
                // focusOnSelect: true
            });
        });
    </script>




<!--<div class="craft-boards__wrapper">-->
<!--    <div class="craft-boards__overlay wow fadeInLeft">-->
<!--        <div class="container">-->
<!--            <div class="craft-boards__content">-->
<!--                    <h3 class="wow zoomIn" data-wow-delay="0.5s"  >изготовим брендированные доски и&nbsp;магниты с&nbsp;вашим логотипом-->
<!--                    </h3>-->
<!--                    <p class="wow zoomIn" data-wow-delay="0.5s" >-->
<!--                        Уникальная технология позволяет персонализировать маркерную-->
<!--                        доску и&nbsp;магниты, нанеся под стекло изображение, логотип, фоновый рисунок, разлиновку-->
<!--                        или отдельные элементы корпоративного стиля.-->
<!--                    </p>-->
<!--                    <a href="#" class="laser-btn-order wow zoomIn" data-wow-delay="0.5s" >Заказать</a>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="craft-boards__content-mobile">-->
<!--        <h3 class="">изготовим брендированные доски и&nbsp;магниты с&nbsp;вашим логотипом-->
<!--        </h3>-->
<!--        <p class="">-->
<!--            Уникальная технология позволяет персонализировать маркерную-->
<!--            доску и&nbsp;магниты, нанеся под стекло изображение, логотип, фоновый рисунок, разлиновку-->
<!--            или отдельные элементы корпоративного стиля.-->
<!--        </p>-->
<!--        <a href="#" class="laser-btn-order wow zoomIn">Заказать</a>-->
<!---->
<!--        <img src="--><?//= get_template_directory_uri()?><!--/img/magnetic-page/tabl.jpg" alt="" class="">-->
<!--    </div>-->
<!--</div>-->
<!--********************************************************************************************************************-->

<!--Complex-magnetic block *******************************************************************************************  -->
<div class="complex-magnetic__wrapper clearfix">
    <div class="container">
        <div class="complex-magnetic__content">
            <h3 class="wow zoomIn" data-wow-offset="0">магниты стандартные
                и&nbsp;сложной формы</h3>
            <div class="circle-left"></div>
            <div class="circle-right"></div>
            <section  class="wow zoomIn" data-wow-offset="0" data-wow-delay="0.5s">
                <p>
                    Магнитно-маркерная доска выглядит очень красиво,
                    все наши магниты установлены в специальный корпус.
                </p>
                <p>
                    Вы можете выбрать любой цвет магнита, забрендировать магнит
                    вашим логотипом или любым другим изображением.
                </p>
                <p>
                    Магнит может быть круглым, квадратным и сложной формы.
                </p>
                <p>
                    Мы можем изготовить эксклюзивный дизайн в форме вашего логотипа.
                </p>
                <p style="margin-top: 20px">
                    Наша магнитно-маркерная доска это яркий элемент вашего офисного стиля и рабочего места!
                </p>
            </section>
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/magnit1.png" alt="" data-wow-offset="0" class="mag1 wow zoomIn" data-wow-delay="1.5s" >
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/magnit2.png" alt="" data-wow-offset="100" class="mag2 wow zoomIn" data-wow-delay="2s">
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/magnit3.png" alt="" data-wow-offset="100" class="mag3 wow zoomIn" data-wow-delay="1s">
        </div>
        <div class="complex-magnetic__content-mobile">
            <h3 class="wow zoomIn">магниты стандартные
                и&nbsp;сложной формы</h3>
            <section   class="">
            <p>
                Магнитно-маркерная доска выглядит очень красиво,
                все наши магниты установлены в специальный корпус.
            </p>
            <p>
                Вы можете выбрать любой цвет магнита, забрендировать магнит
                вашим логотипом или любым другим изображением.
            </p>
             <p>
                Магнит может быть круглым, квадратным и сложной формы.
             </p>
             <p>
                Мы можем изготовить эксклюзивный дизайн в форме вашего логотипа.
             </p>
             <p style="margin-top: 20px">
                Наша магнитно-маркерная доска это яркий элемент вашего офисного стиля и рабочего места!
            </p>
            </section>
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/magnit5.png" alt="" class="" style="margin-top: 18px" >

        </div>
    </div>
</div>
<!--*********************Special price block******************************************************************************************-->
    <div class="special-price-block">
        <div class="container special-price-container">
            <h3 class="wow zoomIn"><span>мы предлагаем специальные цены</span> <span>на&nbsp;стеклянные магнитно-маркерные доски</span></h3>
            <div class="special-price-content wow zoomIn">
                <table class="special-price-table">
                    <tr>
                        <td>ШИРИНА, мм</td>
                        <td>ВЫСОТА, мм</td>
                        <td><span>Скидка 10%</span></td>
                        <td>СТОИМОСТЬ</td>
                    </tr>
                    <tr>
                        <td>600</td>
                        <td>900</td>
                        <td>6700 р.</td>
                        <td>6030 р.</td>
                    </tr>
                    <tr>
                        <td>900</td>
                        <td>1200</td>
                        <td>9800 р.</td>
                        <td>8820 р.</td>
                    </tr>
                    <tr>
                        <td>1000</td>
                        <td>1500</td>
                        <td>16 400 р.</td>
                        <td>14 760 р.</td>
                    </tr>
                    <tr>
                        <td>1000</td>
                        <td>2000</td>
                        <td>21 500 р.</td>
                        <td>19 350 р.</td>
                    </tr>
                    <tr>
                        <td>1200</td>
                        <td>1800</td>
                        <td>23 000 р.</td>
                        <td>20 700 р.</td>
                    </tr>
                    <tr>
                        <td>1200</td>
                        <td>2000</td>
                        <td>25 000 р.</td>
                        <td>22 500 р.</td>
                    </tr>
                    <tr>
                        <td>1200</td>
                        <td>2400</td>
                        <td>28 000 р.</td>
                        <td>25 200 р.</td>
                    </tr>
                </table>
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
                <div class="special-price-order-btn">
                    <a href="#" class="laser-btn-order">Заказать</a>
                </div>
                <div class="special-price-desc wow zoomIn"  data-wow-delay=".5s">
                    <img src="<?= get_template_directory_uri()?>/img/special-price/desc.png">
                    <div class="special-price-ball wow zoomIn" data-wow-delay="1s">
                        <img src="<?= get_template_directory_uri()?>/img/special-price/red-ball.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--    ***************************************************************************************************************-->



<div class="colors-block">
    <div class="container">
        <h3  class="">ВЫ МОЖЕТЕ ВЫБРАТЬ ЛЮБОЙ цвет магнитно-маркерной доски из каталога</h3>
        <h4  class="">Вы можете выбрать цвет своей магнитно-маркерной доски, в том числе с нанесением логотипа и любого изображения.</h4>

        <div class="colors-show-btn">
            <a href="#">Посмотреть цвета каталога</a>
        </div>

        <div class="colors-table-content">
            <div>
                <div class="color-010"><span>#010</span></div>
                <div class="color-034 white"><span>#034</span></div>
                <div class="color-050 white"><span>#050</span></div>
                <div class="color-056 white"><span>#056</span></div>
                <div class="color-800 white"><span>#800</span></div>
            </div>
            <div>
                <div class="color-020"><span>#020</span></div>
                <div class="color-036 white"><span>#036</span></div>
                <div class="color-065 white"><span>#065</span></div>
                <div class="color-066 white"><span>#066</span></div>
                <div class="color-083 white"><span>#083</span></div>
            </div>
            <div>
                <div class="color-019"><span>#019</span></div>
                <div class="color-035 white"><span>#035</span></div>
                <div class="color-049 white"><span>#049</span></div>
                <div class="color-054 white"><span>#054</span></div>
                <div class="color-081 white"><span>#081</span></div>
            </div>
            <div>
                <div class="color-021"><span>#021</span></div>
                <div class="color-404 white"><span>#404</span></div>
                <div class="color-086 white"><span>#086</span></div>
                <div class="color-055"><span>#055</span></div>
                <div class="color-082"><span>#082</span></div>
            </div>
            <div>
                <div class="color-022"><span>#022</span></div>
                <div class="color-040 white"><span>#040</span></div>
                <div class="color-067 white"><span>#067</span></div>
                <div class="color-060 white"><span>#060</span></div>
                <div class="color-023"><span>#023</span></div>
            </div>
            <div>
                <div class="color-025"><span>#025</span></div>
                <div class="color-043 white"><span>#043</span></div>
                <div class="color-057 white"><span>#057</span></div>
                <div class="color-613 white"><span>#613</span></div>
                <div class="color-072"><span>#072</span></div>
            </div>
            <div>
                <div class="color-312 white"><span>#312</span></div>
                <div class="color-042 white"><span>#042</span></div>
                <div class="color-051 white"><span>#051</span></div>
                <div class="color-061 white"><span>#061</span></div>
                <div class="color-074 white"><span>#074</span></div>
            </div>
            <div>
                <div class="color-030 white"><span>#030</span></div>
                <div class="color-041 white"><span>#041</span></div>
                <div class="color-098 white"><span>#098</span></div>
                <div class="color-068 white"><span>#068</span></div>
                <div class="color-076 white"><span>#076</span></div>
            </div>
            <div>
                <div class="color-031 white"><span>#031</span></div>
                <div class="color-045 white"><span>#045</span></div>
                <div class="color-052 white"><span>#052</span></div>
                <div class="color-062 white"><span>#062</span></div>
                <div class="color-071 white"><span>#071</span></div>
            </div>
            <div>
                <div class="color-032 white"><span>#032</span></div>
                <div class="color-562 white"><span>#562</span></div>
                <div class="color-084 white"><span>#084</span></div>
                <div class="color-064 white"><span>#064</span></div>
                <div class="color-073 white"><span>#073</span></div>
            </div>
            <div>
                <div class="color-047 white"><span>#047</span></div>
                <div class="color-518 white"><span>#518</span></div>
                <div class="color-053 white"><span>#053</span></div>
                <div class="color-063 white"><span>#063</span></div>
                <div class="color-070 white"><span>#070</span></div>
            </div>
            <div>
                <div class="color-090 white"><span>#090</span></div>
                <div class="color-091 white"><span>#091</span></div>
                <div class="color-092 white"><span>#092</span></div>
            </div>
        </div>
        <div class="colors-order-btn">
            <a href="#" class="laser-btn-order">Заказать</a>
        </div>
    </div>
</div>
<!--*********************************************************************************************************************-->

<!--magnetic video player-->
<div class="magnetic-video-wrapper">
        <h3>
            посмотрите видео, как выглядит доска
        </h3>
    <p>В живую наши доски смотрять еще лучше и эффектней!</p>
    <div class="video-container">
        <iframe width="1280" height="720" src="https://www.youtube.com/embed/uyA_qSVoud4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>


</div>
<!--***-->






<!--*********************************Big size boards********************************************************************--->
<div class="big-size-boards__wrapper clearfix">
    <div class="container clearfix">
        <div class="big-size-boards__content">
            <h3>доски нестандартных размеров</h3>
            <p>Стеклянные маркерные доски нестандартных размеров.</p>
            <p>Для нестандартных помещений, когда, например, требуется вписать доску
                в&nbsp;нишу стены или закрыть всю стену одной доской.</p>
            <div class="boards-characters">
                <img src="<?= get_template_directory_uri()?>/img/magnetic-page/symbol-char.png" alt="">
                <p>Максимальная площадь одного изделия - 3 кв. м. <br>
                Длина/Ширина одной доски не более 2,8 м</p>
            </div>
        </div>
        <div class="big-size-boards__content-mobile">
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/big-size-boards-1.jpg" alt="" class="logo">
            <h3 class=" wow zoomIn">доски нестандартных размеров</h3>
            <section class=" wow zoomIn">
            <p>Стеклянные маркерные доски нестандартных размеров.</p>
            <p>Для нестандартных помещений, когда, например, требуется вписать доску
                в&nbsp;нишу стены или закрыть всю стену одной доской.</p>
            </section>
            <div class="boards-characters">
                <img src="<?= get_template_directory_uri()?>/img/magnetic-page/symbol-char.png" alt="">
                <p>Максимальная площадь одного изделия - 3 кв. м. <br>
                    Длина/Ширина одной доски не более 2,8 м</p>
            </div>
        </div>
    </div>
</div>
<!--*********************************************************************************************************************-->



<div class="boards-clamp__wrapper">
    <div class="container">
        <div class="boards-clamp__content">
            <p>В наших досках используются</p>
            <p>дистанционные держатели</p>
            <p>ХРОМ/ЗОЛОТО</p>
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/boards-clamp-2.jpg" alt="">
        </div>
        <div class="boards-clamp__content-mobile">
            <p>В наших досках используются</p>
            <p>дистанционные держатели</p>
            <p>ХРОМ/ЗОЛОТО</p>
            <img src="<?= get_template_directory_uri()?>/img/magnetic-page/boards-clamp-1.png" alt="">
        </div>
    </div>
</div>
<!--  ******************  -->




<!--**********************************************************************************************************************-->

<!--*********************************************************************************************************************-->


 <!--** montage block ***************************************-->
 <div class="montage-block__wrapper">
  <div class="container">
   <div class="montage-block__content">
    <h3>МЫ ЦЕНИМ<br> ВАШЕ ВРЕМЯ</h3>
    <p>Осуществим монтаж и доставку<br>
     даже в нерабочее время по всей Москве и области</p>
   </div>
  </div>
 </div>
 <!--*******************************************************-->
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
 <!--Services block-->
 <div class="services-block-wrapper " style="background: none;">
  <div class="container">
   <div class="services-block magnetic-boards-services">
    <h2>мы предлагаем комплекс услуг</h2>
    <h3>Накопленный опыт позволяет нам производить рекламную продукцию любой сложности.<br> Вы всегда можете
     рассчитывать на комфортные и выгодные условия работы.<br> Работая с нами вы получаете
     не поставщика, а партнера!</h3>
    <img src="<?= get_template_directory_uri()?>/img/services/devica-yslugi.png" alt="" class="logo-copy wow slideInUp" data-wow-delay="1s">
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
 <!--************ laser partners block**********************-->
 <div class="laser-partners-block-wrapper" style="background: #f7f7f7;">
  <div class="container">
   <h3>Нам доверяют крупные компании<br>
    Мы предлагаем высокое качество для всех</h3>
  </div>
 </div>
 <!--*******************************************************-->
 <!--slide carousel**************-->
 <div class="flexi-carousel-partners-laser__wrapper desk-flexi">
  <div class="container">
   <ul id="flexi-carousel-partners-laser">
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-1.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-2.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-3.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-4.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-5.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-6.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/group-7.png" /></li>
   </ul>
  </div>
 </div>
 <div class="flexi-carousel-partners-laser__wrapper mobile-flexi">
  <div class="container">
   <ul id="flexi-carousel-partners-laser-mobile">
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/83.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/84.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/85.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/86.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/87.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/88.png" /></li>

    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/bethoven.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer89.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer90.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer91.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer92.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer93.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer94.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer95.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer96.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer97.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer98.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer99.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer100.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer101.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer102.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer103.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer104.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer105.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer106.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer107.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer108.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer109.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer110.png" /></li>
    <li><img src="<?= get_template_directory_uri()?>/img/our-partners/color/Layer111.png" /></li>
   </ul>
  </div>
 </div>
 <script>
  jQuery(function($) {
   $("#flexi-carousel-partners-laser").flexisel({
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
   $("#flexi-carousel-partners-laser-mobile").flexisel({
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
 <!--******************************-->

 <!-- laser Portfolio block-->
 <div class="laser-portfolio-block-wrapper">
  <div class="laser-portfolio-block__header container">
   <h2>наше портфолио</h2>
   <p>Мы работаем с брендами разного уровня. Это позволяет нам находить индивидуальный подход к каждому клиенту.
    Наша компания не просто производит рекламную продукцию: нашими идеями и разработками мы
    успешно и эффективно решаем ваши задачи и проблемы. Ознакомьтесь с нашими проектами!</p>
  </div>
  <div class="laser-portfolio-block__content">
      <div class="content-big">

          <a href="<?= get_template_directory_uri()?>/img/portfolio-magnetic/2.jpg" class="single_image">
              <img src="<?= get_template_directory_uri()?>/img/portfolio-magnetic/2-1.png" alt="">
          </a>
          <a href="<?= get_template_directory_uri()?>/img/portfolio-magnetic/3.jpg" class="single_image">
              <img src="<?= get_template_directory_uri()?>/img/portfolio-magnetic/3-1.png" alt="">
          </a>
          <a href="<?= get_template_directory_uri()?>/img/portfolio-magnetic/5.jpg" class="single_image hidden-mobile">
              <img src="<?= get_template_directory_uri()?>/img/portfolio-magnetic/5-1.jpg" alt="">
          </a>
          <a href="<?= get_template_directory_uri()?>/img/portfolio-magnetic/4.jpg" class="single_image hidden-tablet">
              <img src="<?= get_template_directory_uri()?>/img/portfolio-magnetic/4-1.jpg" alt="">
          </a>
          <a href="<?= get_template_directory_uri()?>/img/portfolio-magnetic/1.jpg" class="single_image hidden-tablet">
              <img src="<?= get_template_directory_uri()?>/img/portfolio-magnetic/1-1.png" alt="">
          </a>
      </div>
  </div>
  <a href="/404" class="button">Посмотреть наши работы</a>
 </div>
 <!--            Tooklit for gallery-->
 <script>
  jQuery(function($) {
   $(".single_image").fancybox();
  });
 </script>
 <!--*******************************-->

 <!--*********************************************************-->
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
  <img src="<?= get_template_directory_uri()?>/img/404/operator.png" alt="" class="question-operator">
 </div>
 <!--****************************************************-->
 <script>
     wow = new WOW(
         {
             boxClass:     'wow',      // default
             animateClass: 'animated', // default
             offset:       160,          // default
             mobile:       false,       // default
             live:         true        // default
         }
     );
  wow.init();
 </script>
<script>
//colors block
    document.querySelector('.colors-show-btn a').addEventListener('click', function (e) {
      e.preventDefault();
      e.target.classList.toggle('active');
      document.querySelector('.colors-table-content').classList.toggle('active');
    })
</script>
</main>
<?php get_footer();

