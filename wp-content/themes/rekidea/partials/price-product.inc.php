<div class="shop-card">
    <div class="shop-card__thumb-slider">
        <div class="samples-slider shop-hot-icon">
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri() ?>/img/test/roll-2.jpg" alt="shop thumbnail"></a>
            </div>
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri() ?>/img/test/roll-1.jpg" alt="shop thumbnail"></a>
            </div>
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri() ?>/img/test/roll-3.jpg" alt="shop thumbnail"></a>
            </div>
        </div>
        <div class="thumbs-slider">
            <div class="slide">
                <img src="<?= get_template_directory_uri() ?>/img/test/roll-2.jpg" alt="shop thumbnail">
            </div>
            <div class="slide">
                <img src="<?= get_template_directory_uri() ?>/img/test/roll-1.jpg" alt="shop thumbnail">
            </div>
            <div class="slide">
                <img src="<?= get_template_directory_uri() ?>/img/test/roll-3.jpg" alt="shop thumbnail">
            </div>
        </div>
    </div>
    <div class="shop-card__main">
        <div class="shop-card__main-header">
            <h2>Ролл ап IDEA<span>一 standart</span></h2>
            <p>Классическая модель роллерного стенда. Лидер продаж на российском рынке. Толщина стенки корпуса 0,8 мм,
                верхняя зажимная планка
                с пластиковым кронштейном на вертикальной опоре.
            </p>
            <a href="#" class="doc-link">
                <img src="<?= get_template_directory_uri() ?>/img/shop-card/pdf.png" alt="pdf link icon">
                Технические требования к макету
            </a>
        </div>
        <div class="shop-card__main-content">
            <table>
                <tr>
                    <th>Размеры, см</th>
                    <th>Стоимость Ролл Ап<br>
                        без печати, руб</th>
                    <th>Ролл Ап с печатью<br>
                        на баннере, руб</th>
                </tr>
                <tr>
                    <td><a href="#">60х180</a></td>
                    <td><a href="#">1590</a><a class="hot-deal" href="#"></a></td>
                    <td><a href="#">2290</a></td>
                </tr>
                <tr>
                    <td><a href="#">60х180</a></td>
                    <td><a href="#">1590</a></td>
                    <td><a href="#">2290</a></td>
                </tr>
                <tr>
                    <td><a href="#">60х180</a></td>
                    <td><a href="#">1590</a></td>
                    <td><a href="#">2290</a></td>
                </tr>
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


<!--    <h2>Product Details</h2>-->
<!--    <div class="col col_13">-->
<!--        <a rel="lightbox[portfolio]" href="--><?php //the_permalink(); ?><!--"-->
<!--           title="Title">--><?php //the_post_thumbnail( "thumbnail-215x300" ); ?><!--</a>-->
<!--    </div>-->
<!--    <div class="">-->
<!--        <table>-->
<!--            <tr>-->
<!--                <td height="30" width="160">Price:</td>-->
<!--                                <td>--><?php //echo var_dump( $product->get_attributes() ); ?><!--</td>-->
<!--            </tr>-->
<!--            <tr>-->
<!--                <td>5555</td>-->

<!--            </tr>-->
<!--            <tr>-->
<!--                <td height="30">Quantity</td>-->
<!--                <td><input type="text" value="1" style="width: 20px; text-align: right"/></td>-->
<!--            </tr>-->
<!--        </table>-->
<!--        <div class="cleaner h20"></div>-->
<!--        <a href="/cart/?add-to-cart=--><?php //echo $loop->post->ID; ?><!--" rel="nofollow"-->
<!--           data-product-id="--><?php //echo $loop->post->ID; ?><!--" class="">Add to cart</a>-->
<!--        --><?php //?>
<!--    </div>-->
<!--    <div class="cleaner h30"></div>-->
<!--    --><?php
//
//    foreach ($product->get_available_variations() as $variation ) {
//        echo $variation['display_price'].'<br>';
//
//        //$attributes = array();
//        foreach( $variation['attributes'] as $key => $value ){
////		      echo $key;
//            echo $value.'<br>';
//        }
//	        echo '<span class="variation-attributes">
//            <strong>Attributes</strong>: '.implode( ' | ', $attributes ).'</span><br>';


//
//    }
//    ?>
<!--    <h5><strong>--><?php //the_title(); ?><!--</strong></h5>-->
<!--    <p>--><?php //the_content(); ?><!--</p>-->
<?php ////endwhile; ?>
