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
<!--                    --><?php
//                    $loop = new WP_Query(array(
//                        'post_type' => 'product',
//                        'posts_per_page' => 20,
//                        'orderby' => 'menu_order',
//                        'order' => 'ASC',
//                    ));
//
//                    while ($loop->have_posts()): $loop->the_post(); ?>
<!--                        <h2>Product Details</h2>-->
<!--                        --><?//=
//                        $gallery_products = $product->get_gallery_image_ids();
//                        // wc_get_gallery_image_html( $gallery_products[0], $main_image = false );
//                        echo apply_filters('woocommerce_single_product_image_thumbnail_html', wc_get_gallery_image_html($gallery_products[0], apply_filters('woocommerce_product_thumbnails_large_size', 'full')), $gallery_products[0]);
//                        echo apply_filters('woocommerce_single_product_image_thumbnail_html', wc_get_gallery_image_html(
//                            $gallery_products[1], apply_filters('woocommerce_product_thumbnails_large_size', 'full')),
//                            $gallery_products[1]);
//                        echo wc_get_gallery_image_html($gallery_products[2], true);
//
//                        //                var_dump($product->get_gallery_attachment_ids());
//                        echo wp_get_attachment_image_url($product->get_gallery_attachment_ids()[1], 'full');
//
//                        echo $product->get_gallery_attachment_ids()[1];
//
//                        ?>
<!--                        <img src="--><?php //echo wp_get_attachment_image_url($product->get_gallery_attachment_ids()[1], 'full'); ?><!--"-->
<!--                             alt=""/>-->
<!---->
<!--                        <div class="col col_13">-->
<!--                            <a rel="lightbox[portfolio]" href="--><?php //the_permalink(); ?><!--"-->
<!--                               title="Title">--><?php //the_post_thumbnail("thumbnail-215x300"); ?><!--</a>-->
<!--                        </div>-->
<!--                        <div class="">-->
<!--                            <table>-->
<!--                                <tr>-->
<!--                                    <td height="30" width="160">Price:</td>-->

<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td>5555</td>-->


<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td height="30">Quantity</td>-->
<!--                                    <td><input type="text" value="1" style="width: 20px; text-align: right"/></td>-->
<!--                                </tr>-->
<!--                            </table>-->
<!--                            <div class="cleaner h20"></div>-->
<!--                            <a href="/cart/?add-to-cart=--><?php //echo $loop->post->ID; ?><!--" rel="nofollow"-->
<!--                               data-product-id="--><?php //echo $loop->post->ID; ?><!--" class="">Add to cart</a>-->
<!--                            --><?php //?>
<!--                        </div>-->
<!--                        <div class="cleaner h30"></div>-->
<!--                        --><?php
//
//                        foreach ($product->get_available_variations() as $variation) {
//                            echo $variation['display_price'] . '<br>';
//
//                            //$attributes = array();
//                            foreach ($variation['attributes'] as $key => $value) {
//                                //		      echo $key;
//                                echo $value . '<br>';
//                            }
//                            //	        echo '<span class="variation-attributes">
//                            //            <strong>Attributes</strong>: '.implode( ' | ', $attributes ).'</span><br>';
//
//
//                        }
//                        ?>
<!--                        <h5><strong>--><?php //the_title(); ?><!--</strong></h5>-->
<!--                        <p>--><?php //the_content(); ?><!--</p>-->
<!--                    --><?php //endwhile; ?>
                    <?php get_template_part('partials/price-product.inc'); ?>
                </div>
            </div>
        </div>
        <!--*************************************-->

        <!--consultant block ***********************************-->
        <?php get_template_part('partials/bottom-consultation-block.inc'); ?>
        <!--****************************************************-->
    </main>
<?php
get_footer();
?>