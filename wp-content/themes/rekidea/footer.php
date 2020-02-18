<?php
wp_footer();
?>
    <footer>
        <div class="container">
            <div class="footer__content">
                <ul class="footer-nav">
                    <li><a href="/404">ПРЕСС ВОЛЛ</a></li>
                    <li><a href="/404">РОЛЛ АП</a></li>
                    <li><a href="/404">ВЫВЕСКИ</a></li>
                    <li><a href="/404">СТЕНД</a></li>
                    <li><a href="/404">ШТЕНДЕР</a></li>
                    <li><a href="/404">ПЕЧАТЬ</a></li>
                    <li><a href="/404">ДИЗАЙН</a></li>
                    <li><a href="/404">МАТЕРИАЛЫ</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="/404">АРЕНДА</a></li>
                    <li><a href="/404">ПРОМО СТОЙКА</a></li>
                    <li><a href="/404">РОСТОВАЯ ФИГУРА</a></li>
                    <li><a href="/404">СВЕТОВАЯ ПАНЕЛЬ</a></li>
                    <li><a href="/404">ОКЛЕЙКА ТРАНСПОРТА</a></li>
                    <li><a href="/404">КАРТИНЫ</a></li>
                    <li><a href="/404">ФОТОЗОНА</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="/404">ЦЕНЫ</a></li>
                    <li><a href="/404">ПОРТФОЛИО</a></li>
                    <li><a href="/404">ДОСТАВКА</a></li>
                    <li><a href="/404">КОНТАКТЫ</a></li>
                    <li><a href="/404">СТАТЬИ</a></li>
                </ul>
                <ul class="footer-nav mobile-footer">
                    <li><a href="/404">ЦЕНЫ</a></li>
                    <li><a href="/404">ПОРТФОЛИО</a></li>
                    <li><a href="/404">ДОСТАВКА</a></li>
                </ul>
                <ul class="footer-nav mobile-footer">
                    <li><a href="/404">КОНТАКТЫ</a></li>
                    <li><a href="/404">СТАТЬИ</a></li>
                </ul>
                <ul>
                    <li><a href="tel:+74953692079">+ 7 (495) 369-20-79</a></li>
                    <li><a href="tel:+79265832351">+7 (926) 583-23-51</a></li>
                    <li><a href="mailto:info@rekidea.ru">info@rekidea.ru</a></li>
                </ul>
                <ul class="footer-socials">
                    <li><a href="/404"><img src="<?= get_template_directory_uri()?>/img/fb.png" alt="">FACEBOOK</a></li>
                    <li><a href="/404"><img src="<?= get_template_directory_uri()?>/img/insta.png" alt="">INSTAGRAM</a></li>
                    <li><a href="/404"><img src="<?= get_template_directory_uri()?>/img/vk.png" alt="">VK</a></li>
                </ul>
            </div>
            <div class="footer_content_mobile">
                <ul class="footer-nav">
                    <li><a href="#">ПРЕСС ВОЛЛ</a></li>
                    <li><a href="#">РОЛЛ АП</a></li>
                    <li><a href="#">ВЫВЕСКИ</a></li>
                    <li><a href="#">СТЕНД</a></li>
                    <li><a href="#">ШТЕНДЕР</a></li>
                    <li><a href="#">ПЕЧАТЬ</a></li>
                    <li><a href="#">ДИЗАЙН</a></li>
                    <li><a href="#">МАТЕРИАЛЫ</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="#">АРЕНДА</a></li>
                    <li><a href="#">ПРОМО СТОЙКА</a></li>
                    <li><a href="#">РОСТОВАЯ ФИГУРА</a></li>
                    <li><a href="#">СВЕТОВАЯ ПАНЕЛЬ</a></li>
                    <li><a href="#">ОКЛЕЙКА ТРАНСПОРТА</a></li>
                    <li><a href="#">КАРТИНЫ</a></li>
                    <li><a href="#">ФОТОЗОНА</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="#">ЦЕНЫ</a></li>
                    <li><a href="#">ПОРТФОЛИО</a></li>
                    <li><a href="#">ДОСТАВКА</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="#">КОНТАКТЫ</a></li>
                    <li><a href="#">СТАТЬИ</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="#">+ 7 (495) 369-20-79</a></li>
                    <li><a href="#">+7 (926) 583-23-51</a></li>
                    <li><a href="#">info@rekidea.ru</a></li>
                </ul>
                <ul class="footer-socials">
                    <li><a href="#"><img src="<?= get_template_directory_uri()?>/img/fb.png" alt="">FACEBOOK</a></li>
                    <li><a href="#"><img src="<?= get_template_directory_uri()?>/img/insta.png" alt="">INSTAGRAM</a></li>
                    <li><a href="#"><img src="<?= get_template_directory_uri()?>/img/vk.png" alt="">VK</a></li>
                </ul>



            </div>
        </div>
            <div class="footer-bottom">
                © Rekidea 2019 г. Рекламное производство. Сайт не является публичной офертой. Все права защищены.
            </div>

    </footer>

