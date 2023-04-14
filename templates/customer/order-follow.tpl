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
  {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
{/block}

{assign var="current" value="history"}
{assign var="current_sub" value="returns"}

{block name='page_content'}
  <div class="box">
    {if $ordersReturn && count($ordersReturn)}

      <table class="table aw-table">
        <thead class="thead-default">
          <tr>
            <th>{l s='Order' d='Shop.Theme.Customeraccount'}</th>
            <th>{l s='Return' d='Shop.Theme.Customeraccount'}</th>
            <th>{l s='Package status' d='Shop.Theme.Customeraccount'}</th>
            <th>{l s='Date issued' d='Shop.Theme.Customeraccount'}</th>
            <th>{l s='Returns form' d='Shop.Theme.Customeraccount'}</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$ordersReturn item=return}
            <tr>
              <td><a href="{$return.details_url}">{$return.reference}</a></td>
              <td><a href="{$return.return_url}">{$return.return_number}</a></td>
              <td><span class="pill">{$return.state_name}</span></td>
              <td>{$return.return_date}</td>
              <td class="text-sm-center">
                {if $return.print_url}
                  <a href="{$return.print_url}">{l s='Print out' d='Shop.Theme.Actions'}</a>
                {else}
                  -
                {/if}
              </td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    {else}
      <center>
        <p>You have no return requests yet.</p>
      </center>
    {/if}
  </div>

{/block}
