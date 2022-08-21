import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'event.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final ValueNotifier<List<Event>> _selectedEvents = ValueNotifier([]);
  // Using a `LinkedHashSet` is recommended due to equality comparison override
  final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: getHashCode,
  );
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForDays(Set<DateTime> days) {
    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;

      if (_selectedDays.contains(selectedDay)) {
        _selectedDays.remove(selectedDay);
      } else {
        _selectedDays.add(selectedDay);
      }
    });
    _selectedEvents.value = _getEventsForDays(_selectedDays);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 30),
        child: TableCalendar<Event>(
          locale: Localizations.localeOf(context).languageCode,
          firstDay: DateTime.utc(2020,10,20),
          lastDay: DateTime.utc(2025, 10, 20),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          headerVisible: true,
          shouldFillViewport: false,
          daysOfWeekVisible: true,
          rowHeight: 55.0,
          daysOfWeekHeight: 55.0,
          availableGestures: AvailableGestures.horizontalSwipe,
          startingDayOfWeek: StartingDayOfWeek.monday,
          selectedDayPredicate: (day) {
            return _selectedDays.contains(day);
          },
          onDaySelected: _onDaySelected,
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          calendarStyle: CalendarStyle(
            defaultTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat-Normal'),
            isTodayHighlighted: true,
            selectedDecoration: BoxDecoration(
              color: selectedDate,
              shape: BoxShape.circle,
            ),
            selectedTextStyle: const TextStyle(color: Colors.white),
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
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat-Normal'),
              rightChevronPadding: EdgeInsets.only(right: 20),
              leftChevronPadding: EdgeInsets.only(left: 20),
              leftChevronMargin: EdgeInsets.symmetric(horizontal: 7.0),
              rightChevronMargin: EdgeInsets.symmetric(horizontal: 7.0),
              leftChevronIcon: Icon(Icons.chevron_left, size: 38),
              rightChevronIcon: Icon(Icons.chevron_right, size: 38)),
        ));
  }
}
