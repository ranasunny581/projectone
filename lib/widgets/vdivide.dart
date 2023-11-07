import 'package:flutter/material.dart';

class Mydivider extends StatelessWidget {
  const Mydivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      width: 50,
      thickness: 1,
      indent: 40,
      endIndent: 40,
      color: Colors.deepOrange,
    );
  }
}