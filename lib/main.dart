import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

//types of widgets
//static - stateless  stls
//dynamic - statefull  stfl

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
