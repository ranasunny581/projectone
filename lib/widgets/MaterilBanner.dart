import 'package:flutter/material.dart';

class MyMaterialBanner extends StatelessWidget {
  const MyMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Open'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                  content: Text("Subscribe"),
                  leading: Icon(Icons.notifications),
                  //elevation: 5,
                  backgroundColor: Colors.white12,
                  actions: [
                    TextButton(onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    }, child: Text('Dismiss'))
                  ],
              ));
        },
      ),
    );
  }
}
