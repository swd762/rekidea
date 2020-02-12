<?php
get_header();
?>
<main>
<div class="recunstruction-wrapper container clearfix">
        <div class="reconstruction__content">
            <h1>САЙТ НА РЕКОНСТРУКЦИИ!</h1>
            <h3>Эта страница находится на реконструкции
                и совсем скоро станет доступной для просмотра.
            </h3>
            <p>Приносим извинения за временные неудобства.</p>
        </div>
</div>
<div class="recunstruction-mobile-wrapper">
    <div class="reconstruction-mobile__content">
        <h1>САЙТ НА РЕКОНСТРУКЦИИ!</h1>
        <h3>Эта страница находится на реконструкции
            и совсем скоро станет доступной для просмотра.
        </h3>
        <p>Приносим извинения за временные неудобства.</p>
        <img src="<?= get_template_directory_uri()?>/img/404/reconstruction.jpg" />
    </div>
</div>
<div class="questions-contact__wrapper container err404">
    <div class="questions-contact__content">
        <h2>у вас есть вопросы?</h2>
        <p>Мы сэкономим ваше время! Звоните для консультаций
            или оставьте заявку на обратный звонок.
        </p>
        <div class="questions-contact__content-contacts">
            <h4>+ 7 (495) 369-20-79</h4>
            <a href="#" class="button">ПЕРЕЗВОНИТЬ МНЕ</a>
        </div>
    </div>
    <img src="<?= get_template_directory_uri()?>/img/404/operator.png" alt="" class="question-operator er404">
</div>
</main>
<?php
get_footer();
