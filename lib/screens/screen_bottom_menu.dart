import 'package:flutter/material.dart';
import 'package:rent_my_boat/screens/home_screen.dart';
import 'package:rent_my_boat/screens/owner_form.dart';
import '../../data/colors.dart';
import 'card/card_screen.dart';

class MainScreenBottomMenu extends StatefulWidget {
  const MainScreenBottomMenu({Key? key}) : super(key: key);

  @override
  State<MainScreenBottomMenu> createState() => _MainScreenBottomMenuState();
}

class _MainScreenBottomMenuState extends State<MainScreenBottomMenu> {
  int currentMenuIndex = 0;
  final screens = [
    const CardScreen(),
    //временно эти экраны, пока других нет:
    const HomeScreen(),
    const OwnerForm(),
    const HomeScreen(),
    const OwnerForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentMenuIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: background,
        selectedItemColor: todaysDate,
        unselectedItemColor: basicText,
        iconSize: 30,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        currentIndex: currentMenuIndex,
        onTap: (index) => setState(() => currentMenuIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Избранное",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Сообщения",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Войти",
          ),
        ],
      ),
    );
  }
}
