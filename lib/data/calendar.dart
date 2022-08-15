import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../data/event.dart';

import 'package:rent_my_boat/data/colors.dart';

class Calendar extends StatefulWidget {
 

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(left: 23, right: 23, bottom: 30),
      child: TableCalendar(
        
          locale: 'ru_RU',
          firstDay: DateTime.utc(2020,10,20),
          lastDay: DateTime.utc(2025,10,20),
          headerVisible: true,
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          shouldFillViewport: false,
          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekVisible: true,
          rowHeight: 55.0,
          daysOfWeekHeight: 55.0,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              // Call `setState()` when updating calendar format
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            
            _focusedDay = focusedDay;
          },
          calendarStyle: CalendarStyle(
            
                      defaultTextStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Montserrat-Normal'),
                      isTodayHighlighted: true,
                      selectedDecoration: BoxDecoration(
                        color: selectedDate,
                        shape: BoxShape.circle,
                      ),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(
                        color: todaysDate,
                        shape: BoxShape.circle,
                      ),
                      defaultDecoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      weekendDecoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
          headerStyle: const HeaderStyle(
                      
                      formatButtonVisible: false,
                      titleCentered: true,
                      formatButtonShowsNext: false,
                      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'Montserrat-Normal'),
                      
                      rightChevronPadding: EdgeInsets.all(10.0),
                      leftChevronPadding: EdgeInsets.all(10.0),
                      leftChevronMargin: EdgeInsets.symmetric(horizontal: 15.0),
                      rightChevronMargin:  EdgeInsets.symmetric(horizontal: 15.0),
                    ),
        
      ),
      
    );
  }
}