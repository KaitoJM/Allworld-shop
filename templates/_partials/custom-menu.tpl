<div class="custom-main-menu {if $page.page_name == 'category'}category-menu{/if}">
  <a class="category-close" href="#"><i class="fi-br-cross"></i></a>

  <div class="mobile-search-wrapper">
    {widget name='ps_searchbar'}
  </div>

  <ul>
    <li>
      <a href="{$urls.base_url}18-smartphones">
        Smartphones
      </a>
      <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      <div class="sub-menu">
      <h1> Smartphones </h1>
        <ul class="justify">
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Apple">Apple</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Samsung">Samsung</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Huawei">Huawei</a>
          </li> *}
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Xiaomi">Xiaomi</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Oppo">Oppo</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Vivo">Vivo</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Realme">Realme</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Nokia">Nokia</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Tecno</a>
          </li>
        </ul>
        <div class="hotdealsmobile">
<h1> Hot Deals </h1>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdealsip15.png" style="width: 50%; height:50%;" id="imgd"/></a>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdeals13.png" style="width: 50%; height:50%;"id="imgd"/></a>
            </div>
        {* {include file='_partials/hotdeals.tpl'} *}
        <img src="{$urls.theme_assets}icons/bannersmartphone.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
    <a href="{$urls.base_url}20-laptops">Laptops</a>
    <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
    <div class="sub-menu">
    <h1> Laptops </h1>
      <ul>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Acer">Acer</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Asus">Asus</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Lenovo">Lenovo</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Huawei">Huawei</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Dell">Dell</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Hp">HP</a>
        </li>
        <li>
          <a href="{$urls.base_url}20-laptops?q=Brand-Gigabyte">Gigabyte</a>
        </li>
        <li>
        <a href="{$urls.base_url}20-laptops?q=Brand-Msi">MSI</a>
      </li>
      </ul>
      <div class="hotdealslaptop">
<h1> Hot Deals </h1>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdealshelios.png" style="width: 50%; height:50%;" id="imgd"/></a>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdealsgigabyte.png" style="width: 50%; height:50%;"id="imgd"/></a>
            </div>
      {* {include file='_partials/hotdeals.tpl'} *}
      <img src="{$urls.theme_assets}icons/bannerlaptops.png" style="width: 100%; height:100%;" id="imgban" />
    </div>
  </li>
  <li>
      <a href="{$urls.base_url}24-printing">
        Printing
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      </a>
      <div class="sub-menu">
      <h1> Printing </h1>
        <ul class="printing">
        <li>
            <a href="{$urls.base_url}24-printing?q=Brand-Brother">Brother</a>
          </li>
          <li>
            <a href="{$urls.base_url}24-printing?q=Brand-Canon">Canon</a>
          </li>
          <li>
            <a href="{$urls.base_url}24-printing?q=Brand-Epson">Epson</a>
          </li>
          <li>
            <a href="{$urls.base_url}24-printing?q=Brand-Hp">HP</a>
          </li>
        </ul>
        <div class="hotdealsprinting">
