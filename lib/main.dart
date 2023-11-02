import 'package:flutter/material.dart';

void main() {
  runApp(Charanapp());
}

/*
* Main()
* MaterialApp  : home
* Scalfold, Appbar or SafeArea  : body
* widgets->so on
*
* */

class Charanapp extends StatelessWidget {
  const Charanapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mera ghar"),
          leading: Icon(Icons.menu),
          // backgroundColor: Colors.amber,
          actions: [
            Icon(Icons.person),
            Icon(Icons.doorbell_rounded),
            Icon(Icons.login),
          ],
        ),
        body: ElevatedButton(onPressed: () {}, child: Text("Press")),
        floatingActionButton: FloatingActionButton.extended(
          label: Text("My button"),
          onPressed: (){}, //anonymous function
          // child: Icon(Icons.add),
          tooltip: "Press Now",
          backgroundColor: Colors.pink,
        ),
        // backgroundColor: Colors.amber,
      ),
    );
  }
}
