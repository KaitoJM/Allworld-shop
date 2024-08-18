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
{extends file='page.tpl'}

{block name='notifications'}{/block}

{block name='page_header_container'}
{/block}

{block name='page_content_container'}
  <section id="content" class="page-content">
    {block name='page_content_top'}
      {block name='customer_notifications'}
        {include file='_partials/notifications.tpl'}
      {/block}
    {/block}
    
    <div class="my-account-container">
      <div class="my-account-nav-containner">
        <h2>Hello, {$customer.firstname}</h2>
        <ul>
          <li>
            <a href="{$urls.pages.my_account}" class="{if $current == 'my-account'}current{/if}">Manage My Account</a>
            <ul>
              <li><a href="{$urls.pages.identity}" class="{if isset($current_sub) && ($current_sub == 'my-profile')}active{/if}">My Profile</a></li>
              <li><a href="{$urls.pages.addresses}" class="{if isset($current_sub) && ($current_sub == 'address-book')}active{/if}">Address Book</a></li>
            </ul>
          </li>
          <li>
            <a href="{$urls.pages.history}" class="{if $current == 'history'}current{/if}">My Orders</a>
            <ul>
              {if $configuration.return_enabled && !$configuration.is_catalog}
                <li><a href="{$urls.pages.order_follow}" class="{if isset($current_sub) && ($current_sub == 'returns')}active{/if}">Returns</a></li>
              {/if}
              <li><a href="{$urls.pages.history}?cancellation=true" class="{if isset($current_sub) && ($current_sub == 'cancellations')}active{/if}">Cancellations</a></li>
              {* <li><a href="{$urls.pages.order_slip}" class="{if $current_sub == 'credit-slips'}active{/if}">Credit slips</a></li> *}
            </ul>
          </li>
          <li>
            <a href="{$urls.base_url}module/blockwishlist/lists" class="{if $current == 'wishlist'}current{/if}">Wishlist</a>
          </li>
          {if $configuration.voucher_enabled && !$configuration.is_catalog}
            <li>
              <a href="{$urls.pages.discount}" class="{if $current == 'vouchers'}current{/if}">Vouchers</a>
            </li>
          {/if}
        </ul>
        <br />
        <a href="{$urls.actions.logout}" class="btn-logout">
          {l s='Sign out' d='Shop.Theme.Actions'}
        </a>
      </div>
      <div class="my-account-page-container">
        <header class="page-header">
          {block name='may_account_title'}
            <h1>{$smarty.block.child}</h1>
          {/block}
          {block name='my_account_header_action'}
            {* header action *}
            <div class="header-action">{$smarty.block.child}</div>
          {/block}
        </header>
        {block name='page_content'}
          <!-- Page content -->
        {/block}
      </div>
    </div>
  </section>
{/block}