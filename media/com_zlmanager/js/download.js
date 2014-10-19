(function($){
 
    var Plugin = function(){};
 
    $.extend(Plugin.prototype, {
 
        name: 'Download',

        options: {
            button: '.zl-download',
            current: '.current-version',
            latest: '.latest-version'
        },

        initialize: function(element, options){
            var $this = this;
 
            this.options = $.extend({}, options);

            element.each(function(){
                var row = $(this);
                var link = $($this.options.button, row);
                var current = $($this.options.current, row);
                var latest = $($this.options.latest, row);


                link.click(function(e){
                    e.preventDefault();
                    var l = $(this);

                    if(!l.is(':disabled')) {
                        $this.disable(l, row);

                        var urls = $(this).attr('data-url');
                        urls = urls.split("|");

                        var title = row.attr('data-title');

                        for(var i = 0; i < urls.length; i++){
                            var url = urls[i];
                            $.post(
                                'index.php?option=com_zlmanager&view=extensions&task=downloadandinstall&format=raw',
                                {
                                    url : url,
                                    title: title
                                },
                                function(data){
                                    $this.enable(l);
                                    data = JSON.parse(data);

                                    if (data) {
                                        
                                        if (!data.success) {
                                            for (var k = 0; k < data.errors.length; k++) {
                                                var li = $('<li></li>');
                                                li.html(data.errors[k].message);
                                                $('#modal-body').append(li);
                                                console.log(li);
                                            }
                                            $('#modal').modal();
                                            $('#modal').modal('show');
                                        }
                                        
                                        var actions = $('.actions', row);
                                        $('.active', actions).addClass('hidden').removeClass('active');
                                        
                                        if (data.version) {
                                            if (data.version == latest.html().trim()) {
                                                $('.uptodate', actions).removeClass('hidden').addClass('active');
                                            } else {
                                                $('.update', actions).removeClass('hidden').addClass('active');
                                            }
                                            current.html(data.version);
                                        } else {
                                            if (current.html().indexOf('---') != -1) {
                                                $('.install', actions).removeClass('hidden').addClass('active');
                                            } else {
                                                $('.uptodate', actions).removeClass('hidden').addClass('active');
                                            }
                                        }
                                    }
                                }
                            );
                        }       
                    }
                    return false;
                });
            });
        },

        disable: function(element, row) {
            element.attr('disabled', 'disabled');
            var actions = $('.actions', row);
            $('.active', actions).addClass('hidden').removeClass('active');
            $('.working', actions).removeClass('hidden').addClass('active');
        },

        enable: function(element) {
            element.removeAttr('disabled');
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