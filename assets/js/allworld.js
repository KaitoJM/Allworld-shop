jQuery(function () {
  $("#image-slider").owlCarousel({
    loop: true,
    margin: 10,
    items: 1,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
  });
  $("#image-slider1").owlCarousel({
    loop: true,
    margin: 10,
    items: 1,
    dots: false,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
  });
  $("#image-slider2").owlCarousel({
    loop: true,
    margin: 10,
    items: 1,
    dots: false,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
  });
  $(window).on("load", function () {
    setTimeout(() => {
      $("#image-slider1").trigger("refresh.owl.carousel");
      $("#image-slider2").trigger("refresh.owl.carousel");
    }, 50);
  });
  $(".product-images-carousel").owlCarousel({
    loop: true,
    margin: 10,
    items: 4,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
  });
  $(".brand-carousel").owlCarousel({
    loop: true,
    margin: 30,
    items: 6,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 4,
      },
      768: {
        items: 5,
      },
      1040: {
        items: 6,
      },
    },
  });
  $(".testimonials-carousel").owlCarousel({
    loop: true,
    margin: 0,
    items: 1,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
  });

  $(".blog-slider").owlCarousel({
    loop: true,
    margin: 30,
    items: 4,
    dots: true,
    autoplay: true,
    slideSpeed: 1000,
    fluidSpeed: true,
    smartSpeed: 1000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
    responsive: {
      0: {
        items: 1,
      },
      768: {
        items: 5,
      },
      1040: {
        items: 4,
      },
    },
  });

  $(".cover-item").zoom();

  function initProductCoverCarousel() {
    const product_image_cover_carousel = $(
      ".product-cover-carousel"
    ).owlCarousel({
      loop: false,
      margin: 30,
      items: 1,
      autoplay: false,
      slideSpeed: 1000,
      fluidSpeed: true,
      smartSpeed: 1000,
      dotsContainer: ".product-images",
    });

    $(".thumb-container").click(function () {
      product_image_cover_carousel.trigger("to.owl.carousel", [
        $(this).index(),
        500,
      ]);
    });
  }

  initProductCoverCarousel();

  prestashop.on("updatedProduct", function () {
    initProductCoverCarousel();
  });

  prestashop.on("updateCart", function () {
    if (localStorage.getItem("directToCheckOut")) {
      localStorage.removeItem("directToCheckOut");
      location.href = prestashop.urls.pages.order;
    }
  });

  $(document).on("change", ".payment-method-chck", function () {
    $(".payment-option-item").removeClass("selected");
    if ($(this).prop("checked")) {
      $(this).closest(".payment-option-item").addClass("selected");
    }
  });

  $(document).on("click", ".tab-filter-status", function (e) {
    $(".order-table tbody tr").hide();
    $(".orders-tab li").removeClass("active");
    $(this).closest("li").addClass("active");

    if ($(this).hasClass("tab-all")) {
      $(".order-table tbody tr").show();
    }

    if ($(this).hasClass("tab-to-pay")) {
      $('.order-table tbody tr[data-paid="0"]').show();
    }

    if ($(this).hasClass("tab-to-ship")) {
      $('.order-table tbody tr[data-paid="1"][data-shipped="0"]').show();
    }

    if ($(this).hasClass("tab-to-receive")) {
      $(
        '.order-table tbody tr[data-paid="1"][data-shipped="1"][data-id_order_state!="5"]'
      ).show();
    }

    if ($(this).hasClass("tab-completed")) {
      $('.order-table tbody tr[data-id_order_state="5"]').show();
    }

    e.preventDefault();
  });

  $(document).on(
    "click",
    ".product-details-container .wish-list-trigger",
    function (e) {
      $(this)
        .closest(".product-details-container")
        .find(".wishlist-button-add")
        .trigger("click");
      prestashop.emit("updatedWishlist");
      e.preventDefault();
    }
  );

  $(document).on("click", ".add-to-whish-list", function (e) {
    $(this).closest(".product").find(".wishlist-button-add").trigger("click");
    prestashop.emit("updatedWishlist");
    e.preventDefault();
  });

  updateWishlistCount();

  function updateWishlistCount() {
    $.get(
      prestashop.urls.base_url +
        "module/blockwishlist/action?action=getAllWishlist",
      null,
      function (data) {
        let count = 0;
        if (data) {
          const favorite = JSON.parse(data);

          favorite.wishlists.forEach((item, k) => {
            count += parseInt(item.nbProducts) || 0;
          });
        }

        if (count) {
          $(".link-fav").append('<span class="count">' + count + "</span>");
        }
      }
    );
  }

  $(document).on("click", ".link-categories", function (e) {
    $(".custom-main-menu").css({ zIndex: "999" }).show();
    setTimeout(function () {
      $(".custom-main-menu").addClass("open");
    }, 100);
    e.preventDefault();
  });
  $(document).on("click", ".category-close", function (e) {
    $(".custom-main-menu").removeClass("open");
    setTimeout(function () {
      $(".custom-main-menu").hide().css({ zIndex: "-9" });
    }, 300);
    e.preventDefault();
  });

  // Moi added

  $("#header .custom-main-menu li > a > img").click(function (e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).closest("li").parent("li").closest(".sub-menu").slideToggle();
  });

  // End Moi added
});

