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
  {l s='My Orders' d='Shop.Theme.Customeraccount'} / <span class="mini">Order #{$order.details.reference}</span>
{/block}

{block name='my_account_header_action'}
  {if $order.details.reorder_url}
    <a href="{$order.details.reorder_url}" class="button-primary">{l s='Re-order' d='Shop.Theme.Actions'}</a>
  {/if}
{/block}

{assign var="current" value="history"}

{block name='page_content'}
  <div class="box">
    <div class="order-details-head">
      <div class="order-status">
        Order Status
        <span class="status" style="background-color:{$order.history.current.color}">
          {$order.history.current.ostate_name}
        </span>
      </div>
    </div>
    {block name='order_infos'}
      <div id="order-infos">
        <div>
          Order Placed: <strong>{$order.details.order_date}</strong>
        </div>
        <div class="pm-carrier-container">
          <div>
            <span class="lbl">Payment method :</span>
            <p>{$order.details.payment}</p>
          </div>
          <div class="line"></div>
          <div>
            <span class="lbl">Shipping method :</span>
            <p>{$order.carrier.name}</p>
            <small>Standard delivery</small>
          </div>
        </div>
        {if $order.details.invoice_url}
          <div>
            Invoice: 
            <a href="{$order.details.invoice_url}">
              {l s='Download your invoice as a PDF file.' d='Shop.Theme.Customeraccount'}
            </a>
          </div>
        {/if}
        {if $order.details.recyclable}
          <div>
            {l s='You have given permission to receive your order in recycled packaging.' d='Shop.Theme.Customeraccount'}
          </div>
        {/if}
        {if $order.details.gift_message}
          <div>{l s='You have requested gift wrapping for this order.' d='Shop.Theme.Customeraccount'}</div>
          <div>{l s='Message' d='Shop.Theme.Customeraccount'} {$order.details.gift_message nofilter}</div>
        {/if}
        {if $order.follow_up}
          <div>
            <p>{l s='Click the following link to track the delivery of your order' d='Shop.Theme.Customeraccount'}</p>
            <a href="{$order.follow_up}">{$order.follow_up}</a>
          </div>
        {/if}
      </div>
    {/block}
  </div>
  <br />
  <div class="flex">
    <div class="box order-history-container">
      {block name='order_history'}
        <section id="order-history">
          <h3 class="title">{l s='Follow your order\'s status step-by-step' d='Shop.Theme.Customeraccount'}</h3>
          <table class="order-table table table-striped table-bordered table-labeled hidden-xs-down">
            <thead class="thead-default">
              <tr>
                <th>{l s='Date' d='Shop.Theme.Global'}</th>
                <th>{l s='Status' d='Shop.Theme.Global'}</th>
              </tr>
            </thead>
            <tbody>
              {foreach from=$order.history item=state}
                <tr>
                  <td>{$state.history_date}</td>
                  <td>
                    <span class="label label-pill {$state.contrast}" style="background-color:{$state.color}">
                      {$state.ostate_name}
                    </span>
                  </td>
                </tr>
              {/foreach}
            </tbody>
          </table>
        </section>
      {/block}
    </div>
    <div class="box address-container">
      {block name='addresses'}
        <h3 class="title">Address Used</h3>
        <div class="addresses">
          {if $order.addresses.delivery}
            <article id="delivery-address" class="address-block">
              <div class="address-title">{l s='Delivery address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.delivery.alias]}</div>
              <div class="address-content">
                <div class="addr-cname">{$order.addresses.delivery.firstname} {$order.addresses.delivery.lastname}</div>
                <div class="addr-address">{$order.addresses.delivery.address1} {$order.addresses.delivery.address2} {$order.addresses.delivery.city} City {$order.addresses.delivery.state}</div>
                <div class="addr-phone">{$order.addresses.delivery.phone}</div>
              </div>
            </article>
          {/if}

          <article id="delivery-address" class="address-block">
            <div class="address-title">{l s='Invoice address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.invoice.alias]}</div>
            <div class="address-content">
              <div class="addr-cname">{$order.addresses.invoice.firstname} {$order.addresses.invoice.lastname}</div>
              <div class="addr-address">{$order.addresses.invoice.address1} {$order.addresses.invoice.address2} {$order.addresses.invoice.city} City {$order.addresses.invoice.state}</div>
              <div class="addr-phone">{$order.addresses.invoice.phone}</div>
            </div>
          </article>
        </div>
      {/block}
    </div>
  </div>
  <br />
  <div class="box">
    {$HOOK_DISPLAYORDERDETAIL nofilter}

    {block name='order_detail'}
      {if $order.details.is_returnable}
        {include file='customer/_partials/order-detail-return.tpl'}
      {else}
        {include file='customer/_partials/order-detail-no-return.tpl'}
      {/if}
    {/block}

    {block name='order_carriers'}
      {if $order.shipping}
        <div>
          <table class="table table-striped table-bordered hidden-sm-down">
            <thead class="thead-default">
              <tr>
                <th>{l s='Date' d='Shop.Theme.Global'}</th>
                <th>{l s='Carrier' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Weight' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Shipping cost' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Tracking number' d='Shop.Theme.Checkout'}</th>
              </tr>
            </thead>
            <tbody>
              {foreach from=$order.shipping item=line}
                <tr>
                  <td>{$line.shipping_date}</td>
                  <td>{$line.carrier_name}</td>
                  <td>{$line.shipping_weight}</td>
                  <td>{$line.shipping_cost}</td>
                  <td>{$line.tracking nofilter}</td>
                </tr>
              {/foreach}
            </tbody>
          </table>
          <div class="hidden-md-up shipping-lines">
            {foreach from=$order.shipping item=line}
              <div class="shipping-line">
                <ul>
                  <li>
                    <strong>{l s='Date' d='Shop.Theme.Global'}</strong> {$line.shipping_date}
                  </li>
                  <li>
                    <strong>{l s='Carrier' d='Shop.Theme.Checkout'}</strong> {$line.carrier_name}
                  </li>
                  <li>
                    <strong>{l s='Weight' d='Shop.Theme.Checkout'}</strong> {$line.shipping_weight}
                  </li>
                  <li>
                    <strong>{l s='Shipping cost' d='Shop.Theme.Checkout'}</strong> {$line.shipping_cost}
                  </li>
                  <li>
                    <strong>{l s='Tracking number' d='Shop.Theme.Checkout'}</strong> {$line.tracking nofilter}
                  </li>
                </ul>
              </div>
            {/foreach}
          </div>
        </div>
      {/if}
    {/block}

    {block name='order_messages'}
      {include file='customer/_partials/order-messages.tpl'}
    {/block}
  </div>
{/block}
