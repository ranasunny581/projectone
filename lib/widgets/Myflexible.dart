import 'package:flutter/material.dart';

class Myflexible extends StatelessWidget {
  Myflexible({super.key});

  TextStyle mystyle=const TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold);

  Widget buildExpanded() => Expanded(child: Container(
    decoration: BoxDecoration(
      border:Border.all(color: Colors.purpleAccent,width: 2),
      color: Colors.purple
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Expanded",style: mystyle,),
    ),
  ));

  Widget buildFlexible() => Flexible(child: Container(
    decoration: BoxDecoration(
        border:Border.all(color: Colors.blueAccent,width: 2),
        color: Colors.blue
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Flexible",style: mystyle,),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  //expanded
                  buildExpanded(),
                  //flexible
                  buildFlexible()
                ],
              ),
              Row(
                children: [
                  //expanded
                  buildExpanded(),
                  buildExpanded(),
                ],
              ),
              Row(
                children: [
                  //expanded
                  buildFlexible(),
                  buildFlexible(),
                ],
              )
            ],
          ),
        ));
  }
}
