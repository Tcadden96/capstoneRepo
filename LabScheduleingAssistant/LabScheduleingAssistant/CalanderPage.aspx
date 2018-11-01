<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="CalanderPage.aspx.cs" Inherits="LabScheduleingAssistant.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
<link href='css/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='js/jquery-1.10.2.js'></script>
<script src='js/jquery-ui.custom.min.js'></script>

<script src='js/fullcalendar.js'></script>
<script>

    $(document).ready(function () {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

		/*  className colors
		
		className: default(transparent), important(red), chill(pink), success(green), info(blue)
		
		*/


		/* initialize the external events
		-----------------------------------------------------------------*/

        $('#external-events div.external-event').each(function () {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });

        });


		/* initialize the calendar
		-----------------------------------------------------------------*/

        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'title',
                center: 'agendaDay,agendaWeek,month',
                right: 'prev,next today'
            },
            editable: true,
            firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
            selectable: true,
            defaultView: 'month',

            axisFormat: 'h:mm',
            columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', // Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", // September 2009
                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
            },
            allDaySlot: false,
            selectHelper: true,
            select: function (start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent',
                        {
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        },
                        true // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function (date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            },

            events: [
            
                {
                    id: 999,
                    title: 'Tom',
                    start: new Date(y, m, d, 12, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 999,
                    title: 'Tom',
                    start: new Date(y, m, d + 7, 12, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 999,
                    title: 'Tom',
                    start: new Date(y, m, d + 14, 12, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 999,
                    title: 'Tom',
                    start: new Date(y, m, d + 21, 12, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 1000,
                    title: 'Leysan',
                    start: new Date(y, m, d, 16, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 1000,
                    title: 'Leysan',
                    start: new Date(y, m, d + 7, 16, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 999,
                    title: 'Leysan',
                    start: new Date(y, m, d + 14, 16, 0),
                    allDay: false,
                    className: 'info'
                },
                {
                    id: 999,
                    title: 'Leysan',
                    start: new Date(y, m, d + 21, 16, 0),
                    allDay: false,
                    className: 'info'
                }
               /*
                {
                    title: 'Click for Google',
                    start: new Date(y, m, 28),
                    end: new Date(y, m, 29),
                    url: 'http://google.com/',
                    className: 'success'
                }
                */
            ],
        });


    });

</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id='wrap'>
        <div id='calendar'></div>
        <div style='clear:both'></div>
    </div>
    <div id="tracker">
         <form id="login" runat="server" class="form-signin">
            <asp:Table runat="server" class="time-tracker">
                <asp:TableHeaderRow >
                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Hours</asp:TableHeaderCell>
                </asp:TableHeaderRow >
                <asp:TableRow>
                    <asp:TableCell>Tom</asp:TableCell>
                    <asp:TableCell>4</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Leysan</asp:TableCell>
                    <asp:TableCell>3</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
         </form>
    </div>


    
</asp:Content>
