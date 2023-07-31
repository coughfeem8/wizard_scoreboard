import 'package:flutter/material.dart';
import 'package:wizard_scoreboard/shared/components/main_bottom_bar.dart';

class MainPageLayout extends StatelessWidget {
  const MainPageLayout({
    super.key,
    required this.appBody,
    required this.currentPage,
  });

  final Widget appBody;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Wizard Scoreboard')),
      ),
      body: appBody,
      bottomNavigationBar: const MainBottomBar(
        currentPage: 0,
      ),
    );
  }
}
