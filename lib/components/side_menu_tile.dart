import 'package:flutter/material.dart';

class SideMenuTile extends StatefulWidget {
  const SideMenuTile({Key? key}) : super(key: key);

  @override
  _SideMenuTileState createState() => _SideMenuTileState();
}

class _SideMenuTileState extends State<SideMenuTile> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 10),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        buildListTile(0, Icons.home, 'Home', () {
          // navigateTo('/home');
        }),
        buildListTile(1, Icons.search_rounded, 'Search', () {}),
        buildListTile(2, Icons.star_border_rounded, 'Favorites', () {}),
        buildListTile(3, Icons.shopping_cart_outlined, 'Cart', () {}),
        buildListTile(4, Icons.help_outline_sharp, 'Help & feedback', () {}),
        buildListTile(
            5, Icons.notifications_active_outlined, 'Notification', () {}),
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 10, top: 10),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        buildListTile(6, Icons.history, 'History', () {}),
      ],
    );
  }

  AnimatedPositioned buildListTile(
      int index, IconData icon, String title, VoidCallback onTap) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      height: 56,
      width: _selectedIndex == index ? 288 : 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? const Color(0xFF6792FF)
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: _selectedIndex == index
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ]
                : [],
          ),
          child: ListTile(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              onTap();
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 26.0, vertical: 6),
            leading: SizedBox(
              height: 34,
              width: 34,
              child: Icon(
                icon,
                size: 35,
                color: _selectedIndex == index ? Colors.white : Colors.white,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.white : Colors.white,
                  fontSize: 16,
                  fontWeight: _selectedIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void navigateTo(String route) {
    Navigator.pushNamed(context, route);
  }
}
