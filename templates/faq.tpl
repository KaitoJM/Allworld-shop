{extends file='page.tpl'}

{block name='page_content'}
    <div class="page-header-section">
        <ul class="breadcrumbs">
            <li><a href="{$urls.base_url}">Home</a></li>
            <li class="icon"><i class="fa fa-chevron-right"></i></li>
            <li><a href="{$urls.base_url}faq">FAQ's</a></li>
        </ul>
        <h1>Frequently Asked<br />Questions</h1>
        <div class="actions">
            <div class="left">
                <a class="btn" id="btn-contact-scroll">Contact us</a>
            </div>
            <div class="email-info">
                <p class="email">customercare@allworld.info</p>
                <p>or send as an email</p>
            </div>
        </div>
    </div>
    <div class="section">
        <div class="faq-section">
            <div class="section-detail">
                <h3>Payment FAQ's</h3>
            </div>
            <div class="section-content">
                <ul class="accordion-list">
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">Can I pay in cash and use an installment plan?</h4>
                            <p class="section-item-content">Yes, you can make a cash down payment, and the remaining balance can be paid through an installment plan. We have two installment options for this process: Home Credit and Skyro. <br>
                            Requirements: <br>
                            ➢ Downpayment <br> 
                            ➢ 1 Valid ID
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">Are online installment payments available?</h4>
                            <p class="section-item-content">Currently, installment options are only available for walk-in customers.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">Is there interest on credit card payments?</h4>
                            <p class="section-item-content">Credit card payments for both installment and straight payments are system-generated and may include
                            interest depending on your bank's policy.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">What are the benefits and terms of PayMongo card installments?</h4>
                            <p class="section-item-content">Customers can enjoy a convenient way to make 0%-interest credit card installment payments through
                            PayMongo, eliminating lengthy negotiations. They can choose from three flexible options: 3 months (4%
                            fee), 6 months (6% fee), or 12 months (12% fee). Please note that the minimum transaction amount for
                            installments is Php 3,000; transactions below this amount will not be processed. Currently, installments
                            are available only for Security Bank, LandBank, and Asia United Bank (AUB) cardholders, with more banks
                            coming soon.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">Is there a refund for the down payment?</h4>
                            <p class="section-item-content">Customers who back out or refuse to receive their order may not be eligible for a refund of their down
                            payment. Additionally, customers are allotted 7 days to complete their payment; beyond this period, the
                            item will be returned.</p>
                        </div>
                    </li>
                </ul>
                <div class="payment-option-section">
                    <h4>Payment Options</h4>
                    <div class="po-grid">
                        <div class="po-grid-item">
                            <div class="po-item-icon">
                                <img src="{$urls.theme_assets}/icons/cash.png" />
                            </div>
                            <div class="po-item-content">
                                <h5>Cash</h5>
                                <p>
                                Pay upon pickup or delivery.
                                </p>
                            </div>
                        </div>
                        <div class="po-grid-item">
                            <div class="po-item-icon">
                                <img src="{$urls.theme_assets}/icons/payment.png" />
                            </div>
                            <div class="po-item-content">
                                <h5>E-Wallet Payment</h5>
                                <p>
                                Available through Gcash and Grab Pay Via Paymongo.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="po-grid">
                        <div class="po-grid-item">
                            <div class="po-item-icon">
                                <img src="{$urls.theme_assets}/icons/bank.png" />
                            </div>
                            <div class="po-item-content">
                                <h5>Bank</h5>
                                <p>
                                Options includes BPI, BDO and Metrobank via Paymongo.
                                </p>
                            </div>
                        </div>
                        <div class="po-grid-item">
                            <div class="po-item-icon">
                                <img src="{$urls.theme_assets}/icons/installment.png" />
                            </div>
                            <div class="po-item-content">
                                <h5>Installment</h5>
                                <p>
                                Credit cards from BDO, BPI, and Metrobank are accepted. Installments for
                                Home Credit and Skyro can also be made without a credit card.
                                 </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="faq-section">
            <div class="section-detail">
                <h3>Delivey & Shipping FAQ</h3>
            </div>
            <div class="section-content">
                <ul class="accordion-list">
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">What are the delivery options available for purchases below ₱1,000?</h4>
                            <p class="section-item-content">If a customer's purchase is below ₱1,000, they can opt for: <br>
                            • Cash on Delivery (COD) or Cash on Pickup (COP) via LBC or JnT. <br>
                            • A shipping fee of ₱80 can be paid through PayMongo. <br>
                            • Delivery can be completed via Store Pickup, LBC Claim, or Door to Door service.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">How can I avail of free shipping for laptops and printers?</h4>
                            <p class="section-item-content">Customers purchasing a laptop or printer automatically qualify for free shipping. No minimum purchase
                            is required for these items, and they can choose between: <br>
                            • Store Pickup <br>
                            • Door to Door Delivery via LBC</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">What is the minimum purchase required for free shipping on other categories?</h4>
                            <p class="section-item-content">For categories other than laptops and printers, customers must make a purchase of ₱15,000 or more via
                            PayMongo to avail of a free shipping. Eligible delivery options include: <br>
                            • Store Pickup <br>
                            • Door to Door Delivery via LBC</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">What happens if my purchase is below ₱15,000 but I want to buy items other than laptops and
                            printers?</h4>
                            <p class="section-item-content">If the purchase is below ₱15,000, customers must pay the shipping fee. They can choose from: <br>
                            • Door to Door Delivery via LBC (with shipping fee) <br>
                            • Store Pickup (with shipping fee)</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">Can I use a promo code for free shipping?</h4>
                            <p class="section-item-content">Yes, if we have a campaign or promotion, these can be found on our pages or social media: <br>
                            • For laptops and printers, free shipping is automatic. <br>
                            • For other categories, you must purchase ₱15,000 or more to use a free shipping promo code.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">How can I confirm if my order qualifies for free delivery?</h4>
                            <p class="section-item-content">To confirm your order qualifies for free delivery: <br>
                            • Ensure your total is ₱15,000 or more for non-laptop and non-printer items. <br>
                            • If purchasing a laptop or printer, you qualify automatically.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">How can I track my order</h4>
                            <p class="section-item-content">Once your order has shipped, you will receive a tracking number via email. You can use this number on
                            the website of our partner logistics to track your shipment.
                            </p>
                        </div>
                    </li>
                    <li>
                    <div class="section-arrow">
                        <i class="fa fa-chevron-down arrow-indicator"></i>
                    </div>
                    <div class="section-item">
                        <h4 class="section-item-title">Will it be a same day delivery?</h4>
                        <p class="section-item-content">Customers whose orders are placed before the 2 PM cut-off time are eligible for same-day delivery, with
                        items typically arriving within 1-4 hours.
                        </p>
                    </div>
                </li>
                <li>
                <div class="section-arrow">
                    <i class="fa fa-chevron-down arrow-indicator"></i>
                </div>
                <div class="section-item">
                    <h4 class="section-item-title">Is there a refund for the downpayment?</h4>
                    <p class="section-item-content">Please take a moment to visit our return and refund policy for your reference. Thank you!
                    </p>
                </div>
            </li>
                </ul>
            </div>
        </div>
        {* <div class="faq-section">
            <div class="section-detail">
                <h3>FAQ Section</h3>
            </div>
            <div class="section-content">
                <ul class="accordion-list">
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div> *}
        {* <div class="faq-section">
            <div class="section-detail">
                <h3>FAQ Section</h3>
            </div>
            <div class="section-content">
                <ul class="accordion-list">
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                    <li>
                        <div class="section-arrow">
                            <i class="fa fa-chevron-down arrow-indicator"></i>
                        </div>
                        <div class="section-item">
                            <h4 class="section-item-title">FAQ Section or Heading Sits Here</h4>
                            <p class="section-item-content">This is just placeholder text. Don’t be alarmed, this is just here to fill up space since your finalized copy isn’t ready yet. Once we have your content finalized, we’ll replace this placeholder text with your real content.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div> *}
    </div>
    <div class="white-section">
        {include file='_partials/contact-section.tpl'}
        {* {include file='_partials/branch-section.tpl'} *}
    </div>
{/block}