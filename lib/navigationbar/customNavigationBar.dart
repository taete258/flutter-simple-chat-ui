import 'package:flutter/material.dart';

class _CustomNavigationBar extends State<CustomNavigationApp> {
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          selectedPageIndex = index;
        });
      },
      indicatorColor: const Color.fromARGB(210, 255, 255, 255),
      backgroundColor: const Color.fromARGB(210, 133, 249, 212),
      selectedIndex: selectedPageIndex,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(Icons.replay),
          icon: Icon(Icons.replay_10_outlined),
          label: 'งานแนะนำ',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.search),
          icon: Icon(Icons.search_outlined),
          label: 'ค้นหางาน',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.bookmark),
          icon: Icon(Icons.bookmark_border),
          label: 'งานที่คุณสนใจ',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.cases_sharp),
          icon: Icon(Icons.cases_outlined),
          label: 'สถานะ',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.notifications),
          icon: Icon(Icons.notifications_outlined),
          label: 'แจ้งเตือน',
        ),
      ],
    );
  }
}

class CustomNavigationApp extends StatefulWidget {
  const CustomNavigationApp({super.key});

  @override
  State<CustomNavigationApp> createState() => _CustomNavigationBar();
}