// newsletter dialog
let dialog_flg = localStorage.getItem("show_email_newsletter_dialog");
if (dialog_flg != "hidden") {
  setTimeout(function () {
    console.log("triggered shown");
    $(".newsletter-dialog-wrapper").fadeIn();
  }, 5000);
} else {
  console.log("triggered hidden", dialog_flg);
}
// ig copy ini para sa gift pero onclick

$(document).on("click", ".close-newsletter", function (e) {
  localStorage.setItem("show_email_newsletter_dialog", "hidden");
  $(".newsletter-dialog-wrapper").fadeOut();
  e.preventDefault();
});

$(document).on("click", ".buy-now", function (e) {
  $(this).closest(".add").find(".add-to-cart").trigger("click");
  localStorage.setItem("directToCheckOut", true);
  e.preventDefault();
});

$(document).on("click", ".product-buy-now", function (e) {
  $(this)
    .closest(".display-hover")
    .find(".product-add-to-cart")
    .trigger("click");
  localStorage.setItem("directToCheckOut", true);
  e.preventDefault();
});

$(document).on("click", ".sub-menu-img", function (e) {
  location.href = $(this).next().attr("href");
});

$(document).on("click", ".toggle-expand", function (e) {
  if ($(this).closest("li").find(".sub")[0]) {
    let sub = $(this).closest("li").find(".sub")[0];

    if (sub && $(sub).is(":visible")) {
      $(sub).hide();
      $(this).find(".fi").removeClass("fi-br-minus").addClass("fi-br-plus");
    } else {
      $(sub).show();
      $(this).find(".fi").removeClass("fi-br-plus").addClass("fi-br-minus");
    }
  }

  e.preventDefault();
});

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

$("#field-address1").change(function (e) {
  $("#field-address1").val($("#field-address1").val().trim());
});

$("#field-city").change(function (e) {
  $("#field-city").val($("#field-city").val().trim());
});

//custome page - jm
$(document).on("click", ".accordion-list>li", function () {
  if ($(this).find(".section-item-content").is(":hidden")) {
    $(this).find(".section-item-content").show();
    $(this).find(".arrow-indicator").addClass("open");
  } else {
    $(this).find(".section-item-content").hide();
    $(this).find(".arrow-indicator").removeClass("open");
  }
});

$("#btn-contact-scroll").click(function () {
  $([document.documentElement, document.body]).animate(
    {
      scrollTop: $(".contact-form-container").offset().top,
    },
    1000
  );
});

$("#btn-oppurtunity-scroll").click(function () {
  $([document.documentElement, document.body]).animate(
    {
      scrollTop: $(".headc").offset().top,
    },
    1000
  );
});
