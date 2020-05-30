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
    <div class="cart-content">
<!--      --><?php //the_title(); ?>
      <?php the_content(); ?>
    </div>
</div>







<?php
get_footer();
