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
{extends file=$layout}

{block name='content'}

  <section id="main">
    <div class="cart-grid">

      <!-- Left Block: cart product informations & shpping -->
      <div class="cart-grid-body">

        <!-- cart products detailed -->
        <div class="cart-items-container">
          <div class="card-block">
            <h1 class="h1 page-title">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
          </div>
          <div class="box">
            {block name='cart_overview'}
              {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
            {/block}
          </div>
        </div>

        {block name='continue_shopping'}
          <a class="label back-link" href="{$urls.pages.index}">
            <i class="fi-br-angle-small-left"></i> {l s='Continue shopping' d='Shop.Theme.Actions'}
          </a>
        {/block}

        <!-- shipping informations -->
        {block name='hook_shopping_cart_footer'}
          {hook h='displayShoppingCartFooter'}
        {/block}
      </div>

      <!-- Right Block: cart subtotal & cart total -->
      <div class="cart-grid-right">
        <div class="box">
          {* <h6>Location</h6>
          <div class="address">
            <i class="fi-br-marker icon"></i>
            {$customer.addresses[1]|print_r}
            <p>sdkfds jfhsdkjf hsdkj fdsjhkf gsdjk fgdsjkhg fdshjk fgshj</p>
          </div> *}
          {block name='cart_summary'}
            <div class="card cart-summary">
              <h5>Order Summary</h5>
              {* {block name='hook_shopping_cart'}
                {hook h='displayShoppingCart'}
              {/block} *}

              {block name='cart_totals'}
                {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
              {/block}

              {block name='cart_actions'}
                {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
              {/block}

            </div>
          {/block}
        </div>

        {* {block name='hook_reassurance'}
          {hook h='displayReassurance'}
        {/block} *}

      </div>

    </div>
    {include file='_partials/site-features.tpl' cart=$cart}
  </section>
{/block}
