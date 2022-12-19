// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cricket_app/features/home/presentation/widgets/custom_icon.dart';

const navBarItems = [
  NavItem(iconData: CupertinoIcons.home, label: 'home'),
  NavItem(iconData: CupertinoIcons.link_circle, label: 'Community'),
  NavItem(label: '', iconData: Icons.add),
  NavItem(
      iconData: CupertinoIcons.star_fill, label: 'Skills', color: Colors.black),
  NavItem(iconData: CupertinoIcons.bell, label: 'Notification'),
];
const centerIcon = DecoratedBox(
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        blurRadius: 10,
        spreadRadius: 5,
        color: Colors.black26,
      )
    ],
  ),
  child: CircleAvatar(
    backgroundColor: Color.fromARGB(255, 231, 201, 110),
    child: Icon(
      Icons.add,
      color: Colors.black,
      size: 35,
    ),
  ),
);

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 3,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 218, 215, 215),
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color.fromARGB(255, 239, 144, 72),
      items: [
        for (var item in navBarItems) ...{
          BottomNavigationBarItem(
            icon: item.label == ''
                ? centerIcon
                : CustomIcon(
                    item.iconData,
                    color: item.color,
                  ),
            label: item.label,
          ),
        }
      ],
    );
  }
}

class NavItem {
  final String label;
  final IconData iconData;
  const NavItem({
    required this.label,
    required this.iconData,
    this.color = const Color.fromARGB(255, 239, 144, 72),
  });
  final Color color;
}