<!--Order click modal-->
<div class="fade-max"></div>
<div class="order-click__modal">
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
        <?= do_shortcode('[contact-form-7 id="274" title="order-btn"]'); ?>
    </div>
</div>
<div class="call-me__modal">
    <div class="we-call">
        <h4>Оставьте телефон!<br>
            Мы вам перезвоним.</h4>
    </div>
    <div class="feedback-form">
        <?= do_shortcode('[contact-form-7 id="274" title="order-btn"]'); ?>
    </div>
</div>

<script>
    orderButtons = document.querySelectorAll('.card-laser-button, .laser-btn-order'); // laser-btn-order
    fadeMax = document.querySelector('.fade-max');
    for (let i = 0; i <orderButtons.length ; i++) {
        orderButtons[i].addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector('.order-click__modal').classList.add('active');
            fadeMax.classList.add('active');
          document.querySelector('body').classList.add('modal-opened');
        });
    }
    document.addEventListener('click', e=> {
        let target = e.target;
        let formIsActive = document.querySelector('.order-click__modal').classList.contains('active');
        let itsFade = target == fadeMax;
        if (formIsActive && itsFade) {
            closeOrderModal();
        }
    });

    function closeOrderModal() {
      let modal = document.querySelector('.order-click__modal');
      modal.classList.remove('active');
      fadeMax.classList.remove('active');
      modal.querySelector('.wpcf7-response-output').style.display = 'none';
      document.querySelector('body').classList.remove('modal-opened');
    }
</script>
<script>
    callmeButtons = document.querySelector('.call-me-js');
    fadeMax = document.querySelector('.fade-max');

        callmeButtons.addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector('.call-me__modal').classList.add('active');
            fadeMax.classList.add('active');
          document.querySelector('body').classList.add('modal-opened');
        });

    document.addEventListener('click', e=> {
        let target = e.target;
        let formIsActive = document.querySelector('.call-me__modal').classList.contains('active');
        let itsFade = target == fadeMax;
        if (formIsActive && itsFade) {
            closeCallModal();
        }
    });

    function closeCallModal() {
      let modal = document.querySelector('.call-me__modal');
      modal.classList.remove('active');
      fadeMax.classList.remove('active');
      modal.querySelector('.wpcf7-response-output').style.display = 'none';
      document.querySelector('body').classList.remove('modal-opened');
    }
</script>

<!--******************-->


<script>
    //Mobile menu
    document.querySelector('.header-mobile__hamburger').addEventListener('click', function () {
        document.querySelector('body').classList.toggle('menu-opened');
    })
</script>
<!--Up button-->
<script>
    jQuery(function($) {
        $(document).ready(function() {
            let defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
            };
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    });
</script>
<!--**********-->
<!--feedback modals closing-->
<script>
  document.addEventListener( 'wpcf7mailsent', function( event ) {
    switch (event.detail.contactFormId) {
      case '274':
        setTimeout(function () {
          closeOrderModal();
          closeCallModal();
        }, 2000);
        break;
    }
  }, false );
</script>
</script>

    </body>
</html>