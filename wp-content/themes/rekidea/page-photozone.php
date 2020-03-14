<?php
get_header();

if(have_posts()) {
    while (have_posts()){
        the_post();
    }
}
?>
<main>
<!--Breadcrumbs block *******************-->
<div class="breadcrumbs">
    <div class="container">
        <p><a href="/">Главная</a> > <a href="/price">Цены</a> > Фотозона</p>
        </div>
    </div>
</div>
<!--*************************************-->

<!--*************************************-->
<div class="price__wrapper photozone-wrapper container clearfix">
    <div class="wide-printing__nav">
        <?php get_template_part( 'partials/price-menu.inc'); ?>
    </div>
    <div class="price__content">
        <div class="row">
            <div class="price__content-title">
                <h1>ознакомьтесь с нашими ценами</h1>
                <section>
                    <p>Для вашего удобства мы&nbsp;разделили наши цены на&nbsp;список категорий.</p>
                    <p>Выбирайте интересующую Вас категорию в&nbsp;списке и&nbsp;ознакомьтесь с&nbsp;нашими ценами
                        и&nbsp;выгодными предложениями.</p>
                </section>
                <?php get_template_part( 'partials/price-menu-mobile.inc'); ?>
            </div>
        </div>
        <div class="describe-page-link">
            <a href="/404"><h2>Фотозона</h2></a>
        </div>
        <div class="wo-price-page photozone-page">
            <div class="top-part">
                <div class="text-part">
                    <div class="describe-page-link">
                        <a href="/404"><h2>Фотозона</h2></a>
                    </div>
                    <section class="first-text">
                        <?php the_content(); ?>
                    </section>
                    <section class="second-text">
                        <p>Мы работаем с брендами разного уровня.</p>
                        <p>Это позволяет нам находить индивидуальный подход к каждому клиенту.</p>
                        <p>Наша компания не просто производит рекламную продукцию: нашими идеями и разработками мы успешно и эффективно решаем ваши задачи и проблемы.</p>
                        <p>Ознакомьтесь с нашими проектами!</p>
                    </section>
                </div>
                <div class="callback-form-part">
                    <div class="callback-form">
                        <div class="call-us">
                            <h4>Позвоните нам!</h4>
                            <a href="tel:+74953692079">+ 7 (495) 369-20-79</a>
                            <a href="tel:+79265832351">+ 7 (926) 583-23-51</a>
                            <div class="working-regime">
                                Ежедневно с 10:00 до 19:00<br>
                                Без перерывов и выходных
                            </div>
                        </div>
                        <div class="we-call">
                            <h4>или Оставьте телефон
                                мы вам перезвоним</h4>
                        </div>
                        <div class="feedback-form">
                            <div role="form" class="wpcf7" id="wpcf7-f274-o2" dir="ltr" lang="ru-RU">
                                <div class="screen-reader-response"></div>
                                <?php echo do_shortcode('[contact-form-7 id="337" title="price-call"]') ?>
                            </div>
                            <div class="private_term_agree">
                                Нажимая кнопку «Перезвонить мне», я <a href="/privacy-policy">даю свое согласие</a>
                                на обработку персональных данных.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="photo-block" style="height: 194px;">
                <a href="<?= get_template_directory_uri()?>/img/photozone/photozona-1-big.jpg" class="single_image">
                    <img src="<?= get_template_directory_uri()?>/img/photozone/photozona-1.png" alt="">
                </a>
                <a href="<?= get_template_directory_uri()?>/img/photozone/photozona-2-big.jpg" class="single_image">
                    <img src="<?= get_template_directory_uri()?>/img/photozone/photozona-2.png" alt="">
                </a>
                <a href="<?= get_template_directory_uri()?>/img/photozone/photozona-3-big.jpg" class="single_image">
                    <img src="<?= get_template_directory_uri()?>/img/photozone/photozona-3.png" alt="">
                </a>
            </div>
            <a href="/404" class="red-btn">Посмотреть наши работы</a>
            <div class="callback-form-part mobile">
                <div class="callback-form">
                    <div class="call-us">
                        <h4>Позвоните нам!</h4>
                        <a href="tel:+74953692079">+ 7 (495) 369-20-79</a>
                        <a href="tel:+79265832351">+ 7 (926) 583-23-51</a>
                        <div class="working-regime">
                            Ежедневно с 10:00 до 19:00<br>
                            Без перерывов и выходных
                        </div>
                    </div>
                    <div class="we-call">
                        <h4>или Оставьте телефон
                            мы вам перезвоним</h4>
                    </div>
                    <div class="feedback-form">
                        <div role="form" class="wpcf7" id="wpcf7-f274-o2" dir="ltr" lang="ru-RU">
                            <div class="screen-reader-response"></div>
                            <?php echo do_shortcode('[contact-form-7 id="337" title="price-call"]') ?>
                        </div>
                        <div class="private_term_agree">
                            Нажимая кнопку «Перезвонить мне», я <a href="/privacy-policy">даю свое согласие</a>
                            на обработку персональных данных.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
<?php
get_footer();
?>
<script src="<?= plugins_url('wp-slick-slider-and-image-carousel/assets/js/slick.min.js')?>"></script>
<script>

  jQuery('.photo-block').slick({
    infinite: true,
    slidesToShow: 3,
    arrows: false,
    dots: false,
      responsive: [
          {
              breakpoint: 1023,
              settings: {
                  slidesToShow: 1,
                  slidesToScroll: 1,
                  infinite: true,
                  dots: false
              }
          }
          // You can unslick at a given breakpoint now by adding:
          // settings: "unslick"
          // instead of a settings object
      ]
  });

  jQuery(function($) {
    $(".single_image").fancybox();
  });
</script>
