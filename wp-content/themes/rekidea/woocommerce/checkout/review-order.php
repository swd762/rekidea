<?php
/**
 * Review order table
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/review-order.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.8.0
 */

defined( 'ABSPATH' ) || exit;

?>
<div class="woocommerce-checkout-review-order-block shop_table woocommerce-checkout-review-order-table">
    <div class="woocommerce-checkout-review-order-item">
        <span>Товаров на: </span><?php wc_cart_totals_subtotal_html(); ?>
    </div>
    <div class="woocommerce-checkout-review-order-item">
        <span>Доставка: </span><?php echo wc_price(WC()->session->cart_totals['shipping_total']) ?>
    </div>
    <div class="woocommerce-checkout-review-order-item">
        <span>Оплата: </span><span><?php echo WC()->payment_gateways->get_available_payment_gateways()[WC()->session->chosen_payment_method]->title ?></span>
    </div>
    <div class="woocommerce-checkout-review-order-item">
        <span>Итого:</span><span><?php wc_cart_totals_order_total_html(); ?></span>
    </div>
</div>
