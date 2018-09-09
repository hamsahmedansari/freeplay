$(document).ready(function () {


    //slider
    //start

    var width_of_slider_post = $(".custom_slider_post").width();
    var no_of_slider_post = $(".custom_slider_post").length;

    var setting_width_of_slider = (width_of_slider_post * no_of_slider_post) + width_of_slider_post;
    var current_width_of_slider = $(".custom_outer_box").width();

    console.log("Post width : " + width_of_slider_post + "px");
    console.log("Post no : " + no_of_slider_post + "px");
    console.log("Main width will be  : " + setting_width_of_slider + "px");
    console.log("Main width  : " + current_width_of_slider + "px");

    $(".custom_outer_box").width(setting_width_of_slider + "px");


    console.log("Main current width  : " + $(".custom_outer_box").width() + "px");




    $(".custom-img-for-upper-model").click(function () {
        $(".custom-img-for-upper-model-open").attr('src', $(this).attr('src'));
    });


    $(".custom_slider_post").mouseenter(function () {
        $(".custom_slider_post").removeClass('scale-12');
        $(".custom_slider_post").addClass('scale-08');
        $(this).removeClass('scale-08');
        $(this).addClass('scale-12');
    });
    $(".custom_slider_post").mouseleave(function () {
        $(".custom_slider_post").removeClass('scale-12 scale-08');
    });

    //aside-height-margin    

    var aside_height = null;
    var aside_parrtent_height = null;
    aside_scroll();
    function aside_scroll() {

        if ($(document).width() > 992) {
            var footer_top_int = $("footer").offset().top;
            var footer_top = $('footer').css('height');
            footer_top = $('footer').css('height').substr(0, (footer_top.length - 2));
            footer_top = footer_top_int - (footer_top * 2);
            footer_top = Math.round(footer_top);


            var nav_height = $("nav").parent().css('height');
            nav_height = $('nav').css('height').substr(0, (nav_height.length - 2));

            var index_header_height = $("header").css('height');

            var header_height = null;
            if (index_header_height) {
                index_header_height = $('header').css('height').substr(0, index_header_height - 2);
                header_height = index_header_height
            } else {
                header_height = nav_height;
            }

            header_height = Math.round(header_height);

            footer_top = footer_top - 100;

            if ($(this).scrollTop() > header_height && $(this).scrollTop() <= (footer_top)) {
                $(".custom-side-fixed-on-scroll").addClass("position-fixed-for-custom");
                //$(".custom-side-fixed-on-scroll").removeClass("position-fixed-for-custom-mar");
                aside_height = $(".custom-side-fixed-on-scroll").css('height');
                aside_height = $(".custom-side-fixed-on-scroll").css('height').substr(0, (aside_height.length - 2));
                aside_parrtent_height = $(".custom-side-fixed-on-scroll").parent().css('height');
                aside_parrtent_height = $(".custom-side-fixed-on-scroll").parent().css('height').substr(0, (aside_parrtent_height.length - 2));

                $(".custom-side-fixed-on-scroll").css('margin-top', '0px');

                console.log('if');
            } else if ($(this).scrollTop() > footer_top) {
                $(".custom-side-fixed-on-scroll").removeClass("position-fixed-for-custom");
                //$(".custom-side-fixed-on-scroll").addClass("position-fixed-for-custom-mar");

                var height_to_be_added = aside_parrtent_height - aside_height;

                $(".custom-side-fixed-on-scroll").css('margin-top', height_to_be_added + 'px');


                console.log('else if');
            } else {
                $(".custom-side-fixed-on-scroll").removeClass("position-fixed-for-custom");

                $(".custom-side-fixed-on-scroll").css('margin-top', '0px');
                console.log('else');
            }

            //console.log(header_height);
            //console.log(footer_top);
            //console.log($(this).scrollTop());


        } else {
            $(".custom-side-fixed-on-scroll").removeClass("position-fixed-for-custom");
            $(".custom-side-fixed-on-scroll").css('margin-top', '0px');
        }
    }

    $(window).scroll(function () {
        aside_scroll();
    });
});

