import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/owner_form.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

// Добавлен метод initializeDateFormatting, чтобы отображать календарь на разных языках
void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent My Boat',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/owner_form': (context) => const OwnerForm(),
      },
    );
  }
}
