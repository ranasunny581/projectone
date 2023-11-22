import 'package:flutter/material.dart';

class MyClipRect extends StatelessWidget {
  const MyClipRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset('assets/images/kohli.jpg',),
            Container(
                color: Colors.yellow,
                child: Text("King Kohli",style:TextStyle(fontSize: 80),)),
          ],
        ),
      ),
    );
  }
}
