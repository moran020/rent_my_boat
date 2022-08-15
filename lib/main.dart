import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/owner_form.dart';
import 'screens/screen_bottom_menu.dart';
import 'screens/card/card_detail.dart';
import 'screens/card/card_screen.dart';
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

        '/main_screen_bottom_menu': (context) => const MainScreenBottomMenu(), //тут экраны с боттом меню
        '/card_screen': (context) => const CardScreen(),
        '/card_detail': (context) => const CardDetailsScreen(),
      },
    );
  }
}
