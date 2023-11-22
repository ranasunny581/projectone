import 'package:flutter/material.dart';

class MyClosebtn extends StatelessWidget {
  const MyClosebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CloseButton(
          color: Colors.red,
          onPressed: (){
            debugPrint("Pressed close");
          },
        ),
      ),
    );
  }
}
