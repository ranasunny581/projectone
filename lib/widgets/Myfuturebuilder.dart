import 'package:flutter/material.dart';

class Myfuturebuilder extends StatefulWidget {
  const Myfuturebuilder({super.key});

  @override
  State<Myfuturebuilder> createState() => _MyfuturebuilderState();
}

class _MyfuturebuilderState extends State<Myfuturebuilder> {
  //server api
  Future<String> getdata() async{
    await Future.delayed(Duration(seconds: 3));
    //throw 'Error during connection';
    return 'got my data';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getdata(),
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            if(snapshot.hasError){
              return Text(snapshot.error.toString());
            }
            else{
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data.toString()),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      
                    });
                  }, child: Text("Refresh"))
                ],
              );
            }

          }
        ),
      ),
    );
  }
}
