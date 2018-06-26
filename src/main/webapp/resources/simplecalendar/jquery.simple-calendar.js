// the semi-colon before function invocation is a safety net against concatenated
// scripts and/or other plugins which may not be closed properly.
;(function ( $, window, document, undefined ) {

	"use strict";

    // Create the defaults once
    var pluginName = "simpleCalendar",
        defaults = {
            days: ['\ud1a0', '\uc77c', '\uc6d4', '\ud654', '\uc218', '\ubaa9', '\uae08']
        };
	
	function getDate(dateStr) {
			var arr = dateStr.split('-');
			return new Date(arr[0], parseInt(arr[1]) -1, arr[2]);
	};
	
	function date2str(x, y) {
	    var z = {
	        M: x.getMonth() + 1,
	        d: x.getDate(),
	        h: x.getHours(),
	        m: x.getMinutes(),
	        s: x.getSeconds()
	    };
	    y = y.replace(/(M+|d+|h+|m+|s+)/g, function(v) {
	        return ((v.length > 1 ? "0" : "") + eval('z.' + v.slice(-1))).slice(-2)
	    });

	    return y.replace(/(y+)/g, function(v) {
	        return x.getFullYear().toString().slice(-v.length)
	    });
	}
	
	function getDateString(date) {
		
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		
		month = (month >= 10 ? month : '0'+ month);
		day = (day >= 10 ? day : '0' + day);
		
		return year+ "-" + month + "-" + day;
	}

    // The actual plugin constructor
    function Plugin ( element, options ) {        
        this.element = element;
        this.settings = $.extend( {}, defaults, options );
        this._defaults = defaults;
        this._name = pluginName;
        this.currentDate = getDate(options.startDate);
		this.startDate = getDate(options.startDate);
		this.endDate = getDate(options.endDate);
		this.pattern = options.pattern || 'yyyy-MM-dd';
		this.field = $(options.field);
		
        this.init();
    }

    // Avoid Plugin.prototype conflicts
    $.extend(Plugin.prototype, {
        init: function () {
            var container = $(this.element);
            var todayDate = this.currentDate;
            
            var calendar = $('<div class="calendar"></div>');
            var header = $('<header>'+
                    '<div> '+
                    '<a class="btn btn-default btn-xs" id="calendar-prev-btn" href="#">이전</a>'+
					' <span style="margin:0 10px 0 10px;"><span class="year"></span>년 ' +
					' <span class="month" "></span>월</span>' +
                    '<a class="btn btn-default btn-xs" id="calendar-next-btn" href="#">다음</a>'+
					   ' <div>' +
			            '</header>');
            
            this.updateHeader(todayDate,header);
            calendar.append(header);
            
            this.buildCalendar(calendar, todayDate, this.startDate, this.endDate);
            container.append(calendar);
           
			var plugin = this;

			//Click previous month
			container.find('#calendar-prev-btn').click(function(){
                plugin.currentDate.setMonth(plugin.currentDate.getMonth()-1);
                plugin.buildCalendar(container.find('.calendar'), plugin.currentDate, plugin.startDate, plugin.endDate);
                plugin.updateHeader(plugin.currentDate, container.find('.calendar header'));
            });
            
            //Click next month
			container.find('#calendar-next-btn').click(function(){
                plugin.currentDate.setMonth(plugin.currentDate.getMonth()+1);
                plugin.buildCalendar(container.find('.calendar'), plugin.currentDate, plugin.startDate, plugin.endDate);
                plugin.updateHeader(plugin.currentDate, container.find('.calendar header'));
            });
            
            container.find('.calendar').on('click', 'a.day', function() {
            	if (plugin.field.is(":input")) {
            		plugin.field.val($(this).attr('title'));
            	} else {
            		plugin.field.text($(this).attr('title'));
            	}
            });

        },
        
        //Update the current month header
        updateHeader: function (date, header) {
            header.find('.year').html(date.getFullYear() )
            header.find('.month').html(date.getMonth() + 1);
        },
        
        //Build calendar of a month from date
        buildCalendar: function (calendar, currentDate, fromDate, endDate) {
            var plugin = this;
            
            calendar.find('table').remove();
            
            var body = $('<table></table>');
            var thead = $('<thead></thead>');
            var tbody = $('<tbody></tbody>');
            
            //Header day in a week ( (1 to 8) % 7 to start the week by monday)
            for(var i=1; i<=this.settings.days.length; i++) {
                thead.append($('<td>'+this.settings.days[i%7].substring(0,3)+'</td>'));
            }
            
            //setting current year and month
            var y = currentDate.getFullYear(), m = currentDate.getMonth();
            
            //first day of the month
            var firstDay = new Date(y, m, 1);
            //If not monday set to previous monday
            while(firstDay.getDay() != 1){
                firstDay.setDate(firstDay.getDate()-1);
            }
            //last day of the month
            var lastDay = new Date(y, m + 1, 0);
            //If not sunday set to next sunday
            while(lastDay.getDay() != 0){
                lastDay.setDate(lastDay.getDate()+1);
            }
            
            //For firstDay to lastDay
            for(var day = firstDay; day <= lastDay; day.setDate(day.getDate())) {
                var tr = $('<tr></tr>');
                //For each row
                for(var i = 0; i<7; i++) {
                    var td;

					if (day.getTime() >= (fromDate).getTime() && day.getTime() <= (endDate).getTime()) {
						td = $('<td><a href="#" class="day">'+day.getDate()+'</a></td>')
						td.find(".day").addClass("today");
						td.find('a').attr('title', date2str(day, plugin.pattern));
					}
					
					if (day.getTime() < (fromDate).getTime()) {
						td = $('<td><span class="day">'+day.getDate()+'</span></td>')
						td.find(".day").addClass("wrong-day");
					}

					if (day.getTime() > (endDate).getTime()) {
						td = $('<td><span class="day disabled">'+day.getDate()+'</span></td>')
						td.find(".day").addClass("wrong-day");
					}

                    tr.append(td);
                    day.setDate(day.getDate() + 1);
                }
                tbody.append(tr);
            }
            
            body.append(thead);
            body.append(tbody);
            
            var eventContainer = $('<div class="event-container"></div>');
            
            calendar.append(body);
            calendar.append(eventContainer);
        },
        
        //Small effect to empty a container
        empty : function (elem,x,y){
            var elemOffset = elem.offset();
            
            var filler = $('.filler');
            filler.css("width", "300%");
            filler.css("height", "300%");
            
            filler.show();
            
            $('.event-container').hide();
            
            filler.animate({
                width: "0%",
                height: "0%"
            }, 500, function() {
                filler.remove();
            });
        }
    });

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[ pluginName ] = function ( options ) {
        return this.each(function() {
                if ( !$.data( this, "plugin_" + pluginName ) ) {
                        $.data( this, "plugin_" + pluginName, new Plugin( this, options ) );
                }
        });
    };

})( jQuery, window, document );
