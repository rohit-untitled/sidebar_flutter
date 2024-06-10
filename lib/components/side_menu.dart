import 'package:flutter/material.dart';
import 'package:sidebar/components/info_cards.dart';
import 'package:sidebar/components/side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoCard(name: 'Rohit', profession: 'Not a Cricketer'),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20, left: 25),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white60),
                ),
              ),
              const SideMenuTile(),

              // logout
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: InkWell(
                      onTap: () {
                        // Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.white60,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
