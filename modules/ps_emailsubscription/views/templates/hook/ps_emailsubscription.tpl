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



<div class="block_newsletter col-lg-8 col-md-12 col-sm-12" id="blockEmailSubscription_{$hookName}">
<div class="row">
<div class="footerbanner">
<a href="#"><img src="{$urls.theme_assets}icons/footerp2.png" /></a>
</div>
<br>
<br>
    <h3 id="block-newsletter-label" >Subscribe to our newsletter <br><span style='font-family: Arial, Helvetica, sans-serif; font-size: 15px;'> and stay on the loop </span></br></h3>
    <div>
      <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
        <div class="row">
          <div class="col-xs-12">
            <div class="input-wrapper">
              <input
                name="email"
                type="email"
                value="{$value}"
                placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
                aria-labelledby="block-newsletter-label"
                required
              >
              <input
                class="btn btn-primary float-xs-right"
                name="submitNewsletter"
                type="submit"
                value="{l s='Subscribe' d='Shop.Theme.Actions'}"
              >
            </div>
            <input type="hidden" name="blockHookName" value="{$hookName}" />
            <input type="hidden" name="action" value="0">
            <div class="clearfix"></div>
          </div>
          <div class="col-xs-12">
              {* {if $conditions}
                <p>{$conditions}</p>
              {/if} *}
              {if $msg}
                <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                  {$msg}
                </p>
              {/if}
              {* {hook h='displayNewsletterRegistration'}
              {if isset($id_module)}
                {hook h='displayGDPRConsent' id_module=$id_module}
              {/if} *}
          </div>
        </div>
      </form>
    </div>
  </div>
  <br />
</div>

{* <a href="#"> <img src="{$urls.theme_assets}icons/giftwith1.png" style="position: fixed; z-index: 999; bottom: 30px; left: 30px; width: 80px;"> </a>
<a href="https://www.facebook.com/messages/t/107399630876258"> <img src="{$urls.theme_assets}icons/messenger.png" style="position: fixed; z-index: 999; bottom: 30px; right: 30px; width: 50px; "> </a> *}

<div class="newsletter-dialog-wrapper" style="display:none">
  <div class="newsletter-dialog">
    <div class="img-msg">
      <img src="{$urls.theme_assets}images/new_newsletter.svg" style="position: absolute;bottom: 0px;left: -6%;width:110%">
      {* <img src="{$urls.theme_assets}images/gift-top.png" style="position: absolute;top: -118px;left: 50%;transform: translateX(-50%);">
      <div class="main-msg">
        SUBSCRIBE
        <div>SALE</div>
        <small>UP TO 5% OFF</small>
      </div>
      <img src="{$urls.theme_assets}images/gift-bottom.png" style="position: absolute;bottom: -45px;left: 50%;width: 105%;transform: translateX(-50%);"> *}
    </div>
    <div class="form-container" id="blockEmailSubscription_{$hookName}2">
      <a href="#" class="close close-newsletter"><i class="fi-br-cross"></i></a>
      <h3>
        Subscribe to our<br />
        Newsletter
      </h3>
      <p>Subscribe now to enjoy a 5% discount<br />on your entire cart today!</p>
      <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}2" method="post">
        <label>Email <span style="color:#ED5500">*</span></label>
        <input type="email" name="email" class="form-control" required>
        <input class="btn" name="submitNewsletter" type="submit" value="Subscribe">
        <input type="hidden" name="blockHookName" value="displayFooterAfter">
        <input type="hidden" name="action" value="0">
      </form>
      {if $msg}
        <div class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
          {$msg}
        </div>
      {else}
        * Don’t worry we don’t spam
      {/if}
    {if $msg && !$nw_error}
      <script>
        localStorage.setItem("show_email_newsletter_dialog", 'hidden');
      </script>
    {/if}
    </div>
  </div>
</div>