<h1> Hot Deals </h1>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdealsprinter1.png" style="width: 50%; height:50%;" id="imgd"/></a>
        <a href="#"><img src="{$urls.theme_assets}icons/hotdealsprinter2.png" style="width: 50%; height:50%;"id="imgd"/></a>
            </div>
        {* {include file='_partials/hotdeals.tpl'} *}
        <img src="{$urls.theme_assets}icons/bannerprinter.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}19-desktop-pc">
        Desktop PC
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      </a>
      <div class="sub-menu">
      <h1> Desktop PC </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}28-all-in-one-pc">All-In-One PC</a>
          </li>
          <li>
            <a href="{$urls.base_url}29-built-in-pc">Built-in PC</a>
          </li>
          <li>
            <a href="{$urls.base_url}48-chassis">Chassis</a>
          </li>
          <li>
            <a href="{$urls.base_url}49-power-supply">PowerSupply</a>
          </li>
          <li>
            <a href="{$urls.base_url}50-fan">Fan</a>
          </li>
          <li>
            <a href="{$urls.base_url}51-mother-board">Motherboard</a>
          </li>
          <li>
            <a href="{$urls.base_url}52-videocard">Videocard</a>
          </li>
          <li>
            <a href="{$urls.base_url}53-memory">Memory</a>
          </li>
          <li>
            <a href="{$urls.base_url}54-processor">Processor</a>
          </li>
          <li>
            <a href="{$urls.base_url}55-ssd">SSD</a>
          </li>
        </ul>
        <div class="sbb">
        <h1> Shop By Brands </h1>
        <ul class="justify2">
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-1stplayer">1stPlayer</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Acer">Acer</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Asus">Asus</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-AMD">AMD</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Antec">Antec</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Biostar">Biostar</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Corsair">Corsair</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Darkflash">Darkflash</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Deepcool">Deepcool</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Electron">Electron</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Esgaming">Esgaming</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Fractal">Fractal</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Frontier">Frontier</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Gigabyte">Gigabyte</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Intel">Intel</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Kebos">Kebos</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Lexar">Lexar</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Kingston">Kingston</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-LIAN-LI">Lian Li</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Msi">MSI</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-NZXT">NZXT</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Seagate">Seagate</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Silicon">Silicon</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-Transcend">Transcend</a>
          </li>
          <li>
            <a href="{$urls.base_url}19-desktop-pc?q=Brand-XPG">XPG</a>
          </li>
        </ul>
        </div>
        <img src="{$urls.theme_assets}icons/bannerdesktop.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}21-tablet-ipad">
        Tablets
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      </a>
      <div class="sub-menu">
      <h1> Tablets </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}21-tablet-ipad?q=Brand-Apple">Apple</a>
          </li>
          <li>
            <a href="{$urls.base_url}21-tablet-ipad?q=Brand-Samsung">Samsung</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}21-tablet-ipad?q=Brand-Huawei">Huawei</a>
          </li> *}
          <li>
            <a href="{$urls.base_url}21-tablet-ipad?q=Brand-Realme">Realme</a>
          </li>
          <li>
            <a href="{$urls.base_url}21-tablet-ipad?q=Brand-Doogee">Doogee</a>
          </li>
        </ul>
        <div class="hotdealstablets">
        <h1> Hot Deals </h1>
                <a href="#"><img src="{$urls.theme_assets}icons/hotdealsipad1.png" style="width: 50%; height:50%;" id="imgd"/></a>
                {* <a href="#"><img src="{$urls.theme_assets}icons/hotdeals.png" style="width: 50%; height:50%;"id="imgd"/></a> *}
                </div>
        {* {include file='_partials/hotdeals.tpl'} *}
        <img src="{$urls.theme_assets}icons/banneripad.png" style="width: 100%; height:100%;" id="imgbantab" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}22-essential">
        Essential
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      </a>
      <div class="sub-menu">
      <h1> Essential </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}30-mouse">Mouse</a>
          </li>
          <li>
            <a href="{$urls.base_url}31-keyboard">Keyboard</a>
          </li>
          <li>
            <a href="{$urls.base_url}32-data-storage">Data Storage</a>
          </li>
          <li>
            <a href="{$urls.base_url}59-mouse-pad">Mouse Pad</a>
          </li>
        </ul>
        <div class="sbbessential">
        <h1> Shop By Brands </h1>
        <ul class="justify2">
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-A4TECH">A4Tech</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Acer">Acer</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Banda">Banda</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Corsair">Corsair</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Oppo">Delux</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Genius">Genius</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Logitech">Logitech</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Rapoo">Rapoo</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Razer">Razer</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Redragon">Redragon</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Steelseries">Steelseries</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-Targus">Targus</a>
          </li>
          <li>
            <a href="{$urls.base_url}22-essential?q=Brand-UGreen">Ugreen</a>
          </li>
        </ul>
        </div>
        <img src="{$urls.theme_assets}icons/banneressential.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}23-sound-and-vision">
        Sound and Vision
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
      </a>
      <div class="sub-menu">
      <h1> Sound and Vision </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}33-speaker">Speaker</a>
          </li>
          <li>
            <a href="{$urls.base_url}34-headsets">Headsets</a>
          </li>
          <li>
            <a href="{$urls.base_url}35-monitor">Monitor</a>
          </li>
          <li>
            <a href="{$urls.base_url}36-cctv">CCTV</a>
          </li>
          <li>
            <a href="{$urls.base_url}47-headphones">Headphones</a>
          </li>
        </ul>
        <div class="sbbsoundandvision">
        <h1> Shop By Brands </h1>
        <ul class="justify2">
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-A4TECH">A4Tech</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Acer">Acer</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-AOpen">AOpen</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Bavin">Bavin</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Dahua">Dahua</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Edifier">Edifier</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Gigabyte">Gigabyte</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-HyperX">HyperX</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-JBL">JBL</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Logitech">Logitech</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Razer">Razer</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-Verbatim">Verbatim</a>
          </li>
          <li>
            <a href="{$urls.base_url}23-sound-and-vision?q=Brand-XO">XO</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Gigabyte</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Intel</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Kebos</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Lexar</a>
          </li> *}
        </ul>
        </div>
        <img src="{$urls.theme_assets}icons/bannersoundbanner.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}25-home-entertainment">
        Home Entertainment
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
        </a>
      <div class="sub-menu">
      <h1> Home Entertainment </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}37-smart">Smart</a>
          </li>
          <li>
            <a href="{$urls.base_url}38-globe">Globe</a>
          </li>
          <li>
            <a href="{$urls.base_url}39-chair">Gaming Chair</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}40-g-sat">G-Sat</a>
          </li> *}
          <li>
            <a href="{$urls.base_url}41-router">Router</a>
          </li>
          <li>
            <a href="{$urls.base_url}65-tv">TV</a>
          </li>
          <li>
            <a href="{$urls.base_url}74-drone">Drone</a>
          </li>
          <li>
            <a href="{$urls.base_url}75-gaming-console">Gaming Console</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}42-gma-tv-box">GMA TV Box</a>
          </li> *}
        </ul>
        <div class="sbbhomeandenter">
        <h1> Shop By Brands </h1>
        <ul class="justify2">
          <li>
            <a href="{$urls.base_url}25-home-entertainment?q=Brand-Globe">Globe</a>
          </li>
          <li>
            <a href="{$urls.base_url}25-home-entertainment?q=Brand-Acer">Acer</a>
          </li>
          <li>
            <a href="{$urls.base_url}25-home-entertainment?q=Brand-Asus">Asus</a>
          </li>
          <li>
          <a href="{$urls.base_url}25-home-entertainment?q=Brand-Samsung">Samsung</a>
        </li>
        <li>
        <a href="{$urls.base_url}25-home-entertainment?q=Brand-Nintendo">Nintendo</a>
      </li>
      <li>
      <a href="{$urls.base_url}25-home-entertainment?q=Brand-Dji">Dji</a>
    </li>
          {* <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Xiaomi">AMD</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Oppo">Antec</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Vivo">Biostar</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Realme">Corsair</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Nokia">Darkflash</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Deepcool</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Electron</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Esgaming</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Fractal</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Frontier</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Gigabyte</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Intel</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Kebos</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Lexar</a>
          </li> *}
        </ul>
        </div>
        <img src="{$urls.theme_assets}icons/bannerhome.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}60-power-solutions">
        Power Solutions
        <img src="{$urls.theme_assets}svg/fi-br-angle-small-right.svg" />
        </a>
      <div class="sub-menu">
      <h1> Power Solutions </h1>
        <ul>
          <li>
            <a href="{$urls.base_url}61-avr">AVR</a>
          </li>
          <li>
            <a href="{$urls.base_url}62-ups">UPS</a>
          </li>
          <li>
            <a href="{$urls.base_url}63-chargers">Chargers</a>
          </li>
        </ul>
        <div class="sbbpowersol">
        <h1> Shop By Brands </h1>
        <ul class="justify2">
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Bavin">Bavin</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Huntkey">Huntkey</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Kebos">Kebos</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Abrelex">Abrelex</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Secure">Secure</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-Cyberpower">Cyberpower</a>
          </li>
          <li>
            <a href="{$urls.base_url}60-power-solutions?q=Brand-APC">APC</a>
          </li>
          {* <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Huawei">Asus</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Xiaomi">AMD</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Oppo">Antec</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Vivo">Biostar</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Realme">Corsair</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Nokia">Darkflash</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Deepcool</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Electron</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Esgaming</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Fractal</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Frontier</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Gigabyte</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Intel</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Kebos</a>
          </li>
          <li>
            <a href="{$urls.base_url}18-smartphones?q=Brand-Tecno">Lexar</a>
          </li> *}
        </ul>
        </div>
        <img src="{$urls.theme_assets}icons/bannerpower.png" style="width: 100%; height:100%;" id="imgban" />
      </div>
    </li>
    <li>
      <a href="{$urls.base_url}27-promo" class="no-sub">Promo</a>
      {* <div class="sub-menu">
        <ul>
          <li>
            <a href="{$urls.base_url}43-weekly-deals">Weekly Deals</a>
          </li>
          <li>
            <a href="{$urls.base_url}46-payday-sale">Payday Sale</a>
          </li>
          <li>
            <a href="{$urls.base_url}66-summer-sale">Summer Sale</a>
          </li>
          <li>
            <a href="{$urls.base_url}67-double-digit-sale">Double Digit Sale</a>
          </li>
        </ul>
      </div> *}
    </li>
  </ul>
</div>