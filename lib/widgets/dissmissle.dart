import 'package:flutter/material.dart';

class MyDismissible extends StatefulWidget {
  const MyDismissible({super.key});

  @override
  State<MyDismissible> createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  List<String> item = [
    "Guava","Banana","Grapes","Mango"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return Dismissible(
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              direction: DismissDirection.endToStart,
              onDismissed: (direction){
                setState(() {
                  item.removeAt(index);
                });
              },
              key: ValueKey<String>(item[index]),
              child: ListTile(
                title: Text(item[index]),
              ),
            );
          })
    );
  }
}
