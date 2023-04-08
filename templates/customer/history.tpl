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
  {l s='My Orders' d='Shop.Theme.Customeraccount'}
{/block}

{assign var="current" value="history"}

{block name='page_content'}
  <div class="box">
  <ul class="orders-tab">
    <li class="active"><a href="#" class="tab-filter-status tab-all">All</a></li>
    <li><a href="#" class="tab-filter-status tab-to-pay">To Pay</a></li>
    <li><a href="#" class="tab-filter-status tab-to-ship">To Ship</a></li>
    <li><a href="#" class="tab-filter-status tab-to-receive">To Receive</a></li>
    <li><a href="#" class="tab-filter-status tab-completed">Completed</a></li>
  </ul>
  <p class="semi-title">Recent Orders</p>
  {if $orders}
      <table class="order-table table table-striped table-bordered table-labeled hidden-sm-down">
        <thead class="thead-default">
          <tr>
            <th>{l s='Order #' d='Shop.Theme.Checkout'}</th>
            <th>{l s='Placed On' d='Shop.Theme.Checkout'}</th>
            <th>{l s='Payment' d='Shop.Theme.Checkout'}</th>
            <th>{l s='Total' d='Shop.Theme.Checkout'}</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$orders item=order}
            <tr data-id_order_state="{$order.history.current.id_order_state}" data-shipped="{$order.history.current.shipped}" data-paid="{$order.history.current.paid}">
              <td style="width:120px">
                <a href="{$order.details.details_url}">
                  {$order.details.reference}
                </a>
              </td>
              <td>{$order.details.order_date}</td>
              <th>{$order.details.payment}</th>
              <td class="text-xs-right">{$order.totals.total.value}</td>
              <td>
                <span
                  class="label label-pill {$order.history.current.contrast}"
                  style="background-color:{$order.history.current.color}"
                >
                  {$order.history.current.ostate_name}
                </span>
              </td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    {/if}
  </div>
{/block}
