import 'package:flutter/material.dart';

class Mywrap extends StatelessWidget {
  const Mywrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        10,
        (index) => Tooltip(
          message: "This is Custom Chip",
          showDuration: Duration(seconds: 3),
          child: Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.person),
            ),
            label: Text("Chips "+index.toString()),
          ),
        ),
      ),
    );
  }
}
