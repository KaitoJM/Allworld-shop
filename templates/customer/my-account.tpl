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
{extends file='customer/page.tpl'}

{block name='may_account_title'}
  {l s='My Account' d='Shop.Theme.Customeraccount'}
{/block}

{assign var="current" value="my-account"}

{block name='page_content'}
  <div class="personal-info-block">
    <div class="personal-info box">
      <div class="title">
        Personal Information
        <a href="{$urls.pages.identity}">Update</a>
      </div>
      <img src="{$urls.theme_assets}images/customer-avatar.png" class="avatar" />
      <h4>{$customer.firstname} {$customer.lastname}</h4>
      <p>{$customer.email}</p>
    </div>
    <div class="address-info box">
      <div class="title">
        Address Book
        <a href="{$urls.pages.addresses}">Update</a>
      </div>
      {foreach from=$customer.addresses item="address" key="key"}
        <div class="address-block">
          <div class="address-title">{$address.alias}</div>
          <div class="address-content">
            <div class="addr-cname">{$address.firstname} {$address.lastname}</div>
            <div class="addr-address">{$address.address1} {$address.address2} {$address.city} City {$address.state}</div>
            <div class="addr-phone">{$address.phone}</div>
          </div>
        </div>
      {/foreach}
    </div>
  </div>
  {* <div class="order-info box">
    <div class="title">
      Recent Orders
    </div>
    <pre>{$orders|print_r}</pre>
  </div> *}
{/block}
