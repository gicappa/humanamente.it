(function($){
    $.extend(jQuery.easing,{
        easeInOutExpo: function (x, t, b, c, d) {
            if (t==0) return b;
            if (t==d) return b+c;
            if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
            return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
        }
    });
    $.fn.scrollToAnchor = function() {
        return this.click(function(e) {
            e.preventDefault();
            var targetSection = $($(this).attr('href'));
            var scrollTo      = targetSection.offset().top - 68;
            $('html,body').animate({scrollTop: scrollTo}, 350, 'easeInOutExpo');
        });
    };
    $(function(){
      $('nav li a').scrollToAnchor();
      $('section .message a').scrollToAnchor();

    });

    $('.format_datetime').datetimepicker({language: "it"});
})(jQuery);