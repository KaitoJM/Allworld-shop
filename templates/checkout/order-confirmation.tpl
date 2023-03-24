{extends file='page.tpl'}

{block name='page_content_container' prepend}
    <section id="content-hook_order_confirmation" class="box box-order-confirm">
      <div class="box-head">
        {block name='order_confirmation_header'}
          <h3 class="h1 card-title">
            {l s='Thank you for your purchase!' d='Shop.Theme.Checkout'}
          </h3>
        {/block}
      </div>
      <div class="card-block">
        <br />
        <div class="row">
          <div class="msg-head">
            <p class="email-msg">
              {l s='We send an email along with your purchase details at ' d='Shop.Theme.Checkout'}
              <span class="email">{$customer.email}</span>

              {if $order.details.invoice_url}
                {* [1][/1] is for a HTML tag. *}
                {l
                  s='You can also [1]download your invoice[/1]'
                  d='Shop.Theme.Checkout'
                  sprintf=[
                    '[1]' => "<a href='{$order.details.invoice_url}'>",
                    '[/1]' => "</a>"
                  ]
                }
              {/if}
            </p>
            <p>
            {l s='Your reference code is [1]%reference%[/1]' d='Shop.Theme.Checkout' 
              sprintf=[
                '%reference%' => $order.details.reference,
                '[1]' => "<strong>",
                '[/1]' => "</strong>"
              ]
            }
            </p>
          </div>
          <div class="col-md-12">
            {block name='hook_order_confirmation'}
              {$HOOK_ORDER_CONFIRMATION nofilter}
            {/block}

            {block name='order_confirmation_table'}
              {include
                file='checkout/_partials/order-confirmation-table.tpl'
                products=$order.products
                subtotals=$order.subtotals
                totals=$order.totals
                labels=$order.labels
                add_product_link=false
              }
            {/block}

            {* {block name='order_details'}
              <div id="order-details" class="col-md-4">
                <h3 class="h3 card-title">{l s='Order details' d='Shop.Theme.Checkout'}:</h3>
                <ul>
                  <li id="order-reference-value">{l s='Order reference: %reference%' d='Shop.Theme.Checkout' sprintf=['%reference%' => $order.details.reference]}</li>
                  <li>{l s='Payment method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.details.payment]}</li>
                  {if !$order.details.is_virtual}
                    <li>
                      {l s='Shipping method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.carrier.name]}<br>
                      <em>{$order.carrier.delay}</em>
                    </li>
                  {/if}
                </ul>
              </div>
            {/block} *}

            {* {block name='hook_payment_return'}
              {if ! empty($HOOK_PAYMENT_RETURN)}
              <section id="content-hook_payment_return" class="card definition-list">
                <div class="card-block">
                  <div class="row">
                    <div class="col-md-12">
                      {$HOOK_PAYMENT_RETURN nofilter}
                    </div>
                  </div>
                </div>
              </section>
              {/if}
            {/block} *}
          
            {block name='customer_registration_form'}
              {if $customer.is_guest}
                <div id="registration-form" class="card">
                  <div class="card-block">
                    <h4 class="h4">{l s='Save time on your next order, sign up now' d='Shop.Theme.Checkout'}</h4>
                    {render file='customer/_partials/customer-form.tpl' ui=$register_form}
                  </div>
                </div>
              {/if}
            {/block}
          
            {block name='hook_order_confirmation_1'}
              {hook h='displayOrderConfirmation1'}
            {/block}

            <div class="action-footer">
              <a href="./" class="cont-shopping">{l s='Continue Shopping' d='Shop.Theme.Checkout'}</a>
            </div>
          
          </div>
        </div>
      </div>
    </section>
{/block}

{block name='page_content_container'}
  {block name='hook_order_confirmation_2'}
    <section id="content-hook-order-confirmation-footer">
      {hook h='displayOrderConfirmation2'}
    </section>
  {/block}
{/block}
