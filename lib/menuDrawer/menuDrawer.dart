import 'package:flutter/material.dart';
import 'package:flutter_jobtopgun/src/settings.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.zero),
            color: Color.fromARGB(210, 133, 249, 212),
          ),
          child: Text('Drawer Header Title'),
        ),
        ListTile(
          title: const Text('Prodile'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('About'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Setting'),
          onTap: () {
            Navigator.pushNamed(context, Settings.routeName);
          },
        ),
      ],
    ));
  }
}
