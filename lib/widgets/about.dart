import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:AboutListTile( //AboutDialog
         icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationName: "My App",
        applicationVersion: "10.02.0",
        aboutBoxChildren: [
          Text("Welcome to My App")
        ],

      ),
    );
  }
}
