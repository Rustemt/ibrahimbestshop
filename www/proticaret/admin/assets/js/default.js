$(document).ready(function() {
	
	/*-----PLACEHOLDER-----*/
	//input
	$('input.placeHolder').each(function() {
		var default_value = this.value;
		$(this).focus(function() {
			if(this.value == default_value) {
				this.value = '';
			}
		});
		$(this).blur(function() {
			if(this.value == '') {
				this.value = default_value;
			}
		});
	});
	
	//textarea
	var standard_message = $('textarea.placeHolder').val();
	$('textarea.placeHolder').focus(
		function() {
			if ($(this).val() == standard_message)
				$(this).val("");
		}
	);
	$('textarea.placeHolder').blur(
		function() {
			if ($(this).val() == "")
				$(this).val(standard_message);
		}
	);
	/*-----PLACEHOLDER END-----*/
	
	/*-----SWITCH-----*/
	$(".headerLogo .switch").click(function() {
		$("body").toggleClass("sideBarOff");
    });
	/*-----SWITCH END-----*/
	
	/*-----ADVANCED FILTER-----*/
	$(".titleAdvanced").click(function() {
		var element = $(".colGroupAdvanced");
		
		if((element.is('div')) && (element.is(':visible'))) {
			$(this).removeClass('active');
			element.slideUp('normal');
		}
		if((element.is('div')) && (!element.is(':visible'))) {
			$(this).addClass('active');
			element.slideDown('normal');
		}
    });
	/*-----ADVANCED FILTER END-----*/
	
	/*-----BOX TOGGLE-----*/
	$(".boxToggle .titleToggle").click(function() {
		var toggleContent = $(this).parent().siblings(".toggleContent");
		$(this).toggleClass("off");
		$(toggleContent).slideToggle();
    });

	/*-----BOX TOGGLE END-----*/
	
	/*-----TOGGLE LIST-----*/
	$('.toggleList ul li .toggleTitle').click(function(event) {
		event.preventDefault();
		var checkElement = $(this).siblings(".toggleContent");
		
		$('.toggleList ul li .toggleTitle').removeClass('open');
		
		if((checkElement.is('div')) && (checkElement.is(':visible'))) {
			$(this).parent().removeClass('open');
			checkElement.slideUp('normal');
		}
		if((checkElement.is('div')) && (!checkElement.is(':visible'))) {
			$('.toggleList ul li .toggleContent:visible').slideUp('normal');
			checkElement.slideDown('normal');
			$(this).parent().addClass('open');
		}
	});
    /*-----TOGGLE LIST END-----*/
	
	/*-----TABS-----*/
	$('.tabMenu li:first-child a').addClass("active");
	$(".tabContent .tab").hide();
	$(".tabContent .tab:first-child").show();
	
	$(".tabMenu a").click(function() {
		
		var that = $(this); //cache when you can
		var tabIndex = that.parent().index();
		var tabs = that.parents(".boxToggle").find(".tab");
		
		that.parents(".tabMenu").find('a').removeClass('active');
		that.addClass("active");
		tabs.hide();
		tabs.eq(tabIndex).show();
		return false;
		
    });
	/*-----TABS END-----*/
	
	/*-----SIDEBAR-----*/
	$('.sideBar .barMenu .sub li').each(function(index, element){
		var content = '<span class="icon"></span>';
		if($(this).find('ul').length != 0) {
			$(element).children('a').append(content);
		}
	});
	
	$('.sideBar .barMenu .sub > a').click(function(event) {
		event.preventDefault();
		var checkElement = $(this).siblings("ul");
		
		$('.sideBar .barMenu .sub').removeClass('open');
		if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
			$(this).parent().removeClass('open');
			checkElement.slideUp('normal');
		}
		if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
			$('.sideBar .barMenu .sub ul:visible').slideUp('normal');
			checkElement.slideDown('normal');
			$(this).parent().addClass('open');
		}
	});
    /*-----SIDEBAR END-----*/

    /*-----FANCYBOX-----*/
	if( $('.fancyContent').length > 0 ) {
		$(".fancyContent").fancybox({
			'autoSize' : false,
			'autoResize' : true,
			'fitToView' : false,
			'autoWidth' : false,
			'type': 'iframe',
			beforeShow: function () {
				//this.width = $(this.element).data("width");
				//this.height = $(this.element).data("height");
				this.width = $('.fancybox-iframe').contents().find('.pagePopup').width();
				this.height = $('.fancybox-iframe').contents().find('.pagePopup').height();
			},
			onUpdate: function () {
				this.width = $('.fancybox-iframe').contents().find('.pagePopup').width();
				this.height = $('.fancybox-iframe').contents().find('.pagePopup').height();
			}
		});
	}
	
	if( $('.fancyPhoto').length > 0 ) {
		$('.fancyPhoto').fancybox();
	}
    /*-----FANCYBOX END-----*/

	/*----- REPORTS END-----*/
              
