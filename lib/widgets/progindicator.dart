import 'package:flutter/material.dart';

class MyProgress extends StatelessWidget {
  const MyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.orange,
        backgroundColor: Colors.blue,
        value: .7,
        strokeWidth: 50,
      ),
    );
  }
}
