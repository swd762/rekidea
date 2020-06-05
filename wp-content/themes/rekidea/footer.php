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
                    <li><a href="/price">ЦЕНЫ</a></li>
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
                    <li><a href="/price">ЦЕНЫ</a></li>
                    <li><a href="/404">ПОРТФОЛИО</a></li>
                    <li><a href="/404">ДОСТАВКА</a></li>
                </ul>
                <ul class="footer-nav">
                    <li><a href="/404">КОНТАКТЫ</a></li>
                    <li><a href="/404">СТАТЬИ</a></li>
                </ul>
                <ul class="footer-nav">
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
        </div>
            <div class="footer-bottom">
                © Rekidea 2019 г. Рекламное производство. Сайт не является публичной офертой. Все права защищены.
            </div>

    </footer>

<!--Order click modal-->
<div class="fade-max"></div>
<div class="order-click__modal">
    <div class="call-us">
        <div class="close-btn" onclick="closeOrderModal()"><span></span><span></span></div>
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
        <div class="close-btn" onclick="closeCallModal()"><span></span><span></span></div>
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

    if(callmeButtons) {
        callmeButtons.addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector('.call-me__modal').classList.add('active');
            fadeMax.classList.add('active');
            document.querySelector('body').classList.add('modal-opened');
        });
    }

    document.addEventListener('click', e=> {
        let target = e.target;
        let formIsActive = document.querySelector('.call-me__modal').classList.contains('active');
        let itsFade = target == fadeMax;
        let HotIsActive = document.querySelector('.hot-deal__modal').classList.contains('active-flex');
        let BuyIsActive = document.querySelector('.shop-buy__modal').classList.contains('active-flex');
        if (formIsActive && itsFade) {
            closeCallModal();
        }
        if (BuyIsActive && itsFade) {
            closeShopBuyModal();
        }

        if (HotIsActive && itsFade) {
            closeHotDealModal();
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

<!--*******************Hot deal modal ******************************-->

<div class="fade-max"></div>
<script>
    let hotDeals = document.querySelectorAll('.hot-icon , .hot-icon-mobile , .hot-deal');
    let modal = document.querySelector('.hot-deal__modal');
    for (let i = 0; i <hotDeals.length ; i++) {
        hotDeals[i].addEventListener('click', function (e) {
            e.preventDefault();
            modal.classList.add('active-flex');
            fadeMax.classList.add('active');
            document.querySelector('body').classList.add('modal-opened');
        });
    }

    function closeHotDealModal() {
        let modal = document.querySelector('.hot-deal__modal');
        modal.classList.remove('active-flex');
        fadeMax.classList.remove('active');
        document.querySelector('body').classList.remove('modal-opened');
    }

</script>


<!--*******************************************************************-->


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
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
        m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
    (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

    ym(57586672, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
    });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/57586672" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
    </body>
</html>