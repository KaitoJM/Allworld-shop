{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="blockcart-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header add-to-cart-success-header">
        <h4 class="modal-title h6 text-sm-center" id="myModalLabel">
          <i class="fi-br-check"></i>
          {l s='Added to cart successfully!' d='Shop.Theme.Checkout'}
        </h4>
        <button type="button" class="close" data-dismiss="modal">
          <i class="fi-br-cross-small"></i>
        </button>
      </div>
      <div class="modal-body">
        <table cellspacing="0">
          <thead>
            <tr>
              <th colspan="2">Order items</th>
              <th>Unit price</th>
              <th>Qty</th>
              <th>Total price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="img">
                {if $product.default_image}
                  <img
                    src="{$product.default_image.medium.url}"
                    data-full-size-image-url="{$product.default_image.large.url}"
                    title="{$product.default_image.legend}"
                    alt="{$product.default_image.legend}"
                    loading="lazy"
                    class="product-image"
                  >
                {else}
                  <img
                    src="{$urls.no_picture_image.bySize.medium_default.url}"
                    loading="lazy"
                    class="product-image"
                  />
                {/if}
              </td>
              <td><h6 class="h6 product-name">{$product.name}</h6></td>
              <td>{$product.price}</td>
              <td>{$product.cart_quantity}</td>
              <td>{$cart.subtotals.products.value}</td>
            </tr>
          </tbody>
        </table>

        {if !$configuration.display_prices_tax_incl && $configuration.taxes_enabled}
          <p><span>{$cart.totals.total.label}&nbsp;{$cart.labels.tax_short}</span>&nbsp;<span>{$cart.totals.total.value}</span></p>
          <p class="product-total"><span class="label">{$cart.totals.total_including_tax.label}</span>&nbsp;<span class="value">{$cart.totals.total_including_tax.value}</span></p>
        {else}
          <p class="product-total"><span class="label">{$cart.totals.total.label}&nbsp;{if $configuration.taxes_enabled}{$cart.labels.tax_short}{/if}</span>&nbsp;<span class="value">{$cart.totals.total.value}</span></p>
        {/if}
        {if $cart.subtotals.tax}
          <p class="product-tax">{l s='%label%:' sprintf=['%label%' => $cart.subtotals.tax.label] d='Shop.Theme.Global'}&nbsp;<span class="value">{$cart.subtotals.tax.value}</span></p>
        {/if}

        {hook h='displayCartModalContent' product=$product}
        <div class="cart-content-btn">
          <button type="button" class="btn btn-secondary btn-continue-shopping" data-dismiss="modal">{l s='Continue shopping' d='Shop.Theme.Actions'}</button>
          <a href="{$cart_url}" class="btn btn-primary btn-proceed-tocheckout">{l s='Proceed to checkout' d='Shop.Theme.Actions'}</a>
        </div>

      </div>
      {hook h='displayCartModalFooter' product=$product}
    </div>
  </div>
</div>
