import 'package:flutter/material.dart';
import 'package:wizard_scoreboard/shared/layouts/main_page_layout.dart';

import 'features/game/game_page.dart';
import 'features/home/home_page.dart';
import 'features/settings/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    GamePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget body = pages[currentPage];
    return MainPageLayout(
      appBody: body,
      currentPage: 0,
    );
  }
}
