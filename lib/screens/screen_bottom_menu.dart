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
        selectedItemColor: accentRed,
        unselectedItemColor: basicText,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: currentMenuIndex,
        onTap: (index) => setState(() => currentMenuIndex = index),
        items: [
          //TODO: locale
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                'assets/icons/anchor.png',
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                'assets/icons/like.png',
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
            label: "Избранное",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                'assets/icons/card.png',
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                'assets/icons/account.png',
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
            label: "Мой аккаунт",
          ),
        ],
      ),
    );
  }
}
