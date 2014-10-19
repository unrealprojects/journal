 /* ===================================================
 * ZOOfilter Search Default layout script
 * https://zoolanders.com/extensions/zoofilter
 * ===================================================
 * Copyright (C) JOOlanders SL 
 * http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 * ========================================================== */

(function($) {

	/* Placeholder
	 * placeholder attribute fallback
	 *
	 * using jQuery Placehold plugin by Viget Inspire(http://www.viget.com/inspire/)
	 * http://www.viget.com/inspire/a-jquery-placeholder-enabling-plugin/
	 */
	var initPlaceholder = function() {
		$('input[placeholder]').placehold();
	};
	if(!Modernizr.input.placeholder) {
		$(document).ready(initPlaceholder);
	};

})(jQuery);
(function ($) {
	var Plugin = function(){};
	Plugin.prototype = $.extend(Plugin.prototype, {
		name: 'ZOOfilterSearchDefault',
		options: {
			button: '',
			submit: true,
			ajax: false
		},
		initialize: function(module, options) {
			this.options = $.extend({}, this.options, options);
			var $this = this;

			$($this.options.button, module).click(function(){
				$this.resetForm(module);
			});

			if (this.options.ajax && $('#yoo-zoo').parent().length > 0) {
				this.ajaxSearch(module);
			}
		},
		resetForm: function(module){
			$(':text, :password, :file', module).val('');
			$(':input, select option', module).removeAttr('checked').removeAttr('selected');
			if ($('select').attr('multiple')) {
				$('select option:first', module).attr('selected', false);					
			} else {
				$('select option:first', module).attr('selected', true);					
			}
		},
		ajaxSearch: function(module) {
			var form = $('form', module);
			var $this = this;

			form.submit(function(){
				var container = $('#yoo-zoo').parent();
				$this.loading(container, true);
				var data = $.param($(this).serializeArray()) + '&tmpl=component';
				var url = $(this).attr('action');
				$.ajax({
					url: url,
					data: data,
					type: $(this).attr('method'),
					success: function(data) {
						$this.loading(container, false);
						container.html(data);
					}
				});
				return false;
			});

			// Auto submit on change if no submit button is set
			if (!this.options.submit) {
				$('select, input[type="checkbox"], input[type="radio"]', form).change(function(){
					form.submit();
				});
				$('input[type="text"]', form).blur(function(){
					form.submit();
				});
			}
		},
		loading: function(container, active) {
			if (active) {
				var div = $('<div></div>');
				div.addClass('loading');
				container.css('position', 'relative');
				container.append(div);
			} else {
				$('.loading', container).remove();
			}
		}
	});
	// Don't touch
	$.fn[Plugin.prototype.name] = function() {
		var args   = arguments;
		var method = args[0] ? args[0] : null;
		return this.each(function() {
			var element = $(this);
			if (Plugin.prototype[method] && element.data(Plugin.prototype.name) && method != 'initialize') {
				element.data(Plugin.prototype.name)[method].apply(element.data(Plugin.prototype.name), Array.prototype.slice.call(args, 1));
			} else if (!method || $.isPlainObject(method)) {
				var plugin = new Plugin();
				if (Plugin.prototype['initialize']) {
					plugin.initialize.apply(plugin, $.merge([element], args));
				}
				element.data(Plugin.prototype.name, plugin);
			} else {
				$.error('Method ' +  method + ' does not exist on jQuery.' + Plugin.name);
			}
		});
	};
})(jQuery);