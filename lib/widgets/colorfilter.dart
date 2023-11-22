import 'package:flutter/material.dart';

class MyColorFilter extends StatelessWidget {
  const MyColorFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.difference),
          child: Image.asset("assets/images/kohli.jpg",width: 350,),
        )
      ),
    );
  }
}
