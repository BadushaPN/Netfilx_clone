// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

ValueNotifier<int> indexChangeNotuifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotuifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotuifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: backgroundColor,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_library), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Serach'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Download'),
          ],
        );
      },
    );
  }
}
