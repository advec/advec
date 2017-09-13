$(window).scroll(function() {
    var wScroll = $(this).scrollTop();

    if(wScroll < $('.swiper').height()) {
      var offset = 1 + (($('.swiper').offset().top - wScroll)) / 1000;
      $('.swiper').css({'opacity': offset});
    }

    if(wScroll > $('.swiper').offset().top - $(window).height()){
        var offset = (Math.min(0, wScroll - $('.swiper').offset().top +$(window).height() - 550)).toFixed();
        $('.prsilas__block__container__col').css({'opacity': offset});
    }
});

$(document).ready(function () {
  var variants = {
					'alert': {
						args: [
							'This is an alert.'
						]
					},

					'alert-success': {
						args: [
							{
								content: 'This is a success.',
								icon: $.sweetModal.ICON_SUCCESS
							}
						]
					},

					'alert-warning': {
						args: [
							{
								content: 'This is a warning.',
								icon: $.sweetModal.ICON_WARNING,
							}
						]
					},

					'alert-error-with-buttons': {
						args: [
							{
								content: 'This is an error.',
								title: 'Oh noes…',
								icon: $.sweetModal.ICON_ERROR,

								buttons: [
									{
										label: 'That\'s fine',
										classes: 'redB'
									}
								]
							}
						]
					},

					'alert-with-title': {
						args: [
							'Titled Alert',
							'This is an alert.'
						]
					},

					'confirm': {
						fn: $.sweetModal.confirm,

						args: [
							'Confirm please?',

							function() {
								$.sweetModal('Thanks for confirming!');
							}
						]
					},

					'confirm-with-title': {
						fn: $.sweetModal.confirm,

						args: [
							'Titled Confirm',
							'Confirm please?',
							function() {
								$.sweetModal('Thanks for confirming!');
							}, function() {
								$.sweetModal('You declined. That\'s okay!');
							}
						]
					},

					'prompt': {
						fn: $.sweetModal.prompt,

						args: [
							'Can I haz cheezeburger?',
							null,
							null,
							function(val) {
								$.sweetModal('You typed: ' + val);
							}
						]
					},

					'prompt-with-value': {
						fn: $.sweetModal.prompt,

						args: [
							'Can I haz cheezeburger?',
							'Can I?',
							'Nope',
							function(val) {
								$.sweetModal('You typed: ' + val);
							}
						]
					},

					'tabbed': {
						args: [
							{
								title: {
									tab1: {
										label: 'Tab 1'
									},

									tab2: {
										label: 'Tab 2'
									}
								},

								content: {
									tab1: 'Tab 1',
									tab2: 'Tab 2'
								}
							}
						]
					},

					'tabbed-with-buttons': {
						args: [
							{
								title: {
									tab1: {
										label: 'Tab 1'
									},

									tab2: {
										label: 'Tab 2'
									}
								},

								content: {
									tab1: 'Tab 1',
									tab2: 'Tab 2'
								},

								buttons: {
									someOtherAction: {
										label: 'Action 2',
										classes: 'secondaryB bordered flat',
										action: function() {
											return $.sweetModal('You clicked Action 2!');
										}
									},

									someAction: {
										label: 'Action 1',
										classes: '',
										action: function() {
											return $.sweetModal('You clicked Action 1!');
										}
									},
								}
							}
						]
					},

					'tabbed-with-icons': {
						args: [
							{
								title: {
									tab1: {
										label: 'Tab 1',
										icon: '<svg style="width:24px;height:24px" viewBox="0 0 24 24"><path fill="#000000" d="M12,19.2C9.5,19.2 7.29,17.92 6,16C6.03,14 10,12.9 12,12.9C14,12.9 17.97,14 18,16C16.71,17.92 14.5,19.2 12,19.2M12,5A3,3 0 0,1 15,8A3,3 0 0,1 12,11A3,3 0 0,1 9,8A3,3 0 0,1 12,5M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12C22,6.47 17.5,2 12,2Z" /></svg>'
									},

									tab2: {
										label: 'Tab 2',
										icon: '<svg style="width:24px;height:24px" viewBox="0 0 24 24"><path fill="#000000" d="M12,17L7,12H10V8H14V12H17L12,17M21,16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V7.5C3,7.12 3.21,6.79 3.53,6.62L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.79,6.79 21,7.12 21,7.5V16.5M12,4.15L5,8.09V15.91L12,19.85L19,15.91V8.09L12,4.15Z" /></svg>'
									}
								},

								content: {
									tab1: 'Tab 1',
									tab2: 'Tab 2'
								}
							}
						]
					},

					'oferta__contas': {
						args: [
							{
								title: 'Depósito Bancário',
								width: 'auto',
								content: '<div class="popup popup__deposito"><div class="popup__content"><div class="popup__content__list"><div class="popup__content__list__item"><h2>Itau</h2><p>Agência: 0410</p><p>Conta: 74861-0</p><p style="font-size: .8em;">CNPJ: 34.292.797/0001-60</p></div><div class="popup__content__list__item"><h2>Bradesco</h2><p>Agência: 0663-7</p><p>Conta: 14866-0</p><p style="font-size: .8em;">CNPJ: 34.292.797/0001-60</p></div></div></div></div>'
							}
						]
					},

					'oracao__form': {
						args: [
							{
								title: 'Pedido de Oração',
								width: 'auto',
								content: '<form action="https://formspree.io/xwlekgqm" method="POST" class="form__oracao"><input type="hidden" name="_subject" value="Novo Pedido de Oração"><input type="hidden" name="_next" value="//www.advec.org"><input type="text" name="_gotcha" style="display: none"><input type="text" name="nome" placeholder="Seu nome" required="required"><textarea name="pedidodeoracao" placeholder="Seu pedido" required="required"></textarea><button type="submit">Enviar</button></form>'
							}
						]
					},

					'html-content-dark': {
						args: [
							{
								title: 'HTML Content',
								content: 'You can place <b>anything</b> <i>you</i> want in here.',
								theme: $.sweetModal.THEME_DARK
							}
						]
					},

					'youtube': {
						args: [
							{
								title: 'Will YouTube Ever Run Out Of Video IDs?',
								content: 'https://www.youtube.com/watch?v=gocwRvLhDf8',
								theme: $.sweetModal.THEME_DARK
							}
						]
					}
				};

				for (var key in variants) {
					if (variants.hasOwnProperty(key)) {
						var variant = variants[key];

						$('#' + key).on('click', { variant: variant }, function(e) {
							var variant = e.data.variant;

							variant.fn = variant.fn || $.sweetModal;
							variant.fn.apply(this, variant.args);
							console.log('Teste sweetmodal.');
						});
					}
				}

   var swiper = new Swiper('.swiper__container', {
		effect: 'fade',
		pagination: '.swiper-pagination',
        paginationType: 'progress',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 1,
        centeredSlides: true,
        autoplayDisableOnInteraction: false,
        grabCursor: true,
        autoplay: 3500,
        loop: true
    });

   var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 'auto',
        centeredSlides: true,
        paginationClickable: true,
        spaceBetween: 30
    });
});
