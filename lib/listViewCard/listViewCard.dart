import 'package:flutter/material.dart';
import 'package:flutter_jobtopgun/src/settings.dart';

class _ListViewCard extends State<ListViewCardApp> {
  final List<String> names = <String>[
    'Aby',
    'Aish',
    'Ayan',
    'Ben',
    'Bob',
    'Charlie',
    'Cook',
    'Carline'
  ];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 180,
            margin: const EdgeInsets.fromLTRB(2, 5, 2, 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 0.5, //spread radius
                  blurRadius: 1.5, // blur radius
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${names[index]} (${msgCount[index]})',
                  style: const TextStyle(fontSize: 18),
                ),
                Text("test")
              ],
            ),

            // Center(
            //     child: Text(
            //   '${names[index]} (${msgCount[index]})',
            //   style: const TextStyle(fontSize: 18),
            // )),
          );
        });
  }
}

class ListViewCardApp extends StatefulWidget {
  @override
  State<ListViewCardApp> createState() => _ListViewCard();
}
