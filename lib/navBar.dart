import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

import 'package:cangzskrt/Screen/favScreen.dart';
import 'package:cangzskrt/util/const.dart';
import 'package:cangzskrt/Screen/mainScreen.dart';
import 'package:cangzskrt/Screen/profileScreen.dart';

class navBar extends StatefulWidget {
  static const routeName = '/navbar';
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int currentTab = 0;
  final List<Widget> pages = [
    mainScreen(),
    favScreen(),
    profileScreen(),
  ];
  Widget currentScreen = mainScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: true, showOnSelect: true),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = pages[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.favorite, label: 'Favorite'),
          bmnav.BottomNavItem(Icons.person, label: 'Profile')
        ],
        elevation: 7,
      ),
    );
  }
}
