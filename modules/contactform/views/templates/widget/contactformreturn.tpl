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

<form action="{$urls.pages.contact}" method="post" {if $contact.allow_file_upload}enctype="multipart/form-data"{/if}>
    {if $notifications}
      <div class="col-xs-12 alert {if $notifications.nw_error}alert-danger{else}alert-success{/if}">
        <ul>
          {foreach $notifications.messages as $notif}
            <li>{$notif}</li>
          {/foreach}
        </ul>
      </div>
    {/if}
  
    {if !$notifications || $notifications.nw_error}
      <section class="form-fields">
  
        {* <div class="form-group row">
          <div class="col-md-9 col-md-offset-3">
            <h3 class="page-title">{l s='Contact us' d='Shop.Theme.Global'}</h3>
          </div>
        </div> *}
  
        <div class="form-group row">
          <label class="col-md-3 form-control-label" for="id_contact">{l s='Subject' d='Shop.Forms.Labels'}</label>
          <div class="col-md-6">
            <select name="id_contact" id="id_contact" class="form-control form-control-select">
              {* {foreach from=$contact.contacts item=contact_elt}
                <option value="{$contact_elt.id_contact}">{$contact_elt.name}</option>
              {/foreach} *}
              <option value="volvo">bingbing1</option>
              <option value="saab">Saab</option>
              <option value="fiat">Fiat</option>
              <option value="audi">Audi</option>
            </select>
          </div>
        </div>
        
        <div class="flex">
          <div class="form-group row">
            <label class="col-md-3 form-control-label" for="email">{l s='Email address' d='Shop.Forms.Labels'}</label>
            <div class="col-md-6">
              <input
                id="email"
                class="form-control"
                name="from"
                type="email"
                value="{$contact.email}"
                placeholder="{l s='your@email.com' d='Shop.Forms.Help'}"
              >
            </div>
          </div>
          
          {if $contact.orders}
            <div class="form-group row">
              <label class="col-md-3 form-control-label" for="id-order">{l s='Order reference' d='Shop.Forms.Labels'}</label>
              <div class="col-md-6">
                <select id="id-order" name="id_order" class="form-control form-control-select">
                  <option value="">{l s='Select reference' d='Shop.Forms.Help'}</option>
                  {foreach from=$contact.orders item=order}
                    <option value="{$order.id_order}">{$order.reference}</option>
                  {/foreach}
                </select>
              </div>
              <span class="col-md-3 form-control-comment">
                {l s='optional' d='Shop.Forms.Help'}
              </span>
            </div>
          {/if}
        </div>
  
        {if $contact.allow_file_upload}
          <div class="form-group row">
            <label class="col-md-3 form-control-label" for="file-upload">{l s='Attachment' d='Shop.Forms.Labels'}</label>
            <div class="col-md-6">
              <input id="file-upload" type="file" name="fileUpload" class="filestyle" data-buttonText="{l s='Choose file' d='Shop.Theme.Actions'}">
            </div>
            <span class="col-md-3 form-control-comment">
              {l s='optional' d='Shop.Forms.Help'}
            </span>
          </div>
        {/if}
  
        <div class="form-group row">
          <label class="col-md-3 form-control-label" for="contactform-message">{l s='Message' d='Shop.Forms.Labels'}</label>
          <div class="col-md-9">
            <textarea
              maxlength="300"
              id="contactform-message"
              class="form-control"
              name="message"
              placeholder="{l s='How can we help?' d='Shop.Forms.Help'}"
              rows="3"
            >{if $contact.message}{$contact.message}{/if}</textarea>
          </div>
        </div>
  
        {* {if isset($id_module)}
          <br />
          <div class="form-group row">
            <div class="offset-md-3">
              {hook h='displayGDPRConsent' id_module=$id_module}
            </div>
          </div>
        {/if} *}
  
      </section>
  
      <footer class="form-footer text-sm-right">
        <style>
          input[name=url] {
            display: none !important;
          }
        </style>
        <input type="text" name="url" value=""/>
        <input type="hidden" name="token" value="{$token}" />
        <input class="btn btn-primary aw-btn" type="submit" name="submitMessage" value="{l s='Send Message' d='Shop.Theme.Actions'}">
      </footer>
    {/if}
  
  </form>
  