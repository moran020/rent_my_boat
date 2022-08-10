import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:table_calendar/table_calendar.dart';

import '../data/event.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

 
  TextEditingController _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Заглушка временная
          const SizedBox(width: 100,  height: 50,),
         ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/home',
              );
            },
            child: const Text('Переход на домашнюю страницу')),
            // Заглушка временная
        const SizedBox(width: 100,  height: 100,),
        
    //     // Здесь начинается календарь для страницы с анкетой владельца
    //     Expanded(
    //     child: SizedBox(
    //       height: 282,
    //       width: 288,
    //       child: TableCalendar(
    //     firstDay: DateTime.utc(2020,10,20),
    //     lastDay: DateTime.utc(2025,10,20),
    //     focusedDay: DateTime.now(),
    //     headerVisible: true,
    //     shouldFillViewport: false,
    //     calendarFormat: format,
    //     onFormatChanged: (CalendarFormat _format) {
    //           setState(() {
    //             format = _format;
    //           });
    //         },
    //         startingDayOfWeek: StartingDayOfWeek.sunday,
    //         daysOfWeekVisible: true,

    //         //Смена дней
    //         onDaySelected: (DateTime selectDay, DateTime focusDay) {
    //           setState(() {
    //             selectedDay = selectDay;
    //             focusedDay = focusDay;
    //           });},
    //         selectedDayPredicate: (DateTime date) {
    //           return isSameDay(selectedDay, date);},
    //         eventLoader: _getEventsfromDay,

    //      //Шрифты и стиль календаря
    //         calendarStyle: CalendarStyle(
    //           defaultTextStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Montserrat-Normal'),
    //           isTodayHighlighted: true,
    //           selectedDecoration: BoxDecoration(
    //             color: selectedDate,
    //             shape: BoxShape.circle, 
    //           ),
    //           selectedTextStyle: TextStyle(color: Colors.white),
    //           todayDecoration: BoxDecoration(
    //             color: todaysDate,
    //             shape: BoxShape.circle,
    //           ),
    //           defaultDecoration: const BoxDecoration(
    //             shape: BoxShape.circle,
    //           ),
    //           weekendDecoration: const BoxDecoration(
    //             shape: BoxShape.circle,
    //           ),
    //         ),
    //         headerStyle: const HeaderStyle(
    //           formatButtonVisible: false,
    //           titleCentered: true,
    //           formatButtonShowsNext: false,
    //           titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'Montserrat-Normal'),
    //           // Требуется правка расстояние шевронов (должно зависеть от длины строки месяц+год)
    //           rightChevronPadding: EdgeInsets.all(10.0),
    //           leftChevronPadding: EdgeInsets.all(10.0),
    //           leftChevronMargin: EdgeInsets.symmetric(horizontal: 15.0),
    //           rightChevronMargin:  EdgeInsets.symmetric(horizontal: 15.0),
    //         ),
    //       ),   
    // ),
    // ),
    ]
    ),
    );
  }
}