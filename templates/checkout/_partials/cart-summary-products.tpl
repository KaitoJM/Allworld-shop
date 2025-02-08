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

 <div class="cart-summary-products js-cart-summary-products">
  <p>{$cart.summary_string}</p>

  {block name='cart_summary_product_list'}
    <div class="collapse" id="cart-summary-product-list">
      <ul class="media-list">

        {assign var=concatenatedString value=""}
        {assign var='giftproducts_selected' value=Configuration::get('GIFTPRODUCT_PRODUCT_SELECTED')|json_decode}

        {foreach from=$cart.products item=product}
          {assign var=skipProduct value=false}

          {foreach from=$giftproducts_selected->id_product item=selected_p key=k}
            {if $product.id == $selected_p && $giftproducts_selected->id_product_attribute[$k] == $product.id_product_attribute}
              {assign var=concatenatedString value=$concatenatedString|cat:"<li class='media'>{include file='checkout/_partials/cart-summary-product-line.tpl' product=$product}</li>"}
              {assign var=skipProduct value=true}
              {continue}
            {/if}
          {/foreach}

          {if $skipProduct}
            {continue}
          {/if}

          <li class="media">
            {include file='checkout/_partials/cart-summary-product-line.tpl' product=$product}
          </li>
        {/foreach}

        {if $concatenatedString}
          <hr>
          <li class="media">
            <div class="media-body">Freebies</div>
          </li>
          {$concatenatedString|cleanHtml nofilter}
        {/if}

      </ul>
    </div>
  {/block}
</div>
