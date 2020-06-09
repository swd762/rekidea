<?php
/**
 * Thankyou page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/thankyou.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.7.0
 */

defined( 'ABSPATH' ) || exit;
?>

<div class="woocommerce-order thankyou-content">

	<?php
	if ( $order ) :

		do_action( 'woocommerce_before_thankyou', $order->get_id() );
		?>

		<?php if ( $order->has_status( 'failed' ) ) : ?>

			<p class="woocommerce-notice woocommerce-notice--error woocommerce-thankyou-order-failed"><?php esc_html_e( 'Unfortunately your order cannot be processed as the originating bank/merchant has declined your transaction. Please attempt your purchase again.', 'woocommerce' ); ?></p>

			<p class="woocommerce-notice woocommerce-notice--error woocommerce-thankyou-order-failed-actions">
				<a href="<?php echo esc_url( $order->get_checkout_payment_url() ); ?>" class="button pay"><?php esc_html_e( 'Pay', 'woocommerce' ); ?></a>
				<?php if ( is_user_logged_in() ) : ?>
					<a href="<?php echo esc_url( wc_get_page_permalink( 'myaccount' ) ); ?>" class="button pay"><?php esc_html_e( 'My account', 'woocommerce' ); ?></a>
				<?php endif; ?>
			</p>

		<?php else : ?>
        <h4>Заказ сформирован</h4>
        <p class="woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received">Ваш заказ <strong>№ <?php echo $order->get_order_number(); ?></strong>
            от <?php echo wc_format_datetime($order->get_date_created(), 'd.m.Y G:i:s') ?> успешно создан.</p>
        <p class="woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received">В ближайшее время
            мы свяжемся с вами по указанному при оформлении заказа телефону.</p>

		<?php endif; ?>

	<?php else : ?>

		<p class="woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received"><?php echo apply_filters( 'woocommerce_thankyou_order_received_text', esc_html__( 'Thank you. Your order has been received.', 'woocommerce' ), null ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>

	<?php endif; ?>

    <div class="questions-contact__wrapper container">
        <div class="questions-contact__content">
            <h2>у вас есть вопросы?</h2>
            <p>Мы сэкономим ваше время! Звоните для консультаций
                или оставьте заявку на обратный звонок.
            </p>
            <div class="questions-contact__content-contacts">
                <h4>+ 7 (495) 369-20-79</h4>
                <a href="#" class="button call-me-js">ПЕРЕЗВОНИТЬ МНЕ</a>
            </div>
        </div>
        <img src="<?= get_template_directory_uri()?>/img/404/operator.png" alt="" class="question-operator er404">
    </div>
</div>
