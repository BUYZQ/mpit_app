import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/home/screens/home_screen.dart';
import 'package:mpit_hack/features/news/screens/news_screen.dart';
import 'package:mpit_hack/features/statement/screens/statement_list_screen.dart';
import 'package:mpit_hack/features/statement/screens/statement_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentScreen = 1;

  final List<Widget> _screens = [
    NewsScreen(),
    const HomeScreen(),
    StatementListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentScreen],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentScreen,
        backgroundColor: greyColor.withOpacity(0.3),
        buttonBackgroundColor: backgroudAppColor,
        color: backgroudAppColor,
        items: [
          CurvedNavigationBarItem(
            child: Image.asset("assets/root/news.png", width: 35),
            label: '',
          ),
          CurvedNavigationBarItem(
            child: Image.asset("assets/root/home.png", width: 30),
            label: '',
          ),
          CurvedNavigationBarItem(
            child: Image.asset("assets/root/docs.png", width: 30),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentScreen = index;
          });
        },
      ),
    );
  }
}
