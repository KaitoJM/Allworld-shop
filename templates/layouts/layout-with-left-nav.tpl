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

 {include file='_partials/helpers.tpl'}

 <!doctype html>
 <html lang="{$language.locale}">
 
   <head>
     {block name='head'}
       {include file='_partials/head.tpl'}
     {/block}
   </head>

   <body id="{$page.page_name}" class="{$page.body_classes|classnames}">
     {block name='hook_after_body_opening_tag'}
       {hook h='displayAfterBodyOpeningTag'}
     {/block}
       
     <main>
        {block name='product_activation'}
          {include file='catalog/_partials/product-activation.tpl'}
        {/block}
        <header id="header">
          {block name='header'}
            {include file='_partials/header.tpl'}
          {/block}
          <div class="for-m" style="display:none;">
            {block name='header_top'}
              <div class="header-top">
                {hook h='displayTop'}
              </div>
            {/block}
          </div>
        </header>
    
        {include file='_partials/custom-menu.tpl'}
        <div class="main-layout">
          <div class="left-navigation">
            {block name='left_nav'}
              {include file='_partials/left-navigation.tpl'}
            {/block}
          </div>
          
          <div class="bannerhome">
          <h1 id="headban"> Where Technology <br>Meets Elegance</h1>
          <img id="bantop" src="{$urls.theme_assets}/icons/banner-top.png" />
          </div>
          {* <div class="tbanner">
            </div> *}

          <div class="main-content">
            <section id="wrapper">
                {block name='notifications'}
                {include file='_partials/notifications.tpl'}
                {/block}
        
                {hook h="displayWrapperTop"}
                <div class="container">
                  {* {block name='breadcrumb'}
                      {include file='_partials/breadcrumb.tpl'}
                  {/block} *}
          
                  {block name="content_wrapper"}
                      <div id="content-wrapper" class="js-content-wrapper left-column right-column col-sm-4 col-md-6">
                      {hook h="displayContentWrapperTop"}
                      {block name="content"}
                          <p>Hello world! This is HTML5 Boilerplate.</p>
                      {/block}
                      {hook h="displayContentWrapperBottom"}
                      </div>
                  {/block}
                </div>
                {hook h="displayWrapperBottom"}
            </section>
        
             <footer id="footer" class="js-footer">
                {block name="footer"}
                {include file="_partials/footer.tpl"}
                {/block}
            </footer>
          </div>
       </div>
 
     </main>
 
     {block name='javascript_bottom'}
       {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
     {/block}
 
     {block name='hook_before_body_closing_tag'}
       {hook h='displayBeforeBodyClosingTag'}
     {/block}
   </body>
 
 </html>
 