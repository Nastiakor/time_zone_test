import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  static const List<BottomNavigationBarItem> defaultItems = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.time),
      label: "Your clock",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.airplane),
      label: "World Clock",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.settings),
      label: "Settings",
    ),
  ];

  final List<BottomNavigationBarItem> items;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key,
    this.items = defaultItems,
    this.selectedItemColor,
    this.unselectedItemColor,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      elevation: 2,
      currentIndex: currentIndex,
      onTap: (index) => _openPage(index, tabsRouter),
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
