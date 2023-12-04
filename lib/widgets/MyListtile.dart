import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  const MyListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          tileColor: Colors.black12,
          title: Text("My Tile"),
          trailing: ElevatedButton(onPressed: (){} , child: Text("Press"),),
        ),
        ListTile(
          title: Text("My Tile"),
        )
      ],
    );
  }
}
