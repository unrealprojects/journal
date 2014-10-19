/* ===================================================
 * ZOOtools
 * https://zoolanders.com/extensions/zootools
 * ===================================================
 * Copyright (C) JOOlanders SL
 * http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 * ========================================================== */
!function(a){var b=function(){};b.prototype=a.extend(b.prototype,{name:"ZOOtoolsSeparatorZLField",options:{enviroment:""},initialize:function(b,c){this.options=a.extend({},this.options,c);var d=this,e=d.options.enviroment;a(document).ready(function(){"zoo-type-edit"==e&&a(".ui-sortable").on("sortstop",function(a,b){$element=b.item,$element_position=$element.closest("ul.element-list").data("position"),$element_type=$element.find(".zlinfo").data("element-type"),"separator"==$element_type&&($element.addClass("zl-separator"),d.initOranizerTitle($element))}).find("li.element").each(function(){a(this).parent().trigger("sortstop",{item:a(this)})}),"zoo-type-edit"==e&&a(".col-left ul.element-list").on("element.added",function(b,c){a(c).parent().trigger("sortstop",{item:a(c)})}),("zoo-type-assignment"==e||"zoo-type-assignment-submission"==e)&&a(".element-list.unassigned li.element, .element-list[data-position=unassigned] li.element").each(function(){$element=a(this),$element_type=$element.find(".zlinfo").data("element-type"),"separator"==$element_type&&($element.addClass("zl-separator"),"zoo-type-assignment-submission"!=e&&a(".element-list.unassigned")[0]&&$element.draggable("disable").removeClass("ui-state-disabled"),$element.find(".name span").remove())}),"zoo-type-assignment-submission"==e&&a(".element-list[data-position=unassigned]").sortable({cancel:".element.zl-separator"})})},initOranizerTitle:function(a){if(!a.data("zootools-actions-inited")){var b=a.find(".zlfield .row[data-id=_layout] select"),c=a.find(".name");b.on("loaded.zlfield",function(){var b=a.find(".zlfield .row[data-id=name] input");b.on("keyup zlinit",function(){c.html(b.val())}).trigger("zlinit")}).trigger("loaded.zlfield"),a.data("zootools-actions-inited",!0)}}}),a.fn[b.prototype.name]=function(){var c=arguments,d=c[0]?c[0]:null;return this.each(function(){var e=a(this);if(b.prototype[d]&&e.data(b.prototype.name)&&"initialize"!=d)e.data(b.prototype.name)[d].apply(e.data(b.prototype.name),Array.prototype.slice.call(c,1));else if(!d||a.isPlainObject(d)){var f=new b;b.prototype.initialize&&f.initialize.apply(f,a.merge([e],c)),e.data(b.prototype.name,f)}else a.error("Method "+d+" does not exist on jQuery."+b.name)})}}(jQuery);