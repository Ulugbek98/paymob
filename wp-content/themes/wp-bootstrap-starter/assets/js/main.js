/*------------------------------------------------------------------------------------
    
JS INDEX
=============
01 - Product Slider JS
02 - Testimonial Slider JS
03 - Choose Slider JS
04 - Youtube Popup JS
05 - Button Hover JS
06 - Preloader JS

-------------------------------------------------------------------------------------*/


(function ($) {
	"use strict";

	jQuery(document).ready(function ($) {

		/* 
		=================================================================
		01 - Product Slider JS
		=================================================================	
		*/

		$(".product-slider").owlCarousel({
			autoplay: true,
			loop: true,
			margin: 20,
			touchDrag: true,
			mouseDrag: true,
			nav: false,
			dots: true,
			autoplayTimeout: 9000,
			autoplaySpeed: 1200,
			navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			responsive: {
				0: {
					items: 1
				},
				480: {
					items: 1
				},
				600: {
					items: 2
				},
				1000: {
					items: 2
				},
				1200: {
					items: 2
				}
			}
		});


		/* 
		=================================================================
		02 - Testimonial Slider JS
		=================================================================	
		*/


		$(".testimonial-slider").owlCarousel({
			autoplay: true,
			loop: true,
			margin: 20,
			touchDrag: true,
			mouseDrag: true,
			nav: false,
			dots: true,
			autoplayTimeout: 6000,
			autoplaySpeed: 1200,
			navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			responsive: {
				0: {
					items: 1
				},
				480: {
					items: 1
				},
				600: {
					items: 2
				},
				1000: {
					items: 2
				},
				1200: {
					items: 3
				}
			}
		});

		/* 
		=================================================================
		03 - Choose Slider JS
		=================================================================	
		*/


		$(".choose-slider").owlCarousel({
			autoplay: false,
			loop: true,
			margin: 0,
			touchDrag: true,
			mouseDrag: true,
			items: 1,
			nav: true,
			dots: false,
			autoplayTimeout: 6000,
			autoplaySpeed: 1200,
			navText: ["<i class='fa fa-long-arrow-left'></i>", "<i class='fa fa-long-arrow-right'></i>"],
			responsive: {
				0: {
					items: 1
				},
				480: {
					items: 1
				},
				600: {
					items: 2
				},
				1000: {
					items: 1
				},
				1200: {
					items: 1
				}
			}
		});

		/* 
		=================================================================
		04 - Youtube Popup JS
		=================================================================	
		*/

		$('.popup-youtube').magnificPopup({
			disableOn: 700,
			type: 'iframe',
			mainClass: 'mfp-fade',
			removalDelay: 160,
			preloader: false,
			fixedContentPos: false
		});

		/* 
		=================================================================
		05 - Button Hover JS
		=================================================================	
		*/


		$('.pelum-btn').on('mouseenter', function (e) {
			var parentOffset = $(this).offset(),
				relX = e.pageX - parentOffset.left,
				relY = e.pageY - parentOffset.top;
			$(this).find('span').css({
				top: relY,
				left: relX
			})
		}).on('mouseout', function (e) {
			var parentOffset = $(this).offset(),
				relX = e.pageX - parentOffset.left,
				relY = e.pageY - parentOffset.top;
			$(this).find('span').css({
				top: relY,
				left: relX
			})
		});

	});


	new WOW().init();

	/* 
	=================================================================
	06 - Preloader JS
	=================================================================	
	*/

	$(window).on('load', function () {
		$('.preloader').addClass('preloader-deactivate');
	});

}(jQuery));
document.addEventListener("DOMContentLoaded", function () {
	const userLanguage = document.documentElement.lang
	console.log(userLanguage);
	const showMoreButton = document.querySelector(".show-more-button");
	const additionalContent = document.querySelector(".additional-content");

	showMoreButton.addEventListener("click", function () {
		additionalContent.classList.toggle("visible");
		if (userLanguage == 'ru-RU') {
			if (additionalContent.classList.contains("visible")) {
				showMoreButton.textContent = "Скрыть";
			} else {
				showMoreButton.textContent = "Подробнее";
			}
		}
		else{
			if (additionalContent.classList.contains("visible")) {
				showMoreButton.textContent = "Yashirish";
			} else {
				showMoreButton.textContent = "Batafsil";
			}
		}
	});
});

