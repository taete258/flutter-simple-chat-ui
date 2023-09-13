import 'package:flutter/material.dart';
import 'package:flutter_jobtopgun/menuDrawer/menuDrawer.dart';
import 'package:flutter_jobtopgun/userAvatar.dart';

import 'package:flutter_jobtopgun/navigationbar/customNavigationBar.dart';
import 'package:flutter_jobtopgun/src/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent)),
        title: 'Flutter Demo',
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          Settings.routeName: (context) => const Settings(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: const Color(0xFF171717),
        body: Stack(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Messages",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Online",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Group",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text("More",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 35),
                  ],
                ),
              ),
            ]),
            Positioned(
                top: 190,
                left: 0,
                right: 0,
                child: Container(
                  height: 220,
                  padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xFF27c1a9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Favorite Contact",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                          height: 90,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildContactAvatar("RO", "Ronaldo"),
                                buildContactAvatar("EM", "Emerson"),
                                buildContactAvatar("MA", "Marcelo"),
                                buildContactAvatar("TH", "Thiago"),
                                buildContactAvatar("SE", "Sergio"),
                                buildContactAvatar("OU", "Outro"),
                              ]))
                    ],
                  ),
                )),
            Positioned(
                top: 365,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      color: Color(0xFFEFFFFC),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: ListView(
                    padding: const EdgeInsets.only(left: 25),
                    children: [
                      buildConversationRow("TE", "Thiago", "Hello", 2),
                      buildConversationRow("PE", "Pedro", "How are you", 1),
                      buildConversationRow("RP", "Ronaldo", "Hi", 0),
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF27c1a9),
            onPressed: () {},
            child: const Icon(
              Icons.edit_outlined,
              size: 30,
            ),
          ),
        ),
        // bottomNavigationBar: const CustomNavigationApp(),
        drawer: const MenuDrawer());
  }

  Column buildConversationRow(
      String name, String fullName, String message, int msgCount) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(name: name),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 0),
              child: Column(
                children: [
                  const Text(
                    "11:12",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String fullName) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          UserAvatar(
            name: name,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            fullName,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
