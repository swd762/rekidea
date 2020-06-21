<?php
/**
 * Template Name: Категория магазина
 */
get_header();
?>

<?php

$loop = new WP_Query(array(
    'post_type' => 'product',
    'posts_per_page' => 20,
    'orderby' => 'menu_order',
    'order' => 'ASC',
));

while ($loop->have_posts()): $loop->the_post();
    ?>


    <?php

    $categories = get_the_terms($post->ID, 'product_cat');
    $goodsPrice = [];


    $goodsPrice['title'] = $product->get_name();
    $goodsPrice['thumbs'] = $product->get_gallery_image_ids();
    $goodsPrice['description'] = $product->get_description();
    $goodsPrice['product_id'] = $product->get_id();
    $goodsPrice['category_id'] = $categories[1]->term_id;
    $import_custom_fields = get_fields();
    $import_media_gallery = acf_photo_gallery('watermark-pics', $post->ID);

//    echo '<pre>';
//    var_dump($goodsPrice);
//    echo '</pre>';


    foreach ($import_media_gallery as $watermarks) {
        $goodsPrice['watermarks'][] = $watermarks['full_image_url'];
    }
    $goodsPrice['offer_icon'] = $import_custom_fields['offer_icon'];
    $goodsPrice['deadline_tab'] = $import_custom_fields['deadlines'];
    $goodsPrice['delivery_tab'] = $import_custom_fields['delivery'];
    $goodsPrice['payment_tab'] = $import_custom_fields['payment'];

    foreach ($product->get_available_variations() as $variation) {
        foreach ($variation['attributes'] as $key => $value) {
            if (isset($goodsPrice['size'][$value])) {
                $goodsPrice['size'][$value]['print'] = $variation['display_regular_price'];
                if ($variation['display_price'] < $variation['display_regular_price']) {
                    $goodsPrice['size'][$value]['print_hot'] = true;
                } else {
                    $goodsPrice['size'][$value]['print_hot'] = false;
                }
            } else {
                $goodsPrice['size'][$value]['wo_print'] = $variation['display_regular_price'];
                if ($variation['display_price'] < $variation['display_regular_price']) {
                    $goodsPrice['size'][$value]['wo_print_hot'] = true;
                } else {
                    $goodsPrice['size'][$value]['w0_print_hot'] = false;
                }
            }
            break;
        }
        $goodsPrice['var_id'][] = $variation['variation_id'];

    }

//    echo '<pre>';
//    var_dump($goodsPrice['hot']);
//    var_dump($product->get_available_variations());
//    var_dump($goodsPrice['size']);
//    echo '</pre>';


    $goods[] = $goodsPrice;


    wp_reset_postdata();

    ?>

