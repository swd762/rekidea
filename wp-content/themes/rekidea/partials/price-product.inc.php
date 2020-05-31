

<div class="shop-card">
    <div class="shop-card__thumb-slider">
        <div class="samples-slider">
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/test/roll-2.jpg" alt="shop thumbnail"></a>
            </div>
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/test/roll-1.jpg" alt="shop thumbnail"></a>
            </div>
            <div class="slide">
                <a href="#"><img src="<?= get_template_directory_uri()?>/img/test/roll-3.jpg" alt="shop thumbnail"></a>
            </div>
        </div>
    </div>




</div>


<script>
    jQuery(function($) {
        $('.samples-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: false,
            autoplay: true,
            prevArrow: '<button class="arrow-prev"></button>',
            nextArrow: '<button class="arrow-next"></button>',
            autoplaySpeed: 2000
            // centerMode: true,
            // adaptiveHeight: true,
            // focusOnSelect: true
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
