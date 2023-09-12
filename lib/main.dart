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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      onPressed: () {},
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
                    color: Colors.cyan,
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
              ))
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      // bottomNavigationBar: const CustomNavigationApp(),
      // drawer: const MenuDrawer()
    );
  }

  Padding buildContactAvatar(String name, String fullName) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
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
