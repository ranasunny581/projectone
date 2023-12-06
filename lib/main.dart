import 'package:flutter/material.dart';
import 'package:projectone/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle:true ,
        backgroundColor: Colors.transparent,
        title: Text("Charan NewsApp",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color: Colors.black,))
        ],
      ),
      body: HomeScreen(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.orange.shade900,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
      ),

    )
  ));
}





