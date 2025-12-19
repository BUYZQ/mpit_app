import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/home/screens/home_screen.dart';
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
    Container(),
    const HomeScreen(),
    StatementListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentScreen],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentScreen,
        backgroundColor: greyColor,
        buttonBackgroundColor: Colors.grey,
        color: Colors.grey,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: '',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: '',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.document_scanner),
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
