/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

function selectRelateditem(id,name,object){if(SqueezeBox.close){SqueezeBox.close()}else{document.getElementById("sbox-window").close()}jQuery("#"+object).ElementRelatedItems("addItem",id,name)}(function($){var Plugin=function(){};$.extend(Plugin.prototype,{name:"ElementRelatedItems",options:{variable:null,msgDeleteItem:"Delete Item",msgSortItem:"Sort Item"},initialize:function(element,options){this.options=$.extend({},this.options,options);this.list=element.find("ul").delegate("div.item-delete","click",function(){$(this).closest("li").fadeOut(200,function(){$(this).remove()})}).sortable({handle:"div.item-sort",placeholder:"dragging",axis:"y",opacity:1,delay:100,tolerance:"pointer",containment:"parent",forcePlaceholderSize:true,scroll:false,start:function(event,ui){ui.helper.addClass("ghost")},stop:function(event,ui){ui.item.removeClass("ghost")}})},addItem:function(id,name){var exists=false;this.list.find("li input").each(function(){if($(this).val()==id){exists=true}});if(!exists){$('<li><div><div class="item-name">'+name+'</div><div class="item-sort" title="'+this.options.msgSortItem+'"></div><div class="item-delete" title="'+this.options.msgDeleteItem+'"></div><input type="hidden" name="'+this.options.variable+'" value="'+id+'"/></div></li>').appendTo(this.list)}}});$.fn[Plugin.prototype.name]=function(){var args=arguments;var method=args[0]?args[0]:null;return this.each(function(){var element=$(this);if(Plugin.prototype[method]&&element.data(Plugin.prototype.name)&&method!="initialize"){element.data(Plugin.prototype.name)[method].apply(element.data(Plugin.prototype.name),Array.prototype.slice.call(args,1))}else if(!method||$.isPlainObject(method)){var plugin=new Plugin;if(Plugin.prototype["initialize"]){plugin.initialize.apply(plugin,$.merge([element],args))}element.data(Plugin.prototype.name,plugin)}else{$.error("Method "+method+" does not exist on jQuery."+Plugin.name)}})}})(jQuery);