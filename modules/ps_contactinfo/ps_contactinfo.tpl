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

<div class="block-contact">
  {* <p class="h3">{l s='Contact us' d='Shop.Theme.Global'}</p> *}
  <div id="contact-infos">
    <ul>
      {* <li>{$contact_infos.address.formatted nofilter}</li> *}
      {if $contact_infos.phone}
        <li>
        {l s='Call us: [1]%phone%[/1]'
          sprintf=[
          '[1]' => '<span>',
          '[/1]' => '</span>',
          '%phone%' => $contact_infos.phone
          ]
          d='Shop.Theme.Global'
        }
        </li>
      {/if}
      {* {if $contact_infos.fax}
        <li>
        {l
          s='Fax: [1]%fax%[/1]'
          sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%fax%' => $contact_infos.fax
          ]
          d='Shop.Theme.Global'
        }
        </li>
      {/if} *}
      {if $contact_infos.email && $display_email}
        {* <li> *}
        {* <i class="fa fa-envelope">
        </i> *}
          {* {l s='Email us:' d='Shop.Theme.Global'} *}
          {* {mailto address=$contact_infos.email encode="javascript"} *}
          {* sales@allworld.info
        </li>
        <li>
        <i class="fa fa-phone"> *}
        {* </i>
        0966-891-1848 *}
        {* </li> *}
      {/if}
    </ul>
  </div>
</div>
