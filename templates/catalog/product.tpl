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

{block name='head' append}
  <meta property="og:type" content="product">
  {if $product.cover}
    <meta property="og:image" content="{$product.cover.large.url}">
  {/if}

  {if $product.show_price}
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}">
  <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
{/block}

{block name='head_microdata_special'}
  {include file='_partials/microdata/product-jsonld.tpl'}
{/block}

{block name='content'}
  <section id="main">
    <meta content="{$product.url}">

    <div class="row product-container js-product-container">
      <div class="product-image-container">
        {block name='page_content_container'}
          <section class="page-content" id="content">
            {block name='page_content'}
              {include file='catalog/_partials/product-flags.tpl'}

              {block name='product_cover_thumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}
            {/block}
          </section>
        {/block}
      </div>
      <div class="product-details-container">
        <div class="product-header-container">
          {block name='page_header_container'}
            {block name='page_header'}
              <h1 class="h1">{block name='page_title'}{$product.name}{/block}</h1>
            {/block}
          {/block}
          <div class="header-actions">
            <a href="#" class="wish-list-trigger"><i class="fi-br-heart"></i></a>
            {hook h='displayProductIconsAction' product=$product}
          </div>
        </div>
        {block name='product_prices'}
          {include file='catalog/_partials/product-prices.tpl'}
        {/block}

        <div class="product-information">
          {block name='product_description_short'}
            <div id="product-description-short-{$product.id}" class="product-description">{$product.description_short nofilter}</div>
          {/block}

          <div class="divider"></div>
          {if isset($product_manufacturer->id)}
            <div class="brand-detail">
              <span class="title">Brand:</span>
              <span class="value">{$product_manufacturer->name}</span>
            </div>
          {/if}

          {if $product.is_customizable && count($product.customizations.fields)}
            {block name='product_customization'}
              {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
            {/block}
            <div class="divider"></div>
          {/if}

          <div class="product-actions js-product-actions">
            {block name='product_buy'}
              <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                <input type="hidden" name="token" value="{$static_token}">
                <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" class="js-product-customization-id">

                {block name='product_variants'}
                  {include file='catalog/_partials/product-variants.tpl'}
                {/block}

                {block name='product_pack'}
                  {if $packItems}
                    <section class="product-pack">
                      <p class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</p>
                      {foreach from=$packItems item="product_pack"}
                        {block name='product_miniature'}
                          {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
                        {/block}
                      {/foreach}
                  </section>
                  {/if}
                {/block}

                {block name='product_discounts'}
                  {include file='catalog/_partials/product-discounts.tpl'}
                {/block}

                {block name='product_add_to_cart'}
                  {include file='catalog/_partials/product-add-to-cart.tpl'}
                {/block}

                {* Input to refresh product HTML removed, block kept for compatibility with themes *}
                {block name='product_refresh'}{/block}
              </form>
              
              {block name='hook_display_reassurance'}
                {hook h='displayReassurance'}
              {/block}
            {/block}
          </div>

        </div>
      </div>
    </div>

    {block name='product_additional_info'}
      {include file='catalog/_partials/product-additional-info.tpl'}
    {/block}

    <div class="box">
      <h3>About this item</h3>
      <div class="product-spec-desc">
        {if $product.description}
          <div class="description">
            <h4>Description</h4>
            {$product.description nofilter}
          </div>
        {/if}
        <div class="specification">
          <h4>Specifications</h4>
          {if isset($product_manufacturer->id)}
            <div class="specification-flex">
              <span class="feature">Brand</span>
              <span class="value">{$product_manufacturer->name}</span>
            </div>
          {/if}
          {if $product.features}
            {foreach from=$product.features item="feature"}
              <div class="specification-flex">
                <div class="feature">{$feature.name}</div>
                <div class="value">{$feature.value}</div>
              </div>
            {/foreach}
          {/if}
          {if $product.show_condition}
            <div class="specification-flex">
              <span class="feature">Condition</span>
              <span class="value">{$product.condition}</span>
            </div>
          {/if}
        </div>
      </div>
    </div>

    {if $product.attachments}
      <div class="box" id="attachments" role="tabpanel">
        <h3>Attachements</h3>
        <section class="product-attachments">
          <p class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</p>
            {foreach from=$product.attachments item=attachment}
                <div class="attachment">
                  <h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
                  <p>{$attachment.description}</p>
                  <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                    {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                  </a>
                </div>
            {/foreach}
        </section>
      </div>
    {/if}

    {foreach from=$product.extraContent item=extra key=extraKey}
      <div class="box {$extra.attr.class}" id="extra-{$extraKey}" role="tabpanel" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
        {$extra.content nofilter}
      </div>
    {/foreach}
    
    {block name='product_accessories'}
      {if $accessories}
        <section class="featured-products similar-products clearfix">
          <h2>{l s='Enhance Your Experience' d='Shop.Theme.Catalog'}</h2>
          <p>Complimentary products</p>
          <div class="product-list-container products row">
            {foreach from=$accessories item="product_accessory" key="position"}
              {block name='product_miniature'}
                {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory position=$position productClasses="col-xs-12 col-sm-6 col-lg-4 col-xl-3"}
              {/block}
            {/foreach}
          </div>
        </section>
      {/if}
    {/block}

    <br />
    {* {widget name="ps_bestsellers"} *}
    <br />
    {widget name="ps_specials"}

    {block name='product_footer'}
      {hook h='displayRelatedProducts' product=$product category=$category}
    {/block}

    {* {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block} *}

    {* {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block} *}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
    <br />
    {* {include file='_partials/site-features.tpl'} *}
  </section>

{/block}
