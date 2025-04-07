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
<script async src="https://www.googletagmanager.com/gtag/js?id=G-MSM4EBWBW8"></script>
{literal}
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-MSM4EBWBW8');
</script>
{/literal}
<div class="header-container-top">
  <div class="logo-container">
    {renderLogo}
  </div>
  <div class="header-container-main">
    {block name='header_nav1'}
      <nav class="header-nav1">
        
      </nav>
    {/block}

    {block name='header_top'}
      <div class="header-top">
        {hook h='displayTop'}
      </div>
    {/block}

    {block name='header_nav2'}
      <nav class="header-nav2">
        {if $customer.is_logged}
          <a class="link-fav" href="{$urls.base_url}module/blockwishlist/lists"><i class="fi-br-heart"></i></a>
        {/if}
        {hook h='displayNav2'}
        <a class="link-categories" href="#"><i class="fi-br-menu-burger"></i></a>
      </nav>
    {/block}
  </div>
</div>
<div class="header-container-bottom">
  <div class="header-container-bottom-margin">
    <div class="categories-trigger">
      <img src="{$urls.theme_assets}svg/fi-br-menu-burger.svg" />
      <a href="#">Product Categories</a>
      <img src="{$urls.theme_assets}svg/fi-br-angle-small-down.svg" />
      {include file='_partials/custom-menu.tpl'}
    </div>
    {hook h='displayNav1'}
  </div>
</div>