/*-----WINDOW POPUP-----*/
	
	
	
	/*-----POSTBACK-----*/
	var prm = Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function() {
		/*-----BOX TOGGLE-----*/
		$(".boxToggle .titleToggle").click(function() {
			var toggleContent = $(this).parent().siblings(".toggleContent");
			$(this).toggleClass("off");
			$(toggleContent).slideToggle();
		});
		/*-----BOX TOGGLE END-----*/
		
		/*-----TABS-----*/
		$('.tabMenu li:first-child a').addClass("active");
		$(".tabContent .tab").hide();
		$(".tabContent .tab:first-child").show();
		
		$(".tabMenu a").click(function() {
			
			var that = $(this); //cache when you can
			var tabIndex = that.parent().index();
			var tabs = that.parents(".boxToggle").find(".tab");
			
			that.parents(".tabMenu").find('a').removeClass('active');
			that.addClass("active");
			tabs.hide();
			tabs.eq(tabIndex).show();
			return false;
			
		});
		/*-----TABS END-----*/
		
		/*-----ADVANCED FILTER-----*/
		$(".titleAdvanced").click(function() {
			var element = $(".colGroupAdvanced");
			
			if((element.is('div')) && (element.is(':visible'))) {
				$(this).removeClass('active');
				element.slideUp('normal');
			}
			if((element.is('div')) && (!element.is(':visible'))) {
				$(this).addClass('active');
				element.slideDown('normal');
			}
		});
	    /*-----ADVANCED FILTER END-----*/


	    /*-----FANCYBOX-----*/
		if ($('.fancyContent').length > 0) {
		    $(".fancyContent").fancybox({
		        'autoSize': false,
		        'autoResize': true,
		        'fitToView': false,
		        'autoWidth': false,
		        'type': 'iframe',
		        beforeShow: function () {
		            //this.width = $(this.element).data("width");
		            //this.height = $(this.element).data("height");
		            this.width = $('.fancybox-iframe').contents().find('.pagePopup').width();
		            this.height = $('.fancybox-iframe').contents().find('.pagePopup').height();
		        },
		        onUpdate: function () {
		            this.width = $('.fancybox-iframe').contents().find('.pagePopup').width();
		            this.height = $('.fancybox-iframe').contents().find('.pagePopup').height();
		        }
		    });
		}

		if ($('.fancyPhoto').length > 0) {
		    $('.fancyPhoto').fancybox();
		}
	    /*-----FANCYBOX END-----*/
		
		/*-----DISABLED ------*/
		$(function(){
			$( ".aspNetDisabled").removeClass("fancyContent").addClass("btnDisabled");
		});
		/*-----DISABLED END ------*/
		
	});
    /*-----POSTBACK END-----*/
	
});
/*----- REPORTS-----*/
/*----- REPORTS END-----*/
	$( '.tree li' ).each( function() {
			if( $( this ).children( 'ul' ).length > 0 ) {
					$( this ).addClass( 'parent' );     
			}
	});
	$( '.tree li.parent > a' ).click( function( ) {
			$( this ).parent().toggleClass( 'active' );
			$( this ).parent().children( 'ul' ).slideToggle( 'fast' );
	});
/*-----WINDOW POPUP-----*/
	/*
	* Opens window screen centered.
	* @param windowWidth the window width in pixels (integer)
	* @param windowHeight the window height in pixels (integer)
	* @param windowOuterHeight the window outer height in pixels (integer)
	* @param url the url to open
	* @param wname the name of the window
	* @param features the features except width and height (status, toolbar, location, menubar, directories, resizable, scrollbars)
	*/
	
	function popupWindow(windowWidth, windowHeight, windowOuterHeight, url, wname, features) {
	var centerLeft = parseInt((window.screen.availWidth - windowWidth) / 2);
	var centerTop = parseInt(((window.screen.availHeight - windowHeight) / 2) - windowOuterHeight);
	
	var misc_features;
	if (features) {
	  misc_features = ', ' + features;
	}
	else {
	  misc_features = ', status=no, location=no, scrollbars=yes, resizable=yes';
	}
	var windowFeatures = 'width=' + windowWidth + ',height=' + windowHeight + ',left=' + centerLeft + ',top=' + centerTop + misc_features;
	var win = window.open(url, wname, windowFeatures);
	win.focus();
	return win;
	}
/*-----WINDOW POPUP END-----*/
/*-----DISABLED ------*/
	$(function(){
		$( ".aspNetDisabled").removeClass("fancyContent").addClass("btnDisabled");
	});
/*-----DISABLED END ------*/





