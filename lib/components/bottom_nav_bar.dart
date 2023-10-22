// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Home'),
        ],
      ),
    );
  }
}
