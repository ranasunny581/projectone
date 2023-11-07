import 'package:flutter/material.dart';

class MytoggleButton extends StatefulWidget {
  const MytoggleButton({super.key});

  @override
  State<MytoggleButton> createState() => _MytoggleButtonState();
}

class _MytoggleButtonState extends State<MytoggleButton> {
  List<bool> isselected = [
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        children: [
          Icon(Icons.home),
          Icon(Icons.settings),
          Icon(Icons.person),
        ],
        onPressed: (index) {
          setState(() {
            isselected = [
              false,
              false,
              false,
            ];
            isselected[index] = !isselected[index];
          });
        },
        isSelected: isselected);
  }
}
