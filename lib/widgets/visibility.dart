import 'package:flutter/material.dart';

class Myvisibility extends StatefulWidget {
  const Myvisibility({super.key});

  @override
  State<Myvisibility> createState() => _MyvisibilityState();
}

class _MyvisibilityState extends State<Myvisibility> {
bool vis=true;
double angle=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed:(){
            print("clicked");
            setState(() {
             // vis=!vis;
              if(angle>360){
                angle=0;
              }
              else{
                angle+=30;
              }
            });
            }, child: 
          Text("clickme"),
          style: ButtonStyle(
              alignment: Alignment.topCenter
          ),
          ),
        Visibility(
          visible: vis,
          child: Transform(
            transform: Matrix4.rotationZ(angle),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.pink,
              child: Text(
                "I am here",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
