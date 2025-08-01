! function(o) {
    "use strict";

    function a() {
        o(window).scrollTop() >= 80 ? o(".navbar").addClass("sticky") : o(".navbar").removeClass("sticky")
    }
    AOS.init({
        offset: 0,
        delay: 0,
        duration: 900,
        easing: "ease-in-out",
        once: !1,
        mirror: !1,
        anchorPlacement: "top-bottom"
    }), o(window).on("load", function() {
        o(".oc-clients").owlCarousel({
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3,
            responsive: {
                0: {
                    items: 2
                },
                520: {
                    items: 2
                },
                768: {
                    items: 3
                },
                1200: {
                    items: 4
                },
                1400: {
                    items: 5
                },
                1600: {
                    items: 5
                }
            }
        })
    }), o(window).on("load", function() {
        o(".oc-clients-rtl").owlCarousel({
            rtl: !0,
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3,
            responsive: {
                0: {
                    items: 2
                },
                520: {
                    items: 2
                },
                768: {
                    items: 3
                },
                1200: {
                    items: 4
                },
                1400: {
                    items: 5
                },
                1600: {
                    items: 5
                }
            }
        })
    }), o(window).on("load", function() {
        o(".owl-review").owlCarousel({
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3,
            responsive: {
                0: {
                    items: 1
                },
                520: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                },
                1400: {
                    items: 3
                },
                1600: {
                    items: 3
                }
            }
        })
    }), o(window).on("load", function() {
        o(".owl-review-rtl").owlCarousel({
            rtl: !0,
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3,
            responsive: {
                0: {
                    items: 1
                },
                520: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                },
                1400: {
                    items: 3
                },
                1600: {
                    items: 3
                }
            }
        })
    }), o(window).on("load", function() {
        o(".reviews-block").owlCarousel({
            items: 1,
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3
        })
    }), o(window).on("load", function() {
        o(".reviews-block-rtl").owlCarousel({
            items: 1,
            rtl: !0,
            nav: !1,
            dots: !1,
            autoplay: !0,
            loop: !0,
            margin: 30,
            autoplayTimeout: 3500,
            autoplayHoverPause: !0,
            autoHeight: !0,
            smartSpeed: 2e3
        })
    }), o(function() {
        o(window).scroll(a), a()
    });
    var t = o(".nav-item .nav-link");
    o(".navbar-collapse");
    t.on("click", function(a) {
        var t = o(o(this).attr("href"));
        o(this).parent(".nav-item").siblings().removeClass("active"), o(this).parent(".nav-item").addClass("active"), t.length > 0 && (a.preventDefault(), o("html, body").animate({
            scrollTop: t.offset().top - 70
        }, 1e3)), o(".navbar-collapse").hasClass("show") && (o(".navbar-collapse").toggleClass("show"), o(".navbar-toggler-icon").toggleClass("active"), o(".navbar-toggler").toggleClass("collapsed"))
    }), o("[data-background]").each(function() {
        o(this).css("background-image", "url(" + o(this).attr("data-background") + ")")
    })
}(jQuery);