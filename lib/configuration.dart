import 'package:flutter/material.dart';
import 'package:sidebar/screens/drawer_screen.dart';
import 'package:sidebar/screens/home_screen.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'images/horse.png'}
];

List<Map<String, dynamic>> drawerItems = [
  {
    'icon': Icons.home,
    'title': 'Home',
  },
  {
    'icon': Icons.search,
    'title': 'Search',
  },
  {
    'icon': Icons.star_border_outlined,
    'title': 'Favourite',
  },
  {
    'icon': Icons.shopping_cart_outlined,
    'title': 'Cart',
  },
  {
    'icon': Icons.notifications_active_outlined,
    'title': 'Notification',
  },
  {
    'icon': Icons.history,
    'title': 'History',
  },
  {
    'icon': Icons.help_outline_rounded,
    'title': 'Help & feedback',
  },
];
