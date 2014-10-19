(function($){

    var Plugin = function(){};

    $.extend(Plugin.prototype, {

        name: 'ZFPermalink',

        initialize: function(element, options){
			var $this = this;

			this.options = $.extend({
				
			}, options);

			$(element).click(function(e){
				e.preventDefault();

				var url = $(this).attr('href');
				var container = $(this).parent();

				var a = $(this).clone();
				$(this).remove();

				// New input element
				var input = $('<input type="text" />');
				input.val(url);

				container.append(input);

				input.focus();
				input.select();

				input.click(function(){
					$(this).select();
				});

				input.blur(function(){
					$(this).remove();
					container.append(a);
					a.ZFPermalink();
				})


				return false;
			});
        }

    });

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