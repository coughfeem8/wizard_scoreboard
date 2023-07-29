import 'package:flutter/material.dart';

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
  List<Widget> pages = const [];
  List<NavigationDestination> iconPages = const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.gamepad), label: 'Game'),
    NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pages[0],
      appBar: AppBar(
        title: const Center(child: Text('Wizard Scoreboard')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          debugPrint('Floating Action Button'),
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: iconPages,
        onDestinationSelected: (int index) => selectPage(index),
        selectedIndex: currentPage,
      ),
    );
  }

  selectPage(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
