import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFadetrans extends StatefulWidget {
  const MyFadetrans({super.key});

  @override
  State<MyFadetrans> createState() => _MyFadetransState();
}

class _MyFadetransState extends State<MyFadetrans>
    with TickerProviderStateMixin {
   late final AnimationController controller =
      AnimationController(duration: Duration(seconds: 2), vsync: this)..forward();
        // ..repeat(reverse: false);

   late final Animation<double> animation=CurvedAnimation(parent: controller, curve: Curves.linear);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Chai Sutta Bar",style: GoogleFonts.aBeeZee(fontSize: 50,color: Colors.blue,fontWeight: FontWeight.bold),),
            FadeTransition(
                opacity: animation,
                child: FlutterLogo(
                  size: 300,
                )),
            Text("estd. since 2011"),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
