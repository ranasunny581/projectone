import 'package:flutter/material.dart';

class CharanApp extends StatelessWidget {
  const CharanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.purple,
                  child: DrawerHeader(child: CircleAvatar(
                    child: Text("CS"),
                  ),


                  ),
                ),
                Divider(),


              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red,
                child: Icon(Icons.home),
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}