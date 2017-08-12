$(document).ready(function() {
				var variants = {
					'btn__popup--deposito': {
						args: [
							{
								title: 'HTML Content',
								content: 'You can place <b>anything</b> <i>you</i> want in here.'
							}
						]
					}
				};
				for (var key in variants) {
					if (variants.hasOwnProperty(key)) {
						var variant = variants[key];
						$('.' + key).on('click', { variant: variant }, function(e) {
							var variant = e.data.variant;
							variant.fn = variant.fn || $.sweetModal;
							variant.fn.apply(this, variant.args);
						});
					}
				}
			});