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
{block name='product_miniature_item'}
<div class="js-product product {if $product.images && $product.images|count > 1}double-pic{/if}">
  <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
    <div class="prod-thumbnail thumbnail-container"> <!--to add wish list icon, add class "thumbnail-container"-->
      <div class="thumbnail-top">
        {block name='product_thumbnail'}
          {if $product.cover}
            <a href="{$product.url}" class="thumbnail product-thumbnail">
              <img
              src="{$product.cover.bySize.home_default.url}"
              alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
              loading="lazy"
              data-full-size-image-url="{$product.cover.large.url}"
              />
              {if $product.images && $product.images|count > 1}
                <img
                style="display:none"
                src="{$product.images[1].bySize.home_default.url}"
                alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                loading="lazy"
                data-full-size-image-url="{$product.images[1].large.url}"
                />
              {/if}
            </a>
          {else}
            <a href="{$product.url}" class="thumbnail product-thumbnail">
              <img
                src="{$urls.no_picture_image.bySize.home_default.url}"
                loading="lazy"
              />
            </a>
          {/if}
        {/block}

        <div class="highlighted-informations{if !$product.main_variants} no-variants{/if}">
          {block name='product_variants'}
            {if $product.main_variants}
              {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
            {/if}
          {/block}
        </div>
      </div>

      <div class="product-description">
      {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="product-price-and-shipping">
              {hook h='displayProductPriceBlock' product=$product type="before_price"}

              <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
                {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
                {if '' !== $smarty.capture.custom_price}
                  {$smarty.capture.custom_price nofilter}
                {else}
                  {$product.price}
                {/if}
              </span>

              {hook h='displayProductPriceBlock' product=$product type='unit_price'}

              {hook h='displayProductPriceBlock' product=$product type='weight'}
            </div>
          {/if}
        {/block}
        {block name='product_name'}
          {if $page.page_name == 'index'}
            <h3 class="h3 product-title"><a href="{$product.url}" content="{$product.url}">{$product.name|truncate:60:'...'}</a></h3>
          {else}
            <h2 class="h3 product-title"><a href="{$product.url}" content="{$product.url}">{$product.name|truncate:60:'...'}</a></h2>
          {/if}
          <form action="{$urls.pages.cart}" method="post">
          <input type="hidden" name="token" value="{$static_token}">
          <input type="hidden" name="id_product" value="{$product.id}">
          <input type="hidden" name="qty" value="1">
          <button type="submit" class="product-add-to-cart" data-button-action="add-to-cart">
            <i class="fi-br-shopping-bag-add"></i>
            Add to cart
          </button>
        </form>
        <div class="other-action-container">
          <button class="product-buy-now">
            Buy now
          </button>
          <a href="#" class="add-to-whish-list" data-product_id="{$product.id}" data-customer_id="{$customer.id}">
            <i class="fi-br-heart"></i>
          </a>
        </div>
        {/block}
      </div>
      {* <div class="display-hover">
        <form action="{$urls.pages.cart}" method="post">
          <input type="hidden" name="token" value="{$static_token}">
          <input type="hidden" name="id_product" value="{$product.id}">
          <input type="hidden" name="qty" value="1">
          <button type="submit" class="product-add-to-cart" data-button-action="add-to-cart">
            <i class="fi-br-shopping-bag-add"></i>
            Add to cart
          </button>
        </form>
        <div class="other-action-container">
          <button class="product-buy-now">
            Buy now
          </button>
          <a href="#" class="add-to-whish-list" data-product_id="{$product.id}" data-customer_id="{$customer.id}">
            <i class="fi-br-heart"></i>
          </a>
        </div>
      </div> *}

      {include file='catalog/_partials/product-flags.tpl'}
    </div>
  </article>
</div>
{/block}
