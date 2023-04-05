jQuery(function() {
  $('#image-slider').owlCarousel({
    loop:true,
    margin:10,
    items: 1,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true
  })
  $('.product-images-carousel').owlCarousel({
    loop:true,
    margin:10,
    items: 4,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true
  })
  $('.brand-carousel').owlCarousel({
    loop:true,
    margin:30,
    items: 6,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true
  })
})

$(document).on('click', '.product-buy-now', function(e) {
  $(this).closest('.display-hover').find('.product-add-to-cart').trigger('click');
  location.href = prestashop.urls.pages.order;
})

$(document).on('click', '.add-to-whish-list', function() {
  // Get the product ID and customer ID
  var productId = $(this).data('product_id');

  // Send an AJAX request to add the product to the wishlist
  $.ajax({
      type: 'POST',
      url: 'index.php?controller=module&module=blockwishlist&action=cart',
      async: true,
      cache: false,
      dataType : "json",
      data: {
          id_product: productId,
          token: prestashop.customer.static_token,
      },
      success: function(data) {
          if (data.success) {
              // Product added to wishlist successfully
          } else {
              // Error adding product to wishlist
          }
      }
  });
})