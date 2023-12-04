import 'package:flutter/material.dart';

class Mywheel extends StatelessWidget {
  const Mywheel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
        itemExtent: 50,
        diameterRatio: .7,
        //offAxisFraction: 2,
        //squeeze: 2,
        children: List.generate(20, (index) => ListTile(
          title: Text("Flutter tut $index",style: TextStyle(color: Colors.white),),
          onTap: (){},
          tileColor: Colors.pink,
          leading: Icon(Icons.person),

        )));
  }
}
