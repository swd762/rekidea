<?php
// Page *Contacts*

get_header();
?>
<main>
    <!--Breadcrumbs block *******************-->
    <div class="breadcrumbs">
        <div class="container">
            <!--        <p>Главная  > Цены</p>-->
            <p><a href="/">Главная</a> > Контакты</p>
        </div>
    </div>
    <!--*************************************-->
    <div class="contacts__wrapper container">
        <div class="contacts__contacts">
            <h1>ООО «РЕКИДЕЯ»</h1>
            <h5>Адрес:</h5>
            <p>107023, г. Москва, ул. Электрозаводская, д. 21, 3 проходная<br><br>

            Тел.: + 7 (495) 369-20-79, + 7 926 583-23-51<br><br>

            E-mail: info@rekidea.ru<br><br>

            Часы работы: Пн-Пт: с 10:00 до 19:00
            </p>
            <p style="padding-left: 112px">Без перерывов и выходных.<sup>*</sup></p>
            <p style="padding-left: 112px;font-size: 12px"><sup style="font-size: 12px">*</sup>Работа в выходные дни обговаривается отдельно.</p>

            <h5>Юридический адрес:</h5>
            <p>107023, г. Москва, ул. Электрозаводская, д. 21,<br>
                эт. 2, пом. LXXVIII, ком. 223</p>

            <p style="margin-top: 25px">ИНН/КПП: 7725366527 / 771801001<br>
            ОГРН: 1177746349219<br>
            Рас. Счет: 40702810010000109683<br>
            Банк: АО "ТИНЬКОФФ БАНК" Г. МОСКВА<br>
            Кор. Счет: 30101810145250000974<br>
            БИК: 044525974</p>

        </div>
        <div class="contacts__feedback">
            <h2>МЫ НА СВЯЗИ</h2>
            <h4>Оставьте свою заявку, и мы свяжемся с Вами</h4>
            <div class="form-wrapper">
               <?= do_shortcode('[contact-form-7 id="349" title="Contacts feedback"]'); ?>
            </div>
        </div>


    </div>
    <div class="map_wrapper" id="map" >





    </div>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=71928d9b-4703-4998-834c-3cbb0db19b06" type="text/javascript"></script>
    <script type="text/javascript">
        // Функция ymaps.ready() будет вызвана, когда
        // загрузятся все компоненты API, а также когда будет готово DOM-дерево.
        ymaps.ready(init);

        function init() {
            var myMap = new ymaps.Map("map", {
                center: [55.784268, 37.706931],
                zoom: 16,
                controls: [
                    'zoomControl', // Ползунок масштаба
                    'rulerControl', // Линейка
                    'routeButtonControl', // Панель маршрутизации
                    'trafficControl', // Пробки
                    'typeSelector', // Переключатель слоев карты
                    'fullscreenControl', // Полноэкранный режим
                ]
            });
            var myPlacemark = new ymaps.Placemark([55.787030, 37.705520],
                {
                    balloonContentBody:'<div style="display: flex;flex-direction: column;align-items: center">3-я проходная<b>Рекидея</b></div>'
                },
                {
                    iconLayout: 'default#image', // обозначаем что будет использоваться пользовательское изображение
                    iconImageHref: '<?= get_template_directory_uri()?>/img/checkpoint-rekidea.svg',  // указываем путь к картинке которая будет служить меткой
                    // iconImageSize: [60, 100], // указываем размер изображения
                    hideIconOnBalloonOpen: false,
                    // iconImageOffset: [-28, -70] // обозначаем сдвиг от левого верхнего угла к точке изображения метки .
                });

            myMap.geoObjects.add(myPlacemark);
            myPlacemark.balloon.open();
            var multiRoute = new ymaps.multiRouter.MultiRoute({
                referencePoints: [
                    'Москва, м. Электрозаводская',
                    [55.787030, 37.705520]
                ],
                params: {
                    // Тип маршрута: на общественном транспорте.
                    routingMode: "pedestrian"
                }
            }, {
                // Автоматически устанавливать границы карты так,
                // чтобы маршрут был виден целиком.
                boundsAutoApply: true,
                wayPointVisible:false,
                routeActiveMarkerVisible: false
            });

// Добавление маршрута на карту.
            myMap.geoObjects.add(multiRoute);
            myMap.behaviors.disable('scrollZoom');
        }
    </script>


</main>
<?php
get_footer();