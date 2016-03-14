/* General Config */
/* *********************************************************************************/

var BASE_URL = '';

/* Window onload events */
/* *********************************************************************************/

$(window).load(function(){

    if ($('#slider').length) {
        $('.flexslider.with-controls').flexslider({
            manualControls: '#slider-nav li',
            start: function(slider) {
                $('#slider-nav').prepend('<a class="flex-nav-next" href="#">Next</a><a class="flex-nav-prev" href="#">Prev</a>');
                $('.flex-nav-next').click(function() {
                    slider.flexAnimate(slider.getTarget('next'));
                    return false;
                });
                $('.flex-nav-prev').click(function() {
                    slider.flexAnimate(slider.getTarget('prev'));
                    return false;
                });
            }
        });
        $('.flexslider').flexslider({
            controlNav: false
        });
    }
    
});

var $window = $(window);

$(function() {

    if ($('#gallery').length) {
        var History = window.History;
        $('body').data('urlState', buildGalleryUrl());
        var pages = getQueryStringParams('pages');
        if (!pages) pages = 1;

        if (getQueryStringParams('filter') == 1) {
            $('#filter-toggle').trigger('mousedown');
        }

        History.Adapter.bind(window,'statechange',function(){
            var State = History.getState();
        });

        $('#gallery-filters').on('change', 'select', function() {
            var url = buildGalleryUrl();
            if ($('#gallery-filters option:selected').not(':first-child').length) {
                url += '&filter=1';
            }
            $('body').data('urlState', url);
            History.replaceState(null, null, '?' + url);
            pages = 1;
        });
    
        $("#gallery .magnify").fancybox({
            type: 'ajax',
            maxWidth: 465,
            preload: true,
            openEffect: 'fade'
        });

        $('#gallery-load').on('click', function() {
            if (!$(this).hasClass('loading')) {
                pages++;
                galleryLoad($('#gallery'), $('#gallery li').length + 1);
                var url = buildGalleryUrl() + '&pages=' + pages;
                $('body').data('urlState', url);
                History.replaceState(null, null, '?' + $('body').data('urlState'));
            }
            return false;
        });

        $('body').on('click', '.js-load', function() {
            if ($('body').data('urlState')) {
                var url = $('body').data('urlState') + '&' + 'pages=' + pages;
                window.location = $(this).attr('href') + '?backLink=' + encodeURIComponent(url);
                return false;
            }
        });
    }
    
    if ($('#news-load').length) {
        var History = window.History;
        var pages = getQueryStringParams('pages');
        if (!pages) pages = 1;

        $('#news-load').on('click', function() {
            if (!$(this).hasClass('loading')) {
                pages++;
                newsLoad($('#news-listing'), $('#news-listing article').length + 1);
                History.replaceState(null, null, '?pages=' + pages);
            }
            return false;
        });

        $('#news-listing').on('click', 'a', function() {
            window.location = $(this).attr('href') + '?backLink=' + encodeURIComponent('pages=' + pages);
            return false;
        });
    }
    
    if ($('#faq-load').length) {
        $('#faq-load').on('click', function() {
            if (!$(this).hasClass('loading')) {
                faqLoad($('#faq-listing'), $('#faq-listing article').length + 1);
            }
            return false;
        });
    }
    
    $('.button.profile, .action.profile').on('click', function() {
        var target = $(this);
        if (!target.hasClass('js-disabled')) {
            if ($(this).hasClass('button')) target = $('span', $(this));
            if (target.hasClass('remove')) {
                removeContentFromProfile(target, $(this).attr('data-id'), $(this).attr('data-type'));
            } else {
                saveContentToProfile(target, $(this).attr('data-id'), $(this).attr('data-type'));
            }
            return false;
        }
    });

    if ($('.expandable-listing.openfirst').length) {
        if(window.location.hash) {
            $('.expandable-listing ' + window.location.hash).addClass('open');
        } else {
            $('.expandable-listing article:first-child').addClass('open');
        }
    }

    if ($('.expandable-listing').length) {

        $('.expandable-listing').on('mousedown', 'header h2', function() {
            $(this).parents('article').toggleClass('open');
        });

        $('#spec-load').on('click', function() {
            if (!$(this).hasClass('loading')) {
                specLoad($('#spec-listing'), $('#spec-listing article').length + 1);
            }
            return false;
        });
    }

    if ($('#code-listing').length) {

        if (typeof swfobject !== 'undefined' && swfobject.getFlashPlayerVersion().major === 0) {
            $('.button.copy').remove();
        }

        ZeroClipboard.setDefaults({ moviePath: '/static/js/libs/zeroClipboard/ZeroClipboard.swf' });
        var clip = new ZeroClipboard();

        $('#code-listing').on('mouseover', '.actions', function() {
            var button = $('.copy', $(this));
            var clip = new ZeroClipboard( button.eq(0));

            clip.glue(button.eq(0));
            clip.on( 'complete', function ( client, args ) {
                alert('This code snippet has been copied to your clipboard');
            });
        });

        $('#code-load').on('click', function() {
            codeLoad($('#code-listing'), $('#code-listing article').length + 1);
            return false;
        });

    }

});


$window.resize( function() {
    socialNav();
});

// Social media bar fixed position
$window.scroll( function() {
    socialNav();
});

function socialNav() {
    var nav = $('#site-socials');
    if ($window.width() > 960) {
        if ($window.scrollTop() <= 198) {
            nav.css({ top: '213px' });
        } else {
            nav.css({ top: $window.scrollTop() + 15 + 'px' });
        }
    } else {
        nav.css({ top: 'auto' });
    }
}