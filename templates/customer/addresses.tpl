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
  {l s='Address Book' d='Shop.Theme.Customeraccount'}
{/block}

{assign var="current" value="my-account"}
{assign var="current_sub" value="address-book"}

{block name='page_content'}
  <div class="box">
    <table class="aw-table">
      <tbody>
        {foreach $customer.addresses as $address}
          <tr>
            <td>
              <strong>{$address.firstname} {$address.lastname}</strong>
              <p>{$address.company}</p>
            </td>
            <td>
              <p class="address-build">{$address.address1} {$address.address2}, {$address.city}</p>
              <span class="pill">{$address.alias}</span>
            </td>
            <td>{$address.phone}</td>
            <td>{$address.postcode}</td>
            <td class="action">
              <a href="{url entity=address id=$address.id}" data-link-action="edit-address">
                <i class="fi-br-pencil-ruler"></i>
              </a>
              <a href="{url entity=address id=$address.id params=['delete' => 1, 'token' => $token]}" data-link-action="delete-address">
                <i class="fi-br-trash"></i>
              </a>
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
    <div class="addresses-footer">
      <a href="{$urls.pages.address}" data-link-action="add-address" class="aw-btn">
        <i class="fi-br-plus"></i>
        <span>{l s='Add new address' d='Shop.Theme.Actions'}</span>
      </a>
    </div>
  </div>
{/block}
