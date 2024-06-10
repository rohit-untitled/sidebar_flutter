// import 'package:flutter/material.dart';
// import 'package:sidebar/components/info_cards.dart';
// import 'package:sidebar/configuration.dart';

// class DrawerScreen extends StatefulWidget {
//   const DrawerScreen({super.key});

//   @override
//   State<DrawerScreen> createState() => _DrawerScreenState();
// }

// class _DrawerScreenState extends State<DrawerScreen> {
//   int _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: primaryGreen,
//       padding: EdgeInsets.only(top: 50, bottom: 30),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const InfoCard(name: 'Rohit', profession: 'Not a Cricketer'),
//           // lists

//           Column(
//             children: drawerItems
//                 .map((element) => Padding(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//                       child: Row(
//                         children: [
//                           Icon(
//                             element['icon'],
//                             color: Colors.white60,
//                             size: 35,
//                           ),
//                           const SizedBox(width: 12),
//                           Text(
//                             element['title'],
//                             style: const TextStyle(
//                                 color: Colors.white60,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ))
//                 .toList(),
//           ),

//           //logout and settings
//           Row(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12.0),
//                 child: Icon(
//                   Icons.settings,
//                   color: Colors.white60,
//                   size: 30,
//                 ),
//               ),
//               const Text(
//                 'Setting',
//                 style: TextStyle(
//                   color: Colors.white60,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 26),
//                 child: Container(
//                   width: 2,
//                   height: 30,
//                   color: Colors.white60,
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(right: 12),
//                 child: Icon(
//                   Icons.logout_rounded,
//                   color: Colors.white60,
//                   size: 30,
//                 ),
//               ),
//               const Text(
//                 'Logout',
//                 style: TextStyle(
//                   color: Colors.white60,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   AnimatedPositioned buildListTile(
//       int index, IconData icon, String title, VoidCallback onTap) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 300),
//       height: 56,
//       width: _selectedIndex == index ? 288 : 0,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Container(
//           decoration: BoxDecoration(
//             color: _selectedIndex == index
//                 ? const Color(0xFF6792FF)
//                 : Colors.transparent,
//             borderRadius: BorderRadius.all(Radius.circular(30)),
//             boxShadow: _selectedIndex == index
//                 ? [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       spreadRadius: 3,
//                       blurRadius: 5,
//                       offset: Offset(0, 2),
//                     ),
//                   ]
//                 : [],
//           ),
//           child: ListTile(
//             onTap: () {
//               setState(() {
//                 _selectedIndex = index;
//               });
//               onTap();
//             },
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 26.0, vertical: 6),
//             leading: SizedBox(
//               height: 34,
//               width: 34,
//               child: Icon(
//                 icon,
//                 size: 35,
//                 color: _selectedIndex == index ? Colors.white : Colors.white,
//               ),
//             ),
//             title: Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   color: _selectedIndex == index ? Colors.white : Colors.white,
//                   fontSize: 16,
//                   fontWeight: _selectedIndex == index
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sidebar/components/info_cards.dart';
import 'package:sidebar/configuration.dart';
import 'package:sidebar/constants.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 70, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const InfoCard(name: 'Rohit Sharma', profession: 'Not a Cricketer'),
          buildDrawerList(),
          buildLogoutSettingsRow(),
        ],
      ),
    );
  }

  Widget buildDrawerList() {
    return Column(
      children: drawerItems
          .asMap()
          .entries
          .map((MapEntry<int, Map<String, dynamic>> entry) {
        final int index = entry.key;
        final Map<String, dynamic> element = entry.value;
        return buildListTile(index, element['icon'], element['title'], () {
          print('Item tapped: $index');
        });
      }).toList(),
    );
  }

  Widget buildLogoutSettingsRow() {
    return Row(
      children: [
        buildIconTextRow(Icons.settings, 'Setting'),
        buildDivider(),
        buildIconTextRow(Icons.logout_rounded, 'Logout'),
      ],
    );
  }

  Widget buildIconTextRow(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white60,
            size: 30,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: drawerTextStyle,
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        width: 2,
        height: 30,
        color: Colors.white60,
      ),
    );
  }

  AnimatedPositioned buildListTile(
      int index, IconData icon, String title, VoidCallback onTap) {
    return AnimatedPositioned(
      duration: animationDuration,
      curve: Curves.easeInOut,
      height: 56,
      width: _selectedIndex == index ? 288 : 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Color.fromARGB(255, 97, 150, 150)
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            boxShadow: _selectedIndex == index
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ]
                : [],
          ),
          child: ListTile(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              navigateToPage(index);
              onTap();
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
            leading: SizedBox(
              height: 34,
              width: 34,
              child: Icon(
                icon,
                size: 32,
                color: _selectedIndex == index ? Colors.white : Colors.white60,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                title,
                style: TextStyle(
                  color:
                      _selectedIndex == index ? Colors.white : Colors.white60,
                  fontSize: 18,
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

  void navigateToPage(int index) {
    // Implement your navigation logic here based on the selected item
    switch (index) {
      case 0:
        // Navigate to Home page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
        break;
      case 2:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Favourite()));
        break;
      case 3:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
        break;
      case 4:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Notification()));
        break;
      case 5:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
        break;
      case 6:
        // Navigate to Search page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Help and Feedback()));
        break;
    }
  }
}
