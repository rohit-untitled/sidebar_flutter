import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.profession,
  });
  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.person_2_outlined,
          color: Colors.white,
          size: 40,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(
            color: Colors.white60, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
