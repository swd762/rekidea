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
<!--                        <h1>ознакомьтесь с нашими ценами</h1>-->
<!--                        <section>-->
<!--                            <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>-->
<!--                            <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими-->
<!--                                ценами-->
<!--                                и&nbsp;выгодными предложениями.-->
<!--                            </p>-->
<!--                        </section>-->

                        <div class="shop-products__container-banner"></div>
                        <?php get_template_part('partials/price-menu-mobile.inc'); ?>
                        <a href="/404"><h2>Ролл ап стенды</h2></a>
                        <div class="shop-products__container-filter">
                            <span class="filter-item">Стандартный</span>
                            <span class="filter-item filter-item-active">Утяжеленный</span>
                            <span class="filter-item">В корпусе</span>
                            <span class="filter-item">Каплевидный</span>

                            <span class="filter-item">Двухсторонний</span>
                            <span class="filter-item">Цветной</span>
                            <span class="filter-item">С приводом</span>
                        </div>
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
                        $goodsPrice['product_id'] = $product->get_id();

                        foreach ($product->get_available_variations() as $variation) {
                            foreach ($variation['attributes'] as $key => $value) {
                                $goodsPrice['size'][$value][] = $variation['display_price'];
                                break;
                            }
                            $goodsPrice['var_id'][] = $variation['variation_id'];

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
                                    <h2>
                                        <?php echo $good['title'] ?>
                                    </h2>
                                    <p>
                                        <?php echo $good['description']; ?>
                                    </p>
                                    <a target="_blank" href="<?= get_template_directory_uri()?>/img/rollup-tech.pdf>" class="doc-link">
                                        <img src="<?= get_template_directory_uri() ?>/img/shop-card/pdf.png"
                                             alt="pdf link icon">
                                        Технические требования к макету
                                    </a>
                                </div>

                                <div class="shop-card__thumb-slider">
                                    <div class="samples-slider shop-hot-icon">

                                        <?php foreach ($good['thumbs'] as $thumbs) { ?>
                                            <div class="slide">
                                                <a href="#"><img src="<?= wp_get_attachment_image_url($thumbs, 'full') ?>"
                                                                 alt="shop thumbnail"></a>
                                            </div>
                                        <?php } ?>

                                    </div>
<!--                                    <div class="thumbs-slider">-->
<!--                                        --><?php //foreach ($good['thumbs'] as $thumbs) { ?>
<!--                                            <div class="slide">-->
<!--                                                <img src="--><?//= wp_get_attachment_image_url($thumbs, 'full') ?><!--"-->
<!--                                                     alt="shop thumbnail">-->
<!--                                            </div>-->
<!--                                        --><?php //} ?>
<!--                                    </div>-->
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
                                                <td><a href="#"
                                                       onclick="buy(<?= $index ?>,'<?= $size ?>')"><?= $size ?></a></td>
                                                <td><a href="#"
                                                       onclick="buy(<?= $index ?>,'<?= $size ?>')"><?= $price[0] ?></a>
                                                    <a class="hot-deal" href="#"></a>
                                                </td>
                                                <td><a href="#" onclick="buy(<?= $index ?>,'<?= $size ?>',1)
                                                            "><?= $price[1] ?></a></td>
                                            </tr>
                                        <?php } ?>
                                    </table>

                                    <a href="#" class="buy-btn" onclick="buy(<?= $index ?>)">купить</a>

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

                        //                        slider for product card

                        jQuery(function ($) {
                            $('.samples-slider').slick({
                                slidesToShow: 1,
                                slidesToScroll: 1,
                                arrows: true,
                                dots: false,
                                prevArrow: '<button class="arrow-prev"></button>',
                                nextArrow: '<button class="arrow-next"></button>',
                                // asNavFor: '.thumbs-slider',
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
        <form class="shop-buy__modal-content" action="">
            <h2 class="title"></h2>
            <p>Выберите размер</p>
            <select name="size" id="selectSize" onchange="rebuildGoodsModal()">
            </select>
            <section class="shop-qty">
                <span>Количество:</span>
                <input type="text" name="quantity" value="1" id="qty" onchange="rebuildGoodsModal()">
            </section>
            <section class="shop-options">
                <span>С печатью</span>
                <label>
                    <input type="checkbox" name="isPrint" id="isPrint" onchange="rebuildGoodsModal()">
                </label>
            </section>
            <section class="shop-price">
                <span>Итого:</span>
                <span id="summary">0</span>
            </section>
            <section class="shop-params" style="display: none">
                <input type="text" name="product_id" id="product_id" disabled>
                <input type="text" name="variant_id" id="variant_id" disabled>
            </section>
            <section class="shop-submit">
                <input type="submit" value="Купить" class="shop_add_to_cart_button">
            </section>

        </form>
        <div class="close-btn" onclick="closeShopBuyModal()"><span></span><span></span></div>
    </div>
    <!--***-->

    <script>
        var goods = <?= json_encode($goods)?>;
        var globalIndex = 0;

        function buy(index, size = null, isPrint = 0) {

            let modal = document.querySelector('.shop-buy__modal');
            // let modalContent = document.querySelector('.shop-buy__modal-content');
            modal.classList.add('active-flex');
            fadeMax.classList.add('active');


            let title = document.querySelector('.title');
            title.innerText = goods[index]['title'];

            let select = document.querySelector('#selectSize');

            let isPrintValue = document.querySelector('#isPrint');

            for (var key in goods[index]['size']) {
                let selectValue = document.createElement('option');
                if (key === size) selectValue.defaultSelected = true;
                selectValue.innerText = key;
                select.appendChild(selectValue);
            }

            isPrintValue.checked = isPrint === 1;

            globalIndex = index;

            rebuildGoodsModal();
        }

        function rebuildGoodsModal() {

            let size_index = 0;

            let size = document.querySelector('#selectSize').options[document.getElementById("selectSize").options
                .selectedIndex].text;

            let qty = document.querySelector('#qty').value;


            let isPrintValue = document.querySelector('#isPrint').checked ? 1 : 0;


            let summary = document.getElementById('summary');

            let summaryValue = goods[globalIndex]['size'][size][isPrintValue] * qty;

            document.getElementById("product_id").value = goods[globalIndex]['product_id'];

            for (var key in goods[globalIndex]['size']) {
                if (key === size) {
                    break;
                }
                size_index++;
            }

            document.getElementById("variant_id").value = goods[globalIndex]['var_id'][size_index * 2 + isPrintValue];

            summary.innerText = summaryValue;
        }

        jQuery(document).ready(function ($) {

            $('.shop_add_to_cart_button').on('click', function (e) {
                e.preventDefault();
                $thisbutton = $(this),
                    $form = $thisbutton.closest('form'),
                    product_qty = $form.find('input[name=quantity]').val(),
                    product_id = $('#product_id').val(),
                    variation_id = $('#variant_id').val();

                var data = {
                    action: 'ql_woocommerce_ajax_add_to_cart',
                    product_id: product_id,
                    product_sku: '',
                    quantity: product_qty,
                    variation_id: variation_id,
                };

                $.ajax({
                    type: 'post',
                    url: wc_add_to_cart_params.ajax_url,
                    data: data,
                    beforeSend: function (response) {
                        // $thisbutton.removeClass('added').addClass('loading');
                    },
                    complete: function (response) {
                        // $thisbutton.addClass('added').removeClass('loading');
                        closeShopBuyModal();
                    },
                    success: function (response) {
                        // if (response.error & response.product_url) {
                        //
                        //     window.location = response.product_url;
                        //
                        //     return;
                        //
                        // } else {
                        //
                        //     $(document.body).trigger('added_to_cart', [response.fragments, response.cart_hash, $thisbutton]);
                        //
                        // }
                    },
                });
            });
        });


        function closeShopBuyModal() {
            let modal = document.querySelector('.shop-buy__modal');
            let selectContent = document.querySelector('#selectSize');
            modal.classList.remove('active-flex');
            fadeMax.classList.remove('active');
            document.querySelector('body').classList.remove('modal-opened');
            while (selectContent.firstChild) {
                selectContent.removeChild(selectContent.firstChild);
            }
        }

    </script>


<?php
get_footer();
?>