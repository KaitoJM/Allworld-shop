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
})