// código informado na documentação do Owl Carousel 2
$('.owl-carousel').owlCarousel({
    loop: true,
    items: 7,
    margin: 20,
    nav: false,
    dots: false,

    // responsivo
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:6
        }
    }
})
