import 'package:flutter/material.dart';

class MyDragScrollSheet extends StatelessWidget {
  const MyDragScrollSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll list"),),
      body:DraggableScrollableSheet(builder: (context, scrollcontroller) {
        return Container(
           color: Colors.orangeAccent,
          child: ListView.builder(
            controller: scrollcontroller,
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("item $index"),
                );
              }),
        );
      })
    );
  }
}
