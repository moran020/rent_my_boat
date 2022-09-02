import 'package:flutter/material.dart';
import '../../data/colors.dart';
import 'card_screen.dart';
import 'card_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreenBottomMenu extends StatefulWidget {
  const MainScreenBottomMenu({Key? key}) : super(key: key);

  @override
  State<MainScreenBottomMenu> createState() => _MainScreenBottomMenuState();
}

class _MainScreenBottomMenuState extends State<MainScreenBottomMenu> {
  int currentMenuIndex = 0;
  final screens = [
    const CardScreen(),
    //TODO: временно эти экраны, пока других нет
    const CardDetailsScreen(),
    const CardDetailsScreen(),
    const CardDetailsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Scaffold(
      body: screens[currentMenuIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: background,
        selectedItemColor: activeButton,
        unselectedItemColor: basicText,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: currentMenuIndex,
        onTap: (index) => setState(() => currentMenuIndex = index),
        items: [
          menuItem("assets/icons/anchor.png", tr.menu_search),
          menuItem("assets/icons/like.png", tr.menu_favourites),
          menuItem("assets/icons/card.png", tr.menu_bookings),
          menuItem("assets/icons/account.png", tr.menu_profile),
        ],
      ),
    );
  }

  BottomNavigationBarItem menuItem(String icon, String title) =>
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Image.asset(
            icon,
            height: 20,
            fit: BoxFit.fill,
          ),
        ),
        label: title,
      );
}
