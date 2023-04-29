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
  </div>
</div>
<div class="footer-footer">
  {block name='hook_footer_after'}
    {hook h='displayFooterAfter'}
  {/block}
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
