import 'package:flutter/material.dart';
class Mytable extends StatelessWidget {
  const Mytable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Table"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Table(
              border: TableBorder.all(color: Colors.black),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                  ),
                    children: [
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell1"),
                      )),
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell2"),
                      )),
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell3"),
                      )),
                    ]
                ),
                ...List.generate(50, (index) => TableRow(

                    children: [
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell1"+index.toString()),
                      )),
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell2"),
                      )),
                      TableCell(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cell3"),
                      )),
                    ]
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
