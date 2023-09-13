import 'package:flutter/material.dart';
import 'package:flutter_jobtopgun/src/settings.dart';

import '../userAvatar.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 285,
      backgroundColor: Colors.black38,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xF71F1E1E),
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                  color: Color(0x3D000000), blurRadius: 20, spreadRadius: 30)
            ]),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
                      SizedBox(
                        width: 56,
                      ),
                      Text("Settings",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      UserAvatar(name: "RP"),
                      SizedBox(width: 20),
                      Text(
                        "Ratchanon P",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  DrawerItem(title: "Account", icon: Icons.key),
                  DrawerItem(title: "Chats", icon: Icons.chat_bubble),
                  DrawerItem(title: "Notifications", icon: Icons.notifications),
                  Divider(
                    height: 35,
                    color: Colors.green,
                  ),
                  DrawerItem(title: "Invite friends", icon: Icons.people),
                ],
              ),
              DrawerItem(title: "Log out", icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(
            width: 40,
          ),
          Text(title,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
