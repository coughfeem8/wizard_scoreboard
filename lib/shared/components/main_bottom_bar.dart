import 'package:flutter/material.dart';
import 'package:wizard_scoreboard/features/game/game_page.dart';
import 'package:wizard_scoreboard/features/home/home_page.dart';
import 'package:wizard_scoreboard/features/settings/settings_page.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key, required this.currentPage});
  final int currentPage;
  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  List<NavigationDestination> iconPages = const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.gamepad), label: 'Game'),
    NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: iconPages,
      onDestinationSelected: (int index) => selectPage(index),
      selectedIndex: widget.currentPage,
    );
  }

  selectPage(int index) {
    setState(() {
      //TODO add the change to state here, Maybe?
      //widget.currentPage = index;
    });
  }
}
