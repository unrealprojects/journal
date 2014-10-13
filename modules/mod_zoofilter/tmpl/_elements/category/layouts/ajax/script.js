/* ===================================================
 * ZOOfilter Category Ajax Layout
 * https://zoolanders.com/extensions/zoofilter
 * ===================================================
 * Copyright (C) JOOlanders SL 
 * http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 * ========================================================== */
(function ($) {
	var Plugin = function(){};
	Plugin.prototype = $.extend(Plugin.prototype, {
		name: 'ZFchainedAjax',
		options: {
			url: '',
			txtChoose: 'Choose',
			txtLoading: 'Loading...',
			hide_empty: 0,
			show_number_items: 0,
			el_type: '',
			lay_name: '',
			searchAnySelection: false
		},
		initialize: function(row, options) {
			this.options = $.extend({}, this.options, options);
			var $this = this;

			// init selects
			$('.form-element-subrow', row).each(function(){
				$this.fetchSelect($(this), row);
			});

			// trigger change on last select in case it has childs
			$('.form-element-subrow', row).last().find('select').trigger('change');

			// clear button integration
			row.closest('.zoo-filter').find('button.zfac-clear').on('click', function(e){
				e.preventDefault();
				$('.form-element-subrow', row).eq(0).find('select').val('');
				$('.form-element-subrow', row).slice(1).remove();
				$('input', row).val('');
			})
		},
		fetchSelect: function(subrow, row) {
			var $this = this;

			$('select', subrow).on('change', function()
			{
				var select = $(this);

				// remove all child selects
				subrow.nextAll('.form-element-subrow').remove();

				// reset values
				$('input', row).val('');

				if(select.val())
				{
					// save right away the values
					$this.options.searchAnySelection && $this.saveValues(row);

					// add loading indication
					var text = $('option:selected', select).text();
					$('option:selected', select).text($this.options.txtLoading);

					// disable form btns
					$('button[type="submit"]', select.closest('.zoo-filter')).attr('disabled', 'disabled');
					
					// create the child select
					$.getJSON($this.options.url+'&task=getCats', {root: select.val(), hide_empty: $this.options.hide_empty, show_number_items: $this.options.show_number_items, el_type: $this.options.el_type, lay_name: $this.options.lay_name }, function(cats)
					{
						var options = '';
						$.each(cats, function(index, cat){
							options += '<option value="'+cat.id+'">'+cat.name+'</option>';
						});

						if(options){
							options = '<option value="">'+$this.options.txtChoose+'</option>'+options;
							var newSubRow = $('<div class="form-element-subrow"><select>'+ options +'</select></div>').insertAfter(subrow);

							// fetch the new subrow
							$this.fetchSelect(newSubRow, row);

						} else { // if there are no more childs

							// save now the values if were not allready saved
							$this.options.searchAnySelection || $this.saveValues(row);
						}

						// recover the parent select text
						$('option:selected', select).text(text);

						// enabled form btns
						$('button[type="submit"]', select.closest('.zoo-filter')).removeAttr('disabled');
					})
				}
			})
		},
		saveValues: function(row) {
			var values = '';
			$('select', row).each(function(index){
				var comma = index != 0 ? ',' : '';
				values += comma+$(this).val();
			})
			$('input', row).val(values);
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