import 'package:flutter/material.dart';

class Mydropdown extends StatefulWidget {
  const Mydropdown({super.key});

  @override
  State<Mydropdown> createState() => _MydropdownState();
}

class _MydropdownState extends State<Mydropdown> {

  String dropvalue="M";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body:Center(
        child: DropdownButton<String>(
          
          value: dropvalue,
          icon: Icon(Icons.menu),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          items: [
            DropdownMenuItem<String>(
                value: 'M',
                child: Text("Male")),
            DropdownMenuItem<String>(
                value: 'F',
                child: Text("Female")),
            DropdownMenuItem<String>(
                value: 'T',
                child: Text("Trans")),
          ],
          onChanged: (String? value) {
              dropvalue=value!;
              setState(() {

              });
              print(value!);
          },

        ),
      )
    );
  }
}
