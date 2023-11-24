import 'package:flutter/material.dart';
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Charan App"),),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.teal
              ),
              child: Row(
                children: [
                  //profle pic
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/kohli.jpg'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text("Charan Singh",style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text("cs@gmail.com",style: TextStyle(color: Colors.white,fontSize:15),)
                    ],
                  ),
                ],
              ),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}