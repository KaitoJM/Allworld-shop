{extends file='page.tpl'}
  
{block name='page_title'}
  <span class="sitemap-title">{l s='Custom page' d='Shop.Theme'}</span>
{/block}


{block name='page_content'}
    <div class="page-header-section about-section">
        <ul class="breadcrumbs">
            <li><a href="{$urls.base_url}">Home</a></li>
            <li class="icon"><i class="fa fa-chevron-right"></i></li>
            <li><a href="{$urls.base_url}about-us">About Us</a></li>
        </ul>
        <h1>About Us</h1>
        <h2>Established in the year 2010 as a retailer of cellphone and laptop.
        A go-to partner for all your technology needs, including computers, mobile phones, desktops, printers and many more.</h2>
    </div>

    <div class="about-us-images">
        <div class="img-item">
            <img src="{$urls.theme_assets}icons/sidemagsaysay.png" />
        </div>
        <div class="img-item">
            <img src="{$urls.theme_assets}icons/sidemagsaysay.png" />
        </div>
        <div class="img-item">
            <img src="{$urls.theme_assets}icons/sidemagsaysay.png" />
        </div>
    </div>

    <img src="{$urls.theme_assets}images/allworld-wide-logo.png"class="about-allworld-logo" />

    <div class="section">
        <div class="work-with-us-section">
            <div class="cover">
                <img src="{$urls.theme_assets}icons/sidemagsaysay.png" />
            </div>
            <div class="detail">
                <h3>Our Story</h3>
                <p class="bold">Established in the year 2010 as a retailer of cellphone and laptop. A go-to partner for all your technology needs, including computers, mobile phones, desktops, printers and many more.</p>
                <p>We offer comprehensive tech support services to help you keep your devices running smoothly and efficiently. Our team of experienced professionals is dedicated to providing reliable and knowledgeable support to businesses and individuals alike. Whether you need help with regular maintenance and updates, or assistance with more complex installations and upgrades, we are here
                to help.</p>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="work-with-us-section reverse">
            <div class="cover">
                <img src="{$urls.theme_assets}icons/mission1.png" />
            </div>
            <div class="detail">
                <h3>Vision</h3>
                <p>Committed to creating a better world for all, with a particular focus on improving the lives of Filipino citizens. Achieving this by delivering the highest quality mobile phones and electronic products that anticipate and satisfy people's needs and desires, while offering affordability and convenience.</p>
                <br />
                <h3>Mission</h3>
                <p>Provide exceptional assistance and support to our customers, ensuring that their needs and desires are anticipated and met with utmost satisfaction. Support the government in its efforts to increase employment and provide opportunities for our fellow Filipino citizens.</p>
            </div>
        </div>
    </div>
    {include file='_partials/site-features.tpl' wrap=true}
    {include file='_partials/branch-section.tpl'}
    {include file='_partials/join-us-section.tpl'}
{/block}
