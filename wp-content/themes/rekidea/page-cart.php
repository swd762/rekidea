<?php
  get_header();
  ?>


<?php
if ( have_posts() ) {
  // Load posts loop.
  while ( have_posts() ) {
    the_post();
  }
}
?>

    <div class="breadcrumbs">
        <div class="container">
            <p><a href="/">Главная</a> > <a href="/price">Цены</a> > <a href="/price/mobile-stands-price-categories/">Мобильные
                    стенды</a> > <a href="/404">Roll Up</a> > Корзина</p>
        </div>
    </div>

<div class="container">
    <div class="cart-content">
        <div class="shop-header-with-square">
            <h4><?php the_title(); ?></h4>
        </div>
      <?php the_content(); ?>
    </div>
</div>







<?php
get_footer();
