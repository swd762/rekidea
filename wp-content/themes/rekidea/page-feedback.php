<?php
 get_header();
?>
<main>
    <div class="feedback-form-page-wrapper">
       <div class="container">
           <div class="feedback-form-page">
               <h1>Обратная связь</h1>
               <?= do_shortcode('[contact-form-7 id="8" title="Feedback"]'); ?>
           </div>
       </div>
    </div>
</main>
<?php
get_footer();