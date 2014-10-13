/* ===================================================
 * ZL Framework
 * https://zoolanders.com/extensions/zl-framework
 * ===================================================
 * Copyright (C) JOOlanders SL
 * http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 * ========================================================== */
!function(a){"use strict";var b=function(){};a.extend(b.prototype,a.zlux.Manager.prototype,{name:"itemsManager",options:{apps:"",types:"",categories:"",tags:"",authors:""},initialize:function(b){this.options=a.extend({},this.options,b);var c=this;c.filter={},c.initCheck(),c.itemsmanager=a('<div class="zl-bootstrap zlux-itemsmanager" />').appendTo(c.element),c.initDataTable(c.itemsmanager)},initCheck:function(){var b=this;a.zlux.itemsManager.iNextUnique++,b.ID=a.zlux.itemsManager.iNextUnique},initDataTable:function(b){var c=this;a.zlux.assets.load(a.zlux.url.zlfw("zlux/assets/datatables/dataTables.with.plugins.min.js"),function(){c._initDataTable(b)})},_initDataTable:function(b){var c=this;a('<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" />').appendTo(b),c.oTable=a("table",b).dataTable({sDom:"F<'row-fluid'<'span12't>><'row-fluid'<'span12'p>><'row-fluid zlux-x-info'<'span12'i>>",bServerSide:!0,iDisplayLength:20,sAjaxSource:a.zlux.url.ajax("zlux","getItemsManagerData"),sServerMethod:"POST",fnServerParams:function(a){{var b=c.filter.apps?c.filter.apps:c.options.apps,d=c.filter.types?c.filter.types:c.options.types,e=c.filter.cats?c.filter.cats:c.options.categories,f=c.filter.tags?c.filter.tags:c.options.tags;c.filter.authors?c.filter.authors:c.options.authors}a.push({name:"apps",value:c.options.apps}),a.push({name:"types",value:c.options.types}),a.push({name:"categories",value:c.options.categories}),a.push({name:"tags",value:c.options.tags}),a.push({name:"authors",value:c.options.authors}),a.push({name:"filter_apps",value:b}),a.push({name:"filter_types",value:d}),a.push({name:"filter_cats",value:e}),a.push({name:"filter_tags",value:f})},oLanguage:{sEmptyTable:c._("IM_NO_ITEMS_FOUND"),sInfoEmpty:"",sInfo:c._("IM_PAGINATION_INFO")},aoColumns:[{sTitle:c._("NAME"),mData:"_itemname",sClass:"column-name",mRender:function(a,b){return"display"===b?"":a},fnCreatedCell:function(b,c,d){a(b).parent("tr").attr("data-id",d.id)}},{sTitle:"App",mData:"application",bSortable:!1,mRender:function(a,b){return"display"===b?a.name:a.id}},{sTitle:"Type",mData:"type",bSortable:!1,mRender:function(a,b){return"display"===b?a.name:a.id}},{sTitle:"Access",mData:"access",bSearchable:!1,bSortable:!1},{sTitle:"Author",mData:"author",bSearchable:!1,bSortable:!1,mRender:function(a,b){return"display"===b?a.name:a.id}},{sTitle:"ID",mData:"id",bSearchable:!1,bSortable:!1},{sTitle:"",mData:"type",bSortable:!1,bSearchable:!1,sWidth:"14px",sClass:"column-icon",mRender:function(a,b){return"display"===b?'<i class="icon-file-alt"></i>':a}}],aoColumnDefs:[{bVisible:!1,aTargets:[1,2,3,4,5]}],fnInitComplete:function(){var d=a(".zlux-x-filter-input_wrapper",b).append(a('<i class="icon-search" />'),a('<i class="icon-remove zlux-ui-dropdown-unselect" />').hide().on("click",function(){a("input",d).val(""),a(this).hide(),c.oTable.fnFilter("")}));a("input",d).on("keyup",function(){""===a(this).val()?a(".zlux-ui-dropdown-unselect",d).hide():a(".zlux-ui-dropdown-unselect",d).show()}),a("thead tr th:last",c.oTable).prependTo(a("thead tr",c.oTable)),c.trigger("InitComplete")},fnRowCallback:function(b,d){var e=d;e.dom=a(b),e.dom.addClass("zlux-object"),a("td:last",e.dom).prependTo(e.dom),a(".column-name",e.dom).html("").removeClass("zlux-ui-open").append(c.renderObjectDOM(e))},fnPreDrawCallback:function(a){c.zluxdialog.spinner("show"),c.trigger("DTPreDrawCallback",a)},fnDrawCallback:function(b){var d=b.oInstance.fnPagingInfo(),e=a(".dataTables_paginate",a(b.nTableWrapper)).closest(".row-fluid");d.iTotalPages<=1?e.hide():e.show(),c.zluxdialog.scrollbar("refresh"),c.zluxdialog.spinner("hide"),c.trigger("TableDrawCallback",b)}}).on("click",".zlux-object .zlux-x-name a",function(){var b=a(this).closest("tr.zlux-object"),d=c.oTable.fnGetData(b[0]);return d.dom=b,c.trigger("ObjectSelected",d),!1})},renderObjectDOM:function(b){var c,d=this;c=[{name:d._("ROUTE"),value:b.application.name+" / "+b.type.name+" / ID "+b.id},{name:d._("ACCESS"),value:b.access},{name:d._("CREATED"),value:b.created}],b.author.name&&c.push({name:d._("AUTHOR"),value:b.author.name});var e="";a.each(c,function(a,b){e+="<li><strong>"+b.name+"</strong>: <span>"+b.value+"</span></li>"});var f=a('<div class="zlux-x-tools"><i class="zlux-x-details-btn icon-angle-down" /></div><div class="zlux-x-name"><a href="#" class="zlux-x-name-link">'+b.name+'</a></div><div class="zlux-x-details"><div class="zlux-x-messages" /><div class="zlux-x-details-content"><ul class="unstyled">'+e+"</ul></div></div>");return f},reload:function(){this.oTable.fnReloadAjax()}}),a.zlux[b.prototype.name]=b,a.zlux[b.prototype.name].iNextUnique=0}(jQuery,window,document),function(a){"use strict";var b=function(c,d){var e=this,f=a(c);f.data(b.prototype.name)||(e.element=a(c),e.options=a.extend({},b.prototype.options,a.zlux.itemsManager.prototype.options,d),this.events={},e.initialize(),e.element.data(b.prototype.name,e))};a.extend(b.prototype,a.zlux.itemsManager.prototype,{name:"itemsDialogManager",options:{title:"Items Manager",position:{},full_mode:0,dialogClass:""},initialize:function(){var a=this;a.initCheck(),a.filter={},a.element.on("click",function(){return a.zluxdialog.toggle(),!1}),a.initDialog(),a.initMainEvents()},initDialog:function(){var b=this;b.options.dialogClass="zl-bootstrap zlux-itemsmanager"+(b.options.full_mode?" zlux-dialog-full ":"")+(b.options.dialogClass?" "+b.options.dialogClass:""),a.zlux.assets.load("dialog").done(function(){b.zluxdialog=a.zlux.dialog({title:b.options.title,width:b.options.full_mode?"75%":300,dialogClass:b.options.dialogClass,position:a.extend({of:b.element,my:"left top",at:"right bottom"},b.options.position)}).bind("InitComplete",function(){b.zluxdialog.widget.attr("id","zluxItemsManager_"+b.ID),b.eventDialogLoaded()})})},eventDialogLoaded:function(){var b=this;b.itemsmanager=a('<div class="zlux-itemsmanager" />').appendTo(b.zluxdialog.content),b.initDataTable(b.itemsmanager),b.zluxdialog.main.on("click",".zlux-x-details-btn",function(){var c=a(this),d=c.closest("tr.zlux-object"),e=a("td.column-name",d),f=a(".zlux-x-details",d);e.hasClass("zlux-ui-open")?(c.addClass("icon-angle-down").removeClass("icon-angle-up"),e.removeClass("zlux-ui-open"),f.slideUp("fast",function(){b.zluxdialog.scrollbar("refresh")})):(e.addClass("zlux-ui-open"),c.removeClass("icon-angle-down").addClass("icon-angle-up"),b.zluxdialog.content.stop().animate({scrollTop:d.get(0).offsetTop},900,"swing"),f.slideDown("fast",function(){b.zluxdialog.scrollbar("refresh")}))}),a("html").on("mousedown",function(a){!b.zluxdialog.dialog("isOpen")||b.element.is(a.target)||b.element.find(a.target).length||b.zluxdialog.widget.find(a.target).length||b.zluxdialog.widget.is(a.target)||b.zluxdialog.dialog("close")}),b.zluxdialog.setMainToolbar([{title:b._("APPLY_FILTERS"),icon:"filter",click:function(c){a(".zlux-dialog-subtoolbar-filter",b.zluxdialog.toolbar.wrapper).slideToggle("fast"),c.toggleClass("zlux-ui-tool-enabled")}},{title:b._("REFRESH"),icon:"refresh",click:function(){b.reload()}}]),b.zluxdialog.newSubToolbar("filter","main")},initMainEvents:function(){var b=this;b.bind("InitComplete",function(){b.zluxdialog.scrollbar("refresh");var c=a(".zlux-dialog-subtoolbar-filter",b.zluxdialog.toolbar.wrapper);c.append(b.getSelect("aaApps",b._("IM_FILTER_BY_APP"),function(d){b.filter.apps=d,b.filter.types="",a(".btn-group[data-id=2]",c).attr("data-update",!0)},function(){b.filter.apps=""}),b.getSelect("aaTypes",b._("IM_FILTER_BY_TYPE"),function(d){b.filter.types=d,a(".btn-group[data-id=2]",c).attr("data-update",!1)},function(){b.filter.types=""}),b.getSelect("aaCategories",b._("IM_FILTER_BY_CATEGORY"),function(a){b.filter.cats=a},function(){b.filter.cats=""}),b.getSelect("aaTags",b._("IM_FILTER_BY_TAG"),function(a){b.filter.tags=a},function(){b.filter.tags=""})),a(".zlux-x-filter-input_wrapper",b.oTable.fnSettings().nTableWrapper).appendTo(c),b.zluxdialog.initContent()})},getSelect:function(b,c,d,e){var f=this,g=a.parseJSON(f.oTable.fnSettings().jqXHR.responseText)[b];if(g.length<=1)return"";var h=a('<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">'+c+'<span class="caret" /></a>'),i=a('<ul class="dropdown-menu">'+f._getSelectOptions(g)+"</ul>"),j=a('<div class="btn-group" data-text="'+c+'" />').append(h,i),k=a('<i class="icon-remove zlux-ui-dropdown-unselect" />').on("click",function(){h.html(c+'<span class="caret"></span>'),k.hide(),a.isFunction(e)&&e(),f.reload()}).hide().prependTo(j);return g.length||h.addClass("disabled"),h.on("click",function(){return h.hasClass("disabled")?"":void 0}),i.on("click","a",function(b){var e=a(this).data("value")?a(this).data("value"):"",g=c;g=a(this).text().replace(/^[^a-zA-Z]+/g,"").replace(/[^a-zA-Z]+$/g,""),k.show(),h.html(g+'<span class="caret"></span>').data("selected-value",e),a.isFunction(d)&&d(e),f.reload(),b.preventDefault()}),f.bind("TableDrawCallback",function(){var d=a.parseJSON(f.oTable.fnSettings().jqXHR.responseText)[b];i.empty().append(f._getSelectOptions(d)),d.length||j.addClass("disabled");var e=!1;a.each(d,function(a,b){b.id===h.data("selected-value")&&(e=!0)}),e||(k.hide(),h.data("selected-value","").html(c+'<span class="caret"></span>'))}),j},_getSelectOptions:function(a){var b,c=a.length,d=[];for(b=0;c>b;b++){var e='<li><a href="#" data-value="'+a[b].id+'">'+a[b].name+"</a></li>";jQuery.inArray(e,d)>-1||d.push(e)}return d.join("")}}),a.zlux[b.prototype.name]=b}(jQuery,window,document);