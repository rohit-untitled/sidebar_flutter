import 'package:flutter/material.dart';
import 'package:sidebar/screens/drawer_screen.dart';
import 'package:sidebar/screens/home_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(children: [
        DrawerScreen(),
        HomeScreen(),
      ]),
    );;
  }
}