<?php endwhile; ?>

    <main>
        <!--        <a href="javascript:;" data-fancybox data-src="#store-added-to-cart-modal">1111</a>-->
        <!--Breadcrumbs block *******************-->
        <div class="breadcrumbs">
            <div class="container">
                <p><a href="/">Главная</a> > <a href="/price">Цены</a> > <a
                            href="/price/mobile-stands-price-categories/">Мобильные стенды</a> > Roll Up</p>
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
                        <div class="shop-products__container-banner"></div>
                        <?php get_template_part('partials/price-menu-mobile.inc'); ?>
                        <a href="/404"><h2>Ролл ап стенды</h2></a>
                    </div>
                </div>
                <div class="price-categories mobile-stands-price-categories">
                    <div class="shop-products__container-filter">
                        <?php
                        $list_categories = get_categories([
                            'taxonomy' => 'product_cat',
                            'child_of' => '26',
                            'orderby' => 'term_id',
                            'order' => 'ASC'
                        ]);
                        $flag = 0;
                        foreach ($list_categories as $index => $cat) {
                            ?>
                            <span data-anchor="<?= $cat->term_id ?>"
                                  class="filter-item <?= ($flag == 0) ? "filter-item-active" : '' ?> "><?=
                                $cat->name ?>
                            </span>
                            <?php
                            $flag = 1;
                        }
                        ?>

                    </div>
                    <!-- tab filter script -->
                    <script>
                        function toAnchor_filter() {
                            let items = document.querySelectorAll('.shop-products__container-filter .filter-item');
                            let filterBlock = document.querySelector('.shop-products__container-filter');
                            for (let i = 0; i < items.length; i++) {
                                items[i].addEventListener('click', function () {
                                    filterBlock.getElementsByClassName('filter-item-active')[0].classList.remove
                                    ('filter-item-active');
                                    let anchor = this.dataset.anchor;
                                    this.classList.add('filter-item-active');
                                    window.location = "#" + anchor;
                                });
                            }
                        }

                        toAnchor_filter();
                    </script>
                    <!--  ***  -->

                    <?php
                    $counter = 0;
                    usort($goods, function ($a, $b) {
                        if (($a['category_id'] === $b['category_id'])) return 0;
                        return ($a['category_id'] < $b['category_id']) ? -1 : 1;
                    });

                    $goods_anchor = 0;

                    foreach ($goods as $index => $good) {
                        ?>
                        <!--*** template card *** -->
                        <div class="shop-card">
                            <a href="#" class="ancored">
                                <?php
                                if ($goods_anchor != $good['category_id']) {
                                    $goods_anchor = $good['category_id'];
                                    ?>

                                    <i id="<?= $goods_anchor ?>"></i>
                                <?php } ?>
                                <i id="<?= 'product-id-' . $good['product_id'] ?>"></i>
                            </a>
                            <?php
                            $offer_icon = '';
                            switch (strtolower($good['offer_icon'])) {
                                case 'hot':
                                    $offer_icon = "shop-hot-icon";
                                    break;
                                case 'hit':
                                    $offer_icon = "shop-hit-icon";
                                    break;
                                default:
                            }
                            ?>
                            <div class="shop-card__thumb-slider">
                                <?php if ($offer_icon != '') {
                                    echo '<span class="';
                                    echo $offer_icon;
                                    echo '" onclick="open_hot();"><img src="';
                                    echo get_template_directory_uri();
                                    echo '/img/' . $offer_icon . '.png"></span>';
                                }
                                ?>
                                <script>

                                        function open_hot() {
                                            jQuery.fancybox.open({
                                                src: '#hot-modal',
                                                type: 'inline',
                                                touch: false,
                                                modal: false,
                                                // closeBtn: true
                                            });
                                        }



                                </script>

                                <div class="owl-carousel owl-theme slider-main owl-main<?= '-' . $index ?> ">
                                    <?php foreach ($good['thumbs'] as $pics_index => $thumbs) { ?>
                                        <div class="item">
                                            <a class="fancybox" href="<?= isset($good['watermarks'][$pics_index]) ?
                                                $good['watermarks'][$pics_index] : get_template_directory_uri() . '
                                                /img/404/operator.png'; ?>">
                                                <img src="<?= wp_get_attachment_image_url($thumbs, 'full') ?>"
                                                     alt="shop thumbnail" style="width: 220px"">
                                            </a>
                                        </div>
                                    <?php } ?>
                                </div>

                                <div class="owl-carousel owl-theme slider-thumbs owl-thumbs<?= '-' . $index ?>">
                                    <?php foreach ($good['thumbs'] as $thumbs) { ?>
                                        <div class="item">
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
                                    <a target="_blank"
                                       href="<?= get_template_directory_uri() ?>/img/rollup-tech.pdf"
                                       class="doc-link">
                                        <img src="<?= get_template_directory_uri() ?>/img/shop-card/pdf.png"
                                             alt="pdf link icon">
                                        Технические требования к макету
                                    </a>
                                </div>

                                <div class="shop-card__thumb-slider">
                                    <div class="owl-carousel owl-theme slider-main owl-main<?= '-' . $index ?> <?= $offer_icon ?>">
                                        <?php foreach ($good['thumbs'] as $pics_index => $thumbs) { ?>
                                            <div class="item">
                                                <a class="fancybox" href="<?= isset($good['watermarks'][$pics_index]) ?
                                                    $good['watermarks'][$pics_index] : get_template_directory_uri() . '
                                                /img/404/operator.png'; ?>">
                                                    <img src="<?= wp_get_attachment_image_url($thumbs, 'full') ?>"
                                                         alt="shop thumbnail" style="width: 220px"">
                                                </a>
                                            </div>
                                        <?php } ?>
                                    </div>
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
                                                <td><span
                                                            onclick="buy(<?= $index ?>,'<?= $size ?>')"><?= $size ?></span>
                                                </td>
                                                <td><span
                                                            onclick="buy(<?= $index ?>,'<?= $size ?>')"><?= $price['wo_print'] ?></span>
                                                    <?php
                                                    echo ($price['wo_print_hot']) ? '<span
                                                     class="hot-deal"></span>' : '';
                                                    ?>

                                                </td>
                                                <td><span onclick="buy(<?= $index ?>,'<?= $size ?>','print')
                                                            "><?= $price['print'] ?></span>
                                                    <?php
                                                    echo ($price['print_hot']) ? '<span
                                                     class="hot-deal"></span>' : '';
                                                    ?>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    </table>

                                    <span class="buy-btn" onclick="buy(<?= $index ?>)">купить</span>

                                    <div class="description-container">
                                        <div class="description-container__nav">
                                            <ul>
                                                <li data-index="0" class="selected">Сроки</li>
                                                <li data-index="1">Доставка</li>
                                                <li data-index="2">Оплата</li>
                                            </ul>
                                        </div>
                                        <div class="description-container__content active-tab">
                                            <p><?= $good['deadline_tab']; ?></p>
                                        </div>
                                        <div class="description-container__content">
                                            <p><?= $good['delivery_tab']; ?></p>
                                        </div>
                                        <div class="description-container__content">
                                            <p><?= $good['payment_tab']; ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            jQuery(document).ready(function ($) {

                                var sync1 = $(".owl-main<?='-' . $index ?>");
                                var sync2 = $(".owl-thumbs<?='-' . $index ?>");
                                var slidesPerPage = 3; //globaly define number of elements per page
                                var syncedSecondary = true;

                                sync1.owlCarousel({
                                    items: 1,
                                    slideSpeed: 2000,
                                    nav: true,
                                    autoplay: false,
                                    dots: true,
                                    loop: true,
                                    responsiveRefreshRate: 200,
                                    navText: ['<svg width="100%" height="100%" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>', '<svg width="100%" height="100%" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>'],
                                }).on('changed.owl.carousel', syncPosition);

                                sync2.on('initialized.owl.carousel', function () {
                                    sync2.find(".owl-item").eq(0).addClass("current");
                                }).owlCarousel({
                                    items: slidesPerPage,
                                    dots: false,
                                    nav: false,
                                    smartSpeed: 200,
                                    slideSpeed: 500,
                                    // mouseDrag: false,
                                    slideBy: 1, //alternatively you can slide by 1, this way the active slide
                                    // will stick to the first item in the second carousel
                                    responsiveRefreshRate: 100
                                }).on('changed.owl.carousel', syncPosition2);


                                function syncPosition(el) {
                                    //if you set loop to false, you have to restore this next line
                                    //var current = el.item.index;

                                    //if you disable loop you have to comment this block
                                    var count = el.item.count - 1;
                                    var current = Math.round(el.item.index - (el.item.count / 2) - .5);

                                    if (current < 0) {
                                        current = count;
                                    }
                                    if (current > count) {
                                        current = 0;
                                    }

                                    //end block

                                    sync2.find(".owl-item").removeClass("current").eq(current).addClass("current");

                                    var onscreen = sync2.find('.owl-item.active').length - 1;
                                    var start = sync2.find('.owl-item.active').first().index();
                                    var end = sync2.find('.owl-item.active').last().index();

                                    if (current > end) {
                                        sync2.data('owl.carousel').to(current, 100, true);
                                    }
                                    if (current < start) {
                                        sync2.data('owl.carousel').to(current - onscreen, 100, true);
                                    }
                                }

                                function syncPosition2(el) {
                                    if (syncedSecondary) {
                                        var number = el.item.index;
                                        sync1.data('owl.carousel').to(number, 100, true);
                                    }
                                }

                                sync2.on("click", ".owl-item", function (e) {
                                    e.preventDefault();
                                    var number = $(this).index();
                                    sync1.data('owl.carousel').to(number, 300, true);
                                });
                            })
                        </script>
                        <?php
//                        break;
                    } ?>


                    <script>
                        document.querySelectorAll('.description-container__nav li').forEach(function (e) {
                            e.addEventListener('click', function (element) {
                                let container = e.closest('.description-container');
                                container.querySelector('.description-container__nav li.selected').classList.remove('selected');
                                e.classList.add('selected');
                                container.querySelector('.description-container__content.active-tab').classList.remove('active-tab');
                                container.querySelectorAll('.description-container__content')[e.dataset.index].classList.add('active-tab')
                            });
                        });
                        //     slider for product card

                        jQuery(function ($) {

                            $(document).ready(function () {
                                $(".fancybox").fancybox();
                            });
                            //
                            //
                            // $('.samples-slider').slick({
                            //     slidesToShow: 1,
                            //     slidesToScroll: 1,
                            //     arrows: true,
                            //     dots: false,
                            //     prevArrow: '<button class="arrow-prev"></button>',
                            //     nextArrow: '<button class="arrow-next"></button>',
                            //     asNavFor: '.thumbs-slider',
                            //     // centerMode: true,
                            //     adaptiveHeight: false
                            //     // focusOnSelect: true
                            // });
                            // $('.thumbs-slider').slick({
                            //     // infinite: true,
                            //     slidesToShow: 3,
                            //     // slidesToScroll: 1,
                            //     arrows: false,
                            //     dots: false,
                            //     autoplay: false,
                            //     // prevArrow: '<button class="arrow-prev"></button>',
                            //     // nextArrow: '<button class="arrow-next"></button>',
                            //     asNavFor: '.samples-slider',
                            //     // autoplaySpeed: 2000,
                            //     //  centerMode: true,
                            //     // adaptiveHeight: true,
                            //     focusOnSelect: true,
                            //     swipeToSlide: true
                            // });
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
    <div class="hot-deal__modal" >
        <img src="<?= get_template_directory_uri() ?>/img/fire.svg" alt="hot deal">
        <h2>горячее предложение</h2>
        <h3>обратите внимание на цену!</h3>
        <div class="close-btn" onclick="closeHotDealModal()"><span></span><span></span></div>
    </div>
    <!--***-->

    <!--*** hot modal-->
    <div class="hot-modal" id="hot-modal">
        <img src="<?= get_template_directory_uri() ?>/img/fire.svg" alt="hot deal">
        <h2>горячее предложение</h2>
        <h2>обратите внимание на цену!</h2>

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

    <!--*** Added to cart modal ***-->
    <div class="store-added-to-cart-modal" id="store-added-to-cart-modal">
        <div class="store-added-to-cart-modal__content">
            <img src="<?= get_template_directory_uri() ?>/img/added-check.svg" alt="check icon" width="85px"
                 height="85px">
            <p>Товар добавлен в корзину</p>
            <a data-fancybox-close href="#0">Продолжить покупки</a>
            <a href="/cart">Перейти в корзину</a>
        </div>

    </div>
    <!--***-->
    <script>
        var goods = <?= json_encode($goods)?>;
        var globalIndex = 0;

        // console.log(goods);


        function buy(index, size = null, isPrint = 'wo_print') {

            let modal = document.querySelector('.shop-buy__modal');
            modal.classList.add('active-flex');
            fadeMax.classList.add('active');
            let title = document.querySelector('.title');
            title.innerHTML = goods[index]['title'];
            let select = document.querySelector('#selectSize');
            let isPrintValue = document.querySelector('#isPrint');
            for (var key in goods[index]['size']) {
                let selectValue = document.createElement('option');
                if (key === size) selectValue.defaultSelected = true;
                selectValue.innerText = key;
                select.appendChild(selectValue);
            }
            isPrintValue.checked = isPrint === 'print';
            globalIndex = index;

            rebuildGoodsModal();
        }

        function rebuildGoodsModal() {

            let size_index = 0;
            let size = document.querySelector('#selectSize').options[document.getElementById("selectSize").options
                .selectedIndex].text;
            let qty = document.querySelector('#qty').value;
            let isPrintValue = document.querySelector('#isPrint').checked ? 'print' : 'wo_print';
            let summary = document.getElementById('summary');
            let summaryValue = goods[globalIndex]['size'][size][isPrintValue] * qty;
            document.getElementById("product_id").value = goods[globalIndex]['product_id'];
            for (var key in goods[globalIndex]['size']) {
                if (key === size) {
                    break;
                }
                size_index++;
            }
            let print_id = (isPrintValue === 'print') ? 1 : 0;
            // console.log(print_id);
            document.getElementById("variant_id").value = goods[globalIndex]['var_id'][size_index * 2 + print_id];
            summary.innerText = summaryValue;
        }

        function open_cat() {
            $.fancybox.open({
                src: '#store-added-to-cart-modal',
                type: 'inline',
                touch: false,
                modal: true,
                closeBtn: false

            })
        }

        jQuery(document).ready(function ($) {

            $('.shop_add_to_cart_button').on('click', function (e) {
                e.preventDefault();
                $thisbutton = $(this),
                    $form = $thisbutton.closest('form'),
                    product_qty = $form.find('input[name=quantity]').val(),
                    product_id = $('#product_id').val(),
                    variation_id = $('#variant_id').val();

                let data = {
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

                        closeShopBuyModal();
                        $.fancybox.open({
                            src: '#store-added-to-cart-modal',
                            type: 'inline',
                            touch: false

                        })

                    },
                    success: function (response) {
                        if (response.error & response.product_url) {

                            // window.location = response.product_url;

                            // return;

                        } else {
                            $(document.body).trigger('added_to_cart', [response.fragments]);
                        }
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