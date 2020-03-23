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
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=<ваш API-ключ>" type="text/javascript"></script>
    <script type="text/javascript">
        // Функция ymaps.ready() будет вызвана, когда
        // загрузятся все компоненты API, а также когда будет готово DOM-дерево.
        ymaps.ready(init);

        function init() {
            var myMap = new ymaps.Map("map", {
                center: [55.76, 37.64],
                zoom: 12,
                controls: [
                    'zoomControl', // Ползунок масштаба
                    'rulerControl', // Линейка
                    'routeButtonControl', // Панель маршрутизации
                    'trafficControl', // Пробки
                    'typeSelector', // Переключатель слоев карты
                    'fullscreenControl', // Полноэкранный режим
                    // Поисковая строка
                    // new ymaps.control.SearchControl({
                    //     options: {
                    //         // вид - поисковая строка
                    //         size: 'large',
                    //         // Включим возможность искать не только топонимы, но и организации.
                    //         provider: 'yandex#search'
                    //     }
                    // })
                ]
            });

            ymaps.route([
                'Москва, улица Крылатские холмы',
                {
                    point: 'Москва, метро Молодежная',
                    // метро "Молодежная" - транзитная точка
                    // (проезжать через эту точку, но не останавливаться в ней).
                    type: 'viaPoint'
                },
                [55.731272, 37.447198], // метро "Кунцевская".
                'Москва, метро Пионерская'
               ]).then(function (route) {
                myMap.geoObjects.add(route);
                // Зададим содержание иконок начальной и конечной точкам маршрута.
                // С помощью метода getWayPoints() получаем массив точек маршрута.
                // Массив транзитных точек маршрута можно получить с помощью метода getViaPoints.
                // var points = route.getWayPoints(),
                //     lastPoint = points.getLength() - 1;
                // // Задаем стиль метки - иконки будут красного цвета, и
                // // их изображения будут растягиваться под контент.
                // points.options.set('preset', 'islands#redStretchyIcon');
                // // Задаем контент меток в начальной и конечной точках.
                // points.get(0).properties.set('iconContent', 'Точка отправления');
                // points.get(lastPoint).properties.set('iconContent', 'Точка прибытия');

                // Проанализируем маршрут по сегментам.
                // Сегмент - участок маршрута, который нужно проехать до следующего
                // изменения направления движения.
                // Для того, чтобы получить сегменты маршрута, сначала необходимо получить
                // отдельно каждый путь маршрута.
                // Весь маршрут делится на два пути:
                // 1) от улицы Крылатские холмы до станции "Кунцевская";
                // 2) от станции "Кунцевская" до "Пионерская".

                // var moveList = 'Трогаемся,</br>',
                //     way,
                //     segments;
                // // Получаем массив путей.
                // for (var i = 0; i < route.getPaths().getLength(); i++) {
                //     way = route.getPaths().get(i);
                //     segments = way.getSegments();
                //     for (var j = 0; j < segments.length; j++) {
                //         var street = segments[j].getStreet();
                //         moveList += ('Едем ' + segments[j].getHumanAction() + (street ? ' на ' + street : '') + ', проезжаем ' + segments[j].getLength() + ' м.,');
                //         moveList += '</br>'
                //     }
                // }
                // moveList += 'Останавливаемся.';
                // // Выводим маршрутный лист.
                // $('#list').append(moveList);
            });




            // Добавление
            //
            //
            //
            // метки
            // https://tech.yandex.ru/maps/doc/jsapi/2.1/ref/reference/Placemark-docpage/
            // var myPlacemark = new ymaps.Placemark([55.76, 37.64], {
            //     // Хинт показывается при наведении мышкой на иконку метки.
            //     hintContent: 'Содержимое всплывающей подсказки',
            //     // Балун откроется при клике по метке.
            //     balloonContent: 'Содержимое балуна'
            // });
            //
            // // После того как метка была создана, добавляем её на карту.
            // myMap.geoObjects.add(myPlacemark);
            myMap.behaviors.disable('scrollZoom');

        }
    </script>


</main>
<?php
get_footer();