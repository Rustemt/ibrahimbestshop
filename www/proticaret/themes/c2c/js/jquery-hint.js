(function($) {
    $.fn.textboxhint = function(userOptions) {
        var options = $.extend({}, $.fn.textboxhint.defaults, userOptions);
        return $(this).filter(':text,textarea').each(function(){
            if ($(this).val() == '') {
                $(this).focus(function(){
                    if ($(this).attr('typedValue') == '') {
                        $(this).removeClass(options.classname).val('');
                    }
                }).blur(function(){
                    $(this).attr('typedValue', $(this).val());
                    if ($(this).val() == '') {
                        $(this).addClass(options.classname).val(options.hint);
                    }
                }).blur();
            }
        });
    };

    $.fn.textboxhint.defaults = {
        hint: 'Please enter a value',
        classname: 'hint'
    };
})(jQuery);