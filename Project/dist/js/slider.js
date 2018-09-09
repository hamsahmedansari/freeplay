$(document).ready(function () {

    $('.slider-for-movies').owlCarousel({
        loop: false,
        margin: 1,
        responsiveClass: true,
        nav: true,
        navText: ["<span class='fa fa-chevron-left left-slider'></span>", "<span class='fa fa-chevron-right right-slider'></span>"],
        autoplay: true,
        autoplayTimeout: 1000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            400: {
                items: 3
            },
            530: {
                items: 4
            },
            768: {
                items: 5
            },
            1000: {
                items: 5
            }
        }
    });

    $('.slider-for-dramas,.slider-for-songs').owlCarousel({
        loop: false,
        margin: 30,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplay: true,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            400: {
                items: 3
            },
            530: {
                items: 4
            },
            768: {
                items: 5
            },
            1000: {
                items: 6
            }
        }
    })
    $('.slider-for-post').owlCarousel({
        loop: false,
        margin: 1,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 1000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            400: {
                items: 3
            },
            530: {
                items: 4
            },
            768: {
                items: 5
            },
            1000: {
                items: 6
            }
        }
    })
    
    function owl(test, left, right) {

        var owl = $(test);
        owl.owlCarousel();
        // Go to the next item
        $(left).click(function () {
            owl.trigger('next.owl.carousel');
        })
        // Go to the previous item
        $(right).click(function () {
            // With optional speed parameter
            // Parameters has to be in square bracket '[]'
            owl.trigger('prev.owl.carousel');
        })
    }

    owl('.slider-for-dramas', '.drama-right', '.drama-left');
    owl('.slider-for-songs', '.song-right', '.song-left');
    owl('.slider-for-post', '.slider_custom_right_arrow', '.slider_custom_left_arrow');

    $(".custom-nav-item-for-index").click(function () {

        $(".custom-nav-item-for-index").removeClass("custom-index-nav-bottom-hover");
        $(this).addClass("custom-index-nav-bottom-hover");

    });
    var centerslider_play_or_pouse = true;
    $(".center_silder_play_pause").click(function () {
        if (centerslider_play_or_pouse == true) {
            $(".center_silder_play_pause").removeClass("fa-pause");
            $(".center_silder_play_pause").addClass("fa-play");

            $('.slider-for-post').trigger('stop.owl.autoplay');

            //simple one (EDIT: not enough to make it work after testing it):
            //$('.owl-carousel').trigger('changeOption.owl.carousel', { autoplay: false });

            //or more complicated (will work for one carousel only, or else use 'each'):
            //EDIT: this one seems to work
            var carousel = $('.slider-for-post').data('owl.carousel');
            carousel.settings.autoplay = false; //don't know if both are necessary
            carousel.options.autoplay = false;
            $('.slider-for-post').trigger('refresh.owl.carousel');
            centerslider_play_or_pouse = false;
        }
        else if (centerslider_play_or_pouse == false) {
            $(".center_silder_play_pause").addClass("fa-pause");
            $(".center_silder_play_pause").removeClass("fa-play");
            $('.slider-for-post').trigger('play.owl.autoplay');

            //simple one (EDIT: not enough to make it work after testing it):
            //$('.owl-carousel').trigger('changeOption.owl.carousel', { autoplay: false });

            //or more complicated (will work for one carousel only, or else use 'each'):
            //EDIT: this one seems to work
            var carousel = $('.slider-for-post').data('owl.carousel');
            carousel.settings.autoplay = true; //don't know if both are necessary
            carousel.options.autoplay = true;
            $('.slider-for-post').trigger('refresh.owl.carousel');
            centerslider_play_or_pouse = true;
        }
    });

    //end
    $(".owl-carousel").owlCarousel();
});

