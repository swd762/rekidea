<?php
get_header();
?>
    <main>
        <!--Breadcrumbs block *******************-->
        <div class="breadcrumbs">
            <div class="container">
                <p><a href="/">Главная</a> > <a href="/price">Цены</a> > <a href="">Мобильные стенды</a> > Roll Up</p>
            </div>
        </div>
        <!--*************************************-->

        <!--*************************************-->
        <div class="price__wrapper mobile-stands-price-page container clearfix">
            <div class="wide-printing__nav">
                <?php get_template_part('partials/price-menu.inc'); ?>
            </div>
            <div class="shop__content shop-products__container">
                <div class="row">
                    <div class="price__content-title">
                        <h1>ознакомьтесь с нашими ценами</h1>
                        <section>
                            <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                            <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими
                                ценами
                                и&nbsp;выгодными предложениями.</p>
                        </section>
                        <?php get_template_part('partials/price-menu-mobile.inc'); ?>
                        <a href="/404"><h2>Ролл ап стенды</h2></a>
                    </div>
                </div>
                <div class="price-categories mobile-stands-price-categories">
                    <?php

                    $loop = new WP_Query(array(
                        'post_type' => 'product',
                        'posts_per_page' => 20,
                        'orderby' => 'menu_order',
                        'order' => 'ASC',
                    ));


                    while ($loop->have_posts()): $loop->the_post(); ?>

                        <?php
                        $goodsPrice['title'] = $product->get_name();
                        $goodsPrice['thumbs'] = $product->get_gallery_image_ids();
                        $goodsPrice['description'] = $product->get_description();

                        foreach ($product->get_available_variations() as $variation) {
                            foreach ($variation['attributes'] as $key => $value) {
                                $goodsPrice['size'][$value][] = $variation['display_price'];
                                break;
                            }
                        }
                        $goods[] = $goodsPrice;
                        ?>

                    <?php endwhile; ?>

                    <?php

                    $counter = 0;

                    foreach ($goods as $index => $good) {

                        ?>
                        <!--*** template card *** -->
                        <div class="shop-card">
                            <div class="shop-card__thumb-slider">
                                <div class="samples-slider shop-hot-icon">

                                    <?php foreach ($good['thumbs'] as $thumbs) { ?>
                                        <div class="slide">
                                            <a href="#"><img src="<?= wp_get_attachment_image_url($thumbs, 'full') ?>"
                                                             alt="shop thumbnail"></a>
                                        </div>
                                    <?php } ?>

                                </div>
                                <div class="thumbs-slider">
                                    <?php foreach ($good['thumbs'] as $thumbs) { ?>
                                        <div class="slide">
                                            <img src="<?= wp_get_attachment_image_url($thumbs, 'full') ?>"
                                                 alt="shop thumbnail">
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="shop-card__main">
                                <div class="shop-card__main-header">
                                    <h2><?php echo $good['title'] ?>
                                        <!--                                        <span>一 standart</span>-->
                                    </h2>
                                    <p>
                                        <?php echo $good['description']; ?>
                                    </p>
                                    <a href="#" class="doc-link">
                                        <img src="<?= get_template_directory_uri() ?>/img/shop-card/pdf.png"
                                             alt="pdf link icon">
                                        Технические требования к макету
                                    </a>
                                </div>
                                <div class="shop-card__main-content">
                                    <table>
                                        <tr>
                                            <th>Размеры, см</th>
                                            <th>Стоимость Ролл Ап<br>
                                                без печати, руб
                                            </th>
                                            <th>Ролл Ап с печатью<br>
                                                на баннере, руб
                                            </th>
                                        </tr>

                                        <?php foreach ($good['size'] as $size => $price) { ?>

                                            <tr>
                                                <td><a href="#"><?= $size ?></a></td>
                                                <td><a href="#" onclick="buy(<?= $index ?>)"><?= $price[0] ?></a><a
                                                            class="hot-deal"
                                                            href="#"></a>
                                                </td>
                                                <td><a href="#"><?= $price[1] ?></a></td>
                                            </tr>
                                        <?php } ?>
                                    </table>

                                    <a href="#" class="buy-btn">купить</a>

                                    <div class="description-container">
                                        <div class="description-container__nav">
                                            <ul>
                                                <li class="selected">Сроки</li>
                                                <li>Доставка</li>
                                                <li>Оплата</li>
                                            </ul>
                                        </div>
                                        <div class="description-container__content">
                                            <p>- Изготовление Ролл ап стенда занимает от 1 дня.</p>
                                            <p>- Срочное изготовление стенда от 3 часов.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <?php

                    }
                    ?>


                    <script>
                        jQuery(function ($) {


                            $('.samples-slider').slick({
                                slidesToShow: 1,
                                slidesToScroll: 1,
                                arrows: true,
                                dots: false,
                                // autoplay: true,
                                prevArrow: '<button class="arrow-prev"></button>',
                                nextArrow: '<button class="arrow-next"></button>',
                                // asNavFor: '.thumbs-slider',
                                // autoplaySpeed: 2000
                                // centerMode: true,
                                adaptiveHeight: false,
                                // focusOnSelect: true
                            });
                            $('.thumbs-slider').slick({
                                infinite: true,
                                slidesToShow: 3,
                                slidesToScroll: 1,
                                arrows: true,
                                dots: false,
                                autoplay: false,
                                prevArrow: '<button class="arrow-prev"></button>',
                                nextArrow: '<button class="arrow-next"></button>',
                                asNavFor: '.samples-slider',
                                // autoplaySpeed: 2000,
                                centerMode: true,
                                // adaptiveHeight: true,
                                focusOnSelect: true
                            });
                        });

                    </script>

                    <!-- *** -->
                </div>
            </div>
        </div>
        <!--*************************************-->

        <!--consultant block ***********************************-->
        <?php get_template_part('partials/bottom-consultation-block.inc'); ?>
        <!--****************************************************-->
    </main>
    <!--*** hot deal modal-->
    <div class="hot-deal__modal">
        <img src="<?= get_template_directory_uri() ?>/img/fire.svg" alt="hot deal">
        <h2>горячее предложение</h2>
        <h3>обратите внимание на цену!</h3>
        <div class="close-btn" onclick="closeHotDealModal()"><span></span><span></span></div>
    </div>
    <!--***-->

    <!--*** shop buy modal-->
    <div class="shop-buy__modal">
        <div class="shop-buy__modal-content"></div>

        <h2 class="title"></h2>
        <p>выберите размер</p>
        <select name="size" id="selectSize">

        </select>

        <div class="close-btn" onclick="closeShopBuyModal()"><span></span><span></span></div>
    </div>
    <!--***-->
    <script>
        var goods = <?= json_encode($goods)?>;
        console.log(goods[0]);

        function buy(index) {
            let modal = document.querySelector('.shop-buy__modal');
            let modalContent = document.querySelector('.shop-buy__modal-content');
            modal.classList.add('active-flex');
            fadeMax.classList.add('active');
            console.log(goods[index]['title']);

            let title = document.querySelector('.title');
            title.innerText = goods[index]['title'];
            // modalContent.appendChild(title);
            let select = document.querySelector('#selectSize');

            var counter = 0;
            for (var key in goods[index]['size']) {
                let selectValue = document.createElement('option');
                selectValue.innerText = key;
                select.appendChild(selectValue);
                counter++;
            }
            console.log(counter);


        }


        function closeShopBuyModal() {
            let modal = document.querySelector('.shop-buy__modal');
            let modalContent = document.querySelector('.shop-buy__modal-content');
            modal.classList.remove('active-flex');
            fadeMax.classList.remove('active');
            document.querySelector('body').classList.remove('modal-opened');
            // while (modalContent.firstChild) {
            //     modalContent.removeChild(modalContent.firstChild);
            // }
        }

    </script>


<?php
get_footer();
?>