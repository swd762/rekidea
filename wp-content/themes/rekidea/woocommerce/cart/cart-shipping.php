<?php
/**
 * Shipping Methods Display
 *
 * In 2.1 we show methods per package. This allows for multiple methods per order if so desired.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart-shipping.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

$formatted_destination    = isset( $formatted_destination ) ? $formatted_destination : WC()->countries->get_formatted_address( $package['destination'], ', ' );
$has_calculated_shipping  = ! empty( $has_calculated_shipping );
$show_shipping_calculator = ! empty( $show_shipping_calculator );
$calculator_text          = '';

$additionalInformation[] = "При заказе любого товара на сумму от 10 000 р. доставка в пределах МКАД бесплатно.<br>Доставка товаров на сумму меньше 10 000 р. в пределах МКАД — 500 р.";
$additionalInformation[] = "Доставка  — от 1000 р. по предварительной договоренности.";
$additionalInformation[] = "Внимание! Бесплатный самовывоз возможен по предварительной договоренности.";

$count = 0;
?>
<div class="woocommerce-shipping-totals shipping checkout-fieldset">
	<h3>Доставка</h3>
    <h4>Способы доставки</h4>
	<div data-title="<?php echo esc_attr( $package_name ); ?>">
		<?php if ( $available_methods ) : ?>
			<ul id="shipping_method" class="woocommerce-shipping-methods">
				<?php foreach ( $available_methods as $method ) : ?>
					<li>
                        <label class="woocommerce-radio-block">
                            <?php
                            if ( 1 < count( $available_methods ) ) {
                                printf( '<input type="radio" name="shipping_method[%1$d]" data-index="%1$d" data-position="%5$d" id="shipping_method_%1$d_%2$s" value="%3$s" class="shipping_method" %4$s />', $index, esc_attr( sanitize_title( $method->id ) ), esc_attr( $method->id ), checked( $method->id, $chosen_method, false ), esc_attr( $count ) ); // WPCS: XSS ok.
                            } else {
                                printf( '<input type="hidden" name="shipping_method[%1$d]" data-index="%1$d" data-position="%4$d" id="shipping_method_%1$d_%2$s" value="%3$s" class="shipping_method" />', $index, esc_attr( sanitize_title( $method->id ) ), esc_attr( $method->id ), esc_attr( $count ) ); // WPCS: XSS ok.
                            }
                            printf( '<div for="shipping_method_%1$s_%2$s">%3$s</div>', $index, esc_attr( sanitize_title( $method->id ) ), wc_cart_totals_shipping_method_label( $method ) ); // WPCS: XSS ok.
                            do_action( 'woocommerce_after_shipping_rate', $method, $index );
                            ?>
                            <p class="additional-information"><?php echo $additionalInformation[$count]?></p>
                        </label>

					</li>
				<?php $count++; endforeach; ?>
			</ul>
            <div class="shipping_address-container">
            <h4>Адрес доставки:</h4>
                <?php do_action( 'woocommerce_checkout_shipping' ); ?>
            </div>
			<?php if ( is_cart() ) : ?>
				<p class="woocommerce-shipping-destination">
					<?php
					if ( $formatted_destination ) {
						// Translators: $s shipping destination.
						printf( esc_html__( 'Shipping to %s.', 'woocommerce' ) . ' ', '<strong>' . esc_html( $formatted_destination ) . '</strong>' );
						$calculator_text = esc_html__( 'Change address', 'woocommerce' );
					} else {
						echo wp_kses_post( apply_filters( 'woocommerce_shipping_estimate_html', __( 'Shipping options will be updated during checkout.', 'woocommerce' ) ) );
					}
					?>
				</p>
			<?php endif; ?>
			<?php
		elseif ( ! $has_calculated_shipping || ! $formatted_destination ) :
			if ( is_cart() && 'no' === get_option( 'woocommerce_enable_shipping_calc' ) ) {
				echo wp_kses_post( apply_filters( 'woocommerce_shipping_not_enabled_on_cart_html', __( 'Shipping costs are calculated during checkout.', 'woocommerce' ) ) );
			} else {
				echo wp_kses_post( apply_filters( 'woocommerce_shipping_may_be_available_html', __( 'Enter your address to view shipping options.', 'woocommerce' ) ) );
			}
		elseif ( ! is_cart() ) :
			echo wp_kses_post( apply_filters( 'woocommerce_no_shipping_available_html', __( 'There are no shipping options available. Please ensure that your address has been entered correctly, or contact us if you need any help.', 'woocommerce' ) ) );
		else :
			// Translators: $s shipping destination.
			echo wp_kses_post( apply_filters( 'woocommerce_cart_no_shipping_available_html', sprintf( esc_html__( 'No shipping options were found for %s.', 'woocommerce' ) . ' ', '<strong>' . esc_html( $formatted_destination ) . '</strong>' ) ) );
			$calculator_text = esc_html__( 'Enter a different address', 'woocommerce' );
		endif;
		?>

		<?php if ( $show_package_details ) : ?>
			<?php echo '<p class="woocommerce-shipping-contents"><small>' . esc_html( $package_details ) . '</small></p>'; ?>
		<?php endif; ?>

		<?php if ( $show_shipping_calculator ) : ?>
			<?php woocommerce_shipping_calculator( $calculator_text ); ?>
		<?php endif; ?>
	</div>
</div>

<script>
    jQuery(".woocommerce-shipping-methods").on('change', '.shipping_method', function () {
        switch (jQuery('.woocommerce-shipping-methods .shipping_method:checked').data('position')) {
            case 0:
                document.querySelector('.shipping_address-container').style.display = 'block';
                document.querySelector('.woocommerce-shipping-fields__field-wrapper #shipping_city_field').style.display = 'none';
                break;
            case 1:
                document.querySelector('.shipping_address-container').style.display = 'block';
                document.querySelector('.woocommerce-shipping-fields__field-wrapper #shipping_city_field').style.display = 'block';
                break;

            case 2:
                document.querySelector('.shipping_address-container').style.display = 'none';
                break;
        }
    })
    jQuery('.woocommerce-shipping-methods .shipping_method:checked').trigger('change');
</script>
