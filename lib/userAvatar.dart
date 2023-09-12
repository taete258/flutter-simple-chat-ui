import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String name;

  const UserAvatar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue,
            child: Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
