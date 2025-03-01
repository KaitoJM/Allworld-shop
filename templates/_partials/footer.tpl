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
{if $urls.current_url == $urls.pages.index}
<div class="footer-body footer-body-home">
  <div class="footer-body-head">
    <div class="logo-container">
      {renderLogo}
    </div>
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
  <div class="footer-body-content">
  <div class="footer-extra">
  {block name='hook_footer_after'}
    {hook h='displayFooterAfter'}
  {/block}
</div>
    {* <div class="welcome">
      Welcome to <a href="{$urls.base_url}content/4-about-us"><b>Allworld Communications</b></a>,
      your reliable source for a diverse range of high-quality IT products. Our product range includes laptops, mobile phones, printers, projectors, and other high quality electronics, all available at competitive prices. We are dedicated to providing excellent value for our customers and frequently offer discounts and promotions to help you save money. We offer free delivery on all orders, making it easier and more affordable to get the technology you need. We prioritize exceptional customer service and strive to meet all your IT needs. Explore our website today to discover our range of products and services.
    </div> *}
    {block name='hook_footer'}
      {hook h='displayFooterLinks'}
    {/block}
  </div>
</div>

<div class="footer-footer footer-footer-home">
  {block name='copyright_link'}
    <a href="https://www.prestashop.com" target="_blank" rel="noopener noreferrer nofollow">
      {l s='%copyright% %year%, All rights reserved Allworld Comunications' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
    </a>
  {/block}
</div>
<div>
{else}
<div class="footer-body">
  <div class="footer-body-head">
    <div class="logo-container">
      {renderLogo}
    </div>
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
  <div class="footer-body-content">
    {block name='hook_footer'}
      {hook h='displayFooterLinks'}
    {/block}
    <div class="footer-extra">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>
<div class="footer-footer">
  {block name='copyright_link'}
    <a href="https://www.prestashop.com" target="_blank" rel="noopener noreferrer nofollow">
      {l s='%copyright% %year%, All rights reserved Allworld Comunications' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
    </a>
  {/block}
</div>
<div>
{block name='hook_footer'}
  {hook h='displayFooter'}
{/block}
{/if}

<!-- Messenger Chat Plugin Code -->
<div id="fb-root"></div>

<!-- Your Chat Plugin code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "107399630876258");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v16.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
</div>
