import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarItems {
  static const bottomNavBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.bullseye), label: "Review"),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.binoculars), label: "Explore"),
  ];
}
