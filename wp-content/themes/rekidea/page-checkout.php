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

<div class="container">
    <div class="checkout-content">
        <div class="shop-header-with-square">
            <h4><?php the_title(); ?></h4>
        </div>
      <?php the_content(); ?>
    </div>
</div>







<?php
get_footer();
