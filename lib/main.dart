import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sidebar/body.dart';
import 'package:sidebar/components/side_menu.dart';
import 'package:sidebar/configuration.dart';
import 'package:sidebar/google_nav_bar/home_page.dart';
import 'package:sidebar/hidden__drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SideMenu(),
      home: HomePageNav(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
