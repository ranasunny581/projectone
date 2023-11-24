import 'package:flutter/material.dart';

class MyExpandedIcon extends StatefulWidget {
  const MyExpandedIcon({super.key});

  @override
  State<MyExpandedIcon> createState() => _MyExpandedIconState();
}

class _MyExpandedIconState extends State<MyExpandedIcon> {
  bool isexpanded=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.orange,
                child: Text("Data"),),
            )),
            ExpandIcon(
                isExpanded: isexpanded,
                onPressed: (bool){
                  setState(() {
                    isexpanded=!isexpanded;
                  });
            })
          ],)
        ],
      )
    );
  }
}
