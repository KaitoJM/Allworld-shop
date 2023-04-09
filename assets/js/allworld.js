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
  });

  function initProductCoverCarousel() {
    const product_image_cover_carousel = $('.product-cover-carousel').owlCarousel({
      loop:false,
      margin:30,
      items: 1,
      autoplay: false,
      slideSpeed: 1000,
      fluidSpeed: true,
      smartSpeed: 1000,
      dotsContainer: '.product-images'
    })
  
    $('.thumb-container').click(function () {
      product_image_cover_carousel.trigger('to.owl.carousel', [$(this).index(), 500]);
    });
  }

  initProductCoverCarousel();

  prestashop.on('updatedProduct', function() {
    initProductCoverCarousel();
  })

  prestashop.on('updateCart', function() {
    if (localStorage.getItem('directToCheckOut')) {
      localStorage.removeItem('directToCheckOut');
      location.href = prestashop.urls.pages.order;
    }
  })

  $(document).on('change', '.payment-method-chck', function() {
    $('.payment-option-item').removeClass('selected');
    if ($(this).prop('checked')) {
      $(this).closest('.payment-option-item').addClass('selected');
    }
  })

  $(document).on('click', '.tab-filter-status', function(e) {
    $('.order-table tbody tr').hide();
    $('.orders-tab li').removeClass('active')
    $(this).closest('li').addClass('active')

    if ($(this).hasClass('tab-all')) {
      $('.order-table tbody tr').show();
    }

    if ($(this).hasClass('tab-to-pay')) {
      $('.order-table tbody tr[data-paid="0"]').show();
    }

    if ($(this).hasClass('tab-to-ship')) {
      $('.order-table tbody tr[data-paid="1"][data-shipped="0"]').show();
    }

    if ($(this).hasClass('tab-to-receive')) {
      $('.order-table tbody tr[data-paid="1"][data-shipped="1"][data-id_order_state!="5"]').show();
    }

    if ($(this).hasClass('tab-completed')) {
      $('.order-table tbody tr[data-id_order_state="5"]').show();
    }

    e.preventDefault();
  });

  $(document).on('click', '.product-details-container .wish-list-trigger', function(e) {
    $(this).closest('.product-details-container').find('.wishlist-button-add').trigger('click');
    e.preventDefault()
  });

  $(document).on('click', '.add-to-whish-list', function(e) {
    $(this).closest('.product').find('.wishlist-button-add').trigger('click');
    e.preventDefault()
  });
})


$(document).on('click', '.buy-now', function(e) {
  $(this).closest('.add').find('.add-to-cart').trigger('click');
  localStorage.setItem('directToCheckOut', true);
  e.preventDefault();
})

$(document).on('click', '.product-buy-now', function(e) {
  $(this).closest('.display-hover').find('.product-add-to-cart').trigger('click');
  localStorage.setItem('directToCheckOut', true);
  e.preventDefault();
})

// $(document).on('click', '.add-to-whish-list', function() {
//   // Get the product ID and customer ID
//   var productId = $(this).data('product_id');

//   // Send an AJAX request to add the product to the wishlist
//   $.ajax({
//       type: 'POST',
//       url: 'index.php?controller=module&module=blockwishlist&action=cart',
//       async: true,
//       cache: false,
//       dataType : "json",
//       data: {
//           id_product: productId,
//           token: prestashop.customer.static_token,
//       },
//       success: function(data) {
//           if (data.success) {
//               // Product added to wishlist successfully
//           } else {
//               // Error adding product to wishlist
//           }
//       }
//   });
// })