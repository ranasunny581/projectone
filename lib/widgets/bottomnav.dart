import 'package:flutter/material.dart';
import 'package:projectone/widgets/MyTable.dart';
import 'package:projectone/widgets/alertdialog.dart';
import 'package:projectone/widgets/togglebtn.dart';

class Mybottomnavbar extends StatefulWidget {
  const Mybottomnavbar({super.key});

  @override
  State<Mybottomnavbar> createState() => _MybottomnavbarState();
}

class _MybottomnavbarState extends State<Mybottomnavbar> {

  int pos=0;
  List<Widget> pages=[
    Mytable(),
    Myalertdialog(),
    MytoggleButton()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[pos],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[200],
        iconSize: 20,
        selectedItemColor: Colors.white,
        currentIndex: pos,
        onTap: (i){
          setState(() {
            pos=i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home", ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_important),label: "Messages"),
        ],
      ),
    );
  }
}
