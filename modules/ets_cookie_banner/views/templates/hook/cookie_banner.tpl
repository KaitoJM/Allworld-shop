{*
* 2007-2022  ETS-Soft
*
* NOTICE OF LICENSE
*
* This file is not open source! Each license that you purchased is only available for 1 wesite only.
* If you want to use this file on more websites (or projects), you need to purchase additional licenses.
* You are not allowed to redistribute, resell, lease, license, sub-license or offer our resources to any third party.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please, contact us for extra customization service at an affordable price
*
*  @author ETS-Soft <etssoft.jsc@gmail.com>
*  @copyright  2007-2022  ETS-Soft
*  @license    Valid for 1 website (or project) for each purchase of license
*  International Registered Trademark & Property of ETS-Soft
*}
{if $ETS_CB_COOKIE_BANNER_CONTENT}
    <style>
        {$banner_css nofilter}
    </style>
    <div class="ets_cookie_banber_block {$ETS_CB_COOKIE_BANNER_POSITION|escape:'html':'UTF-8'}">
        <div class="cookie-head">
            <div class="cookie-logo">
                <img src="{$urls.theme_assets}icons/cookie.png" />
            </div>
            <div class="cookie-title">We use cookies</div>
        </div>
        <div class="cookie-body">
            <div class="ets_cookie_banner_content">
                {$ETS_CB_COOKIE_BANNER_CONTENT nofilter}
            </div>
        </div>
        <div class="ets_cookie_banner_footer">
            <a class="btn btn-primary ets-cb-btn-ok" href="{$link_submit|escape:'html':'UTF-8'}" >{if $ETS_CB_COOKIE_BUTTON_LABEL}{$ETS_CB_COOKIE_BUTTON_LABEL|escape:'html':'UTF-8'}{else}{l s='Ok' mod='ets_cookie_banner'}{/if}</a>
            <span class="close_cookie">Nope!</span>
        </div>
    </div>
{/if}