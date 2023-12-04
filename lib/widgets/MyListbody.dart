import 'package:flutter/material.dart';

class MyListBody extends StatelessWidget {
  const MyListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ListBody(
          mainAxis: Axis.horizontal,
          children: [
            Text("Widget 1"),
            Text("Widget 2"),
            Text("Widget 3"),
            Text("Widget 1"),
            Text("Widget 2"),
            Text("Widget 3"),
            Text("Widget 1"),
            Text("Widget 2"),
            Text("Widget 3"),
            Text("Widget 1"),
            Text("Widget 2"),
            Text("Widget 3"),
            Text("Widget 1"),
            Text("Widget 2"),
            Text("Widget 3"),
            Icon(
              Icons.home,
              color: Colors.red,
              size: 200,
              shadows: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(8,8),
                    spreadRadius: 10,
                    blurRadius: 10

                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
