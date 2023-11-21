import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: ElevatedButton(
         onPressed: (){
           showModalBottomSheet(context: context, builder: (context){
             return SizedBox(height: 300,width: 200,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(),
                 ),
                 ElevatedButton(onPressed: (){
                   Navigator.pop(context);
                 },child: Text("Close"),)
               ],
             ));
           });
         },
         child: Text("Open Bottom Sheet"),
       ),
     )
    );
  }
